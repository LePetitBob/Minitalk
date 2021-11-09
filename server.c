/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   server.c                                           :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: vduriez <vduriez@student.42.fr>            +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2021/11/09 17:09:40 by vduriez           #+#    #+#             */
/*   Updated: 2021/11/09 20:53:19 by vduriez          ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include <unistd.h>
#include <sys/types.h>
#include <signal.h>
#include <stdio.h>

void	ftputchar(char c)
{
	write(1, &c, 1);
}

void	putnbr(int nb)
{
	if (nb > 9)
		putnbr(nb / 10);
	ftputchar((nb % 10) + 48);
}

int main()
{
	pid_t pid;

	pid = getpid();
	putnbr(pid);
	write(1, "\n", 1);
	while (1)
	{
		usleep(1500000);
		write(1, "å\n", 3);
	}
	return 0;
}
