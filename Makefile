NAMEC = client
NAMES = server
C_FILE = client.c
S_FILE = server.c
FT_PRINTF_DIR = ft_printf
FT_PRINTF = $(FT_PRINTF_DIR)/libftprintf.a

CC	= cc
CFLAGS	= -Wall -Werror -Wextra
RM = rm -rf
all:
		@$(MAKE) -C $(FT_PRINTF_DIR) --no-print-directory
		@$(MAKE) $(NAMES) --no-print-directory
		@$(MAKE) $(NAMEC) --no-print-directory
$(NAMEC) : $(C_FILE) minitalk.h Makefile
		$(CC) $(CFLAGS) -o $(NAMEC) $(C_FILE) $(FT_PRINTF)
$(NAMES) : $(S_FILE) minitalk.h Makefile
		$(CC) $(CFLAGS) -o $(NAMES) $(S_FILE) $(FT_PRINTF)

clean :
		$(MAKE) clean -C $(FT_PRINTF_DIR)
		${RM} ${OBJC}
		${RM} ${OBJS}
	
fclean : clean
		@$(MAKE) fclean -C $(FT_PRINTF_DIR) --no-print-directory
		@${RM} $(NAMEC) --no-print-directory
		@${RM} $(NAMES) --no-print-directory
		@echo "🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦⬛⬛⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦⬛⬛⬜⬜⬜⬛⬛🟦🟦🟦⬛⬛🟦🟦🟦⬛⬛⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦⬛⬜⬜⬜⬜⬜⬜⬜⬛🟦⬛🟩🟩⬛🟦⬛⬜⬜⬜⬛⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦⬛⬜⬜⬛⬛⬜⬛⬛⬜⬜⬛🟩🟩🟩🟩⬛⬜⬜⬜⬜⬜⬜⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦⬛⬜⬛⬛⬛⬛⬜⬜⬜⬜⬛🟩🟩🟩⬛⬜⬜⬜⬛⬛⬜⬜⬜⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦⬛⬜⬜⬜⬛⬛⬜⬜⬜⬜⬛🟩🟩🟩🟩🟩⬛⬜⬜⬜⬜⬛⬛⬜⬜⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦⬛⬜⬜⬛⬜⬜⬜⬜⬜⬛🟩🟩🟩🟩🟩🟩⬛⬜⬜⬜⬛⬛⬛⬛⬜⬜⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦⬛⬜⬜⬜⬜⬜⬜⬛⬛🟩🟩🟩🟩🟩🟩🟩🟩⬛⬜⬜⬜⬛⬛⬜⬜⬜⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦⬛⬛⬜⬜⬜⬜⬛⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛⬜⬜⬜⬜⬛⬜⬜⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟦🟦🟦🟦🟦🟦🟦🟦🟦⬛⬛🟩🟩⬛⬜⬜⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛⬜⬜⬜⬜⬜⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟦🟦🟦🟦🟦🟦🟦🟦⬛🟩🟩🟩🟩🟩⬛⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛⬜⬜⬜⬜⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟦🟦🟦🟦🟦🟦🟦⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛⬜⬜⬛⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟦🟦🟦🟦🟦🟦🟦⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛⬛🟩🟩⬛🟦⬛🟦🟦⬛🟦🟦🟦🟦🟦"
		@echo "🟦🟦🟦🟦🟦🟦⬛🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩⬛⬛🟩⬛⬛🟦🟦🟦"
		@echo "🟦🟦🟦🟦🟦🟦⬛🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩⬛🟩⬛🟩⬛🟦🟦"
		@echo "🟦🟦🟦🟦🟦🟦⬛🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩⬛🟩⬛🟩⬛🟦🟦"
		@echo "🟦🟦🟦🟦🟦🟦⬛🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩⬛🟩⬛🟩⬛⬛🟦"
		@echo "🟦🟦🟦🟦🟦🟦⬛🟩🟩🟩🟩⬛⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩⬛🟩⬛🟩⬛"
		@echo "🟦🟦🟦🟦🟦🟦⬛🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩⬛🟩🟩⬛🟩⬛🟩⬛"
		@echo "🟦🟦🟦🟦🟦🟦⬛🟩🟩🟩🟩🟩🟩🟩⬛⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩⬛🟩⬛🟩🟩⬛🟩⬛"
		@echo "🟦🟦🟦🟦🟦🟦🟦⬛🟩🟩🟩🟩🟩🟩🟩🟩⬛⬛⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛⬛⬛⬛🟩🟩🟩🟩⬛🟩⬛🟩⬛🟩⬛🟦"
		@echo "🟦🟦🟦🟦🟦🟦🟦⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛⬛🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩⬛🟩⬛🟩⬛🟦"
		@echo "🟦🟦🟦🟦🟦🟦⬛⬛⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟥🟥🟥🟥🟥🟥⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩⬛🟩⬛🟩⬛🟦"
		@echo "🟦🟦🟦🟦⬛⬛🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛⬛⬛⬛⬛⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩⬛🟩🟩⬛⬛🟦🟦"
		@echo "🟦🟦⬛⬛🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩⬛🟩⬛🟩⬛🟦🟦"
		@echo "🟦⬛🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩⬛🟩🟩⬛🟦🟦🟦"
		@echo "⬛🟩🟩⬛⬛🟩🟩🟩🟩⬛🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩⬛🟩🟩🟩⬛🟦🟦🟦"
		@echo "🟩⬛⬛⬛🟩🟩🟩🟩🟩⬛🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛⬛🟩🟩🟩⬛🟩🟩🟩⬛🟦🟦🟦🟦"
		@echo "⬛⬛🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩⬛⬛🟦🟦🟦🟦🟦"
		@echo "⬛🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩⬛⬛🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟩🟩🟩⬛⬛⬛🟩🟩🟩🟩⬛🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛⬛🟩🟩🟩🟩🟩⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "⬛⬛⬛🟩🟩🟩⬛🟩🟩🟩⬛🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛⬛🟩🟩🟩🟩🟩⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛⬛🟩🟩🟩🟩🟩⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟦⬛🟩🟩🟩🟩🟩🟩⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟩🟩⬛⬛🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟦⬛🟩🟩🟩🟩🟩🟩⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩⬛⬛🟩🟩🟩🟩🟩🟩⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩⬛⬛🟩🟩🟩🟩🟩🟩🟩⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟩🟩🟩🟩🟩⬛⬛⬛⬛🟩🟩🟩🟩🟩⬛⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩⬛⬛🟩🟩🟩🟩🟩🟩⬛🟦🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟩🟩⬛⬛⬛🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩⬛⬛🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩⬛⬛🟩🟩🟩🟩🟩🟩🟩⬛🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "⬛⬛🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛⬛⬛⬛⬛⬛⬛🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩⬛🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛⬛🟩🟩🟩🟩🟩🟩⬛🟦🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩⬛🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟩🟩⬛🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩⬛🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟩🟩🟩⬛🟩🟩⬛🟩🟩🟩🟩🟩🟩⬛🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛⬛⬛🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩⬛🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟩🟩🟩⬛🟩🟩⬛🟩🟩🟩🟩🟩⬛🟩🟩⬛🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩⬛🟩🟩🟩⬛🟩🟩🟩⬛🟩🟩🟩🟩🟩⬛🟦🟦🟦🟦🟦🟦🟦"
		@echo "🟩🟩🟩⬛🟩⬛🟩🟩🟩🟩🟩⬛🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩⬛🟩🟩🟩🟩⬛⬛⬛🟩🟩🟩🟩🟩🟩🟩⬛⬛⬛🟦🟦🟦🟦"
		@echo "🟩🟩🟩⬛🟩⬛🟩🟩🟩🟩⬛🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩⬛🟩⬛🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩⬛🟩🟩⬛🟦🟦🟦"
		@echo "🟩🟩🟩⬛⬛🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩⬛🟩⬛🟩🟩🟩⬛⬛🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩⬛🟦🟦"
		@echo "🟩🟩🟩⬛⬛🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩⬛🟩⬛🟩🟩⬛🟦⬛🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩⬛🟦"
		@echo "🟩🟩🟩⬛⬛🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩⬛🟩🟩⬛🟩🟩⬛🟦🟦⬛🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩⬛🟦"
		@echo "🟩🟩🟩⬛🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩⬛🟩🟩⬛🟩🟩⬛🟦🟦⬛🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩⬛"
		@echo "🟩🟩🟩⬛🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩⬛🟩🟩🟩⬛⬛🟩⬛🟦⬛⬛🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩⬛"
		@echo "🟩🟩🟩⬛⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩⬛🟩🟩🟩🟩⬛🟩⬛⬛🟩🟩⬛🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩"
		@echo "🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩⬛🟩🟩🟩🟩⬛🟩⬛🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩"
		@echo "🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩⬛🟩🟩🟩🟩🟩⬛🟩⬛🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩"
		@echo "🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩⬛🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩⬛🟩🟩🟩"
		@echo "🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩⬛🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩"
		@echo "🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩⬛🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩"
		@echo "🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩⬛🟦⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩"
		@echo "🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩⬛🟦⬛⬛⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩"
		@echo "🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩⬛⬛⬛🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩"
		@echo "🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩⬛⬛🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩🟩🟩🟩⬛🟩🟩🟩🟩"
 
re : fclean all

.PHONY: all clean fclean re