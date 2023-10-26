/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   server.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rpliego <rpliego@student.42barcelo>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/23 13:47:14 by rpliego           #+#    #+#             */
/*   Updated: 2023/10/25 23:18:47 by rpliego          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "minitalk.h"

void	my_handler(int sig, siginfo_t *info, void *context)
{
	static int	bit = 0;
	static char	word = '\0';

	(void)context;
	if (sig == SIGUSR1)
		word = word + (1 << bit);
	bit++;
	if (bit == 8)
	{
		ft_printf("%c", word);
		if (word == '\0')
			kill(info -> si_pid, SIGUSR2);
		word = '\0';
		bit = 0;
	}
}

int	main(int ac, char **av)
{
	int					pid;
	struct sigaction	sigact;

	(void)av;
	if (ac != 1)
	{
		ft_printf("Error: No arguments here\n");
		return (1);
	}
	pid = getpid();
	ft_printf("🦆PID🦆 --> %i\n", pid);
	sigact.sa_sigaction = my_handler;
	sigact.sa_flags = 0;
	if (sigaction(SIGUSR1, &sigact, NULL) == -1
		|| sigaction(SIGUSR2, &sigact, NULL) == -1)
	{
		ft_printf("Error\n");
		exit(1);
	}
	while (1)
		sleep(1);
	return (0);
}
