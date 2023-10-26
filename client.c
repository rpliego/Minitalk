/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   client.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: rpliego <rpliego@student.42barcelo>        +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2023/10/23 13:47:08 by rpliego           #+#    #+#             */
/*   Updated: 2023/10/26 11:40:28 by rpliego          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "minitalk.h"

int	ft_isdigit(char *str)
{
	int	i;

	i = 0;
	while (str[i] != '\0')
	{
		if (str[i] < '0' || str[i] > '9')
			return (0);
		i++;
	}
	return (1);
}

int	ft_atoi(const char	*str)
{
	int					i;
	int					neg;
	unsigned long int	num;

	i = 0;
	neg = 1;
	num = 0;
	while (str[i] == 32 || (str[i] >= 9 && str[i] <= 13))
	{
		i++;
	}
	if (str[i] == '-')
	{
		neg = -1;
		i++;
	}
	else if (str[i] == '+')
		i++;
	while (str[i] >= '0' && str[i] <= '9')
	{
		num *= 10;
		num += str[i] - 48;
		i++;
	}
	return (num * neg);
}

void	recived(int sig)
{
	(void)sig;
	ft_printf("Recivido😤\n");
}

void	sender(pid_t pid, char c)
{
	static int	bit = 0;

	while (bit < 8)
	{
		if (c & (1 << bit))
			kill(pid, SIGUSR1);
		else
			kill(pid, SIGUSR2);
		usleep(50);
		bit++;
	}
	bit = 0;
}

int	main(int ac, char **av)
{
	int	i;
	int	pid;

	if (ac == 3 && (ft_isdigit(av[1]) == 1))
	{
		pid = ft_atoi(av[1]);
		i = 0;
		while (av[2][i])
		{
			sender(pid, av[2][i]);
			i++;
		}
		signal(SIGUSR2, recived);
		sender(pid, '\n');
		sender(pid, '\0');
	}
	else
	{
		ft_printf("Error: Try a valid PID and only one argumet\n");
		exit(1);
	}
	return (0);
}
