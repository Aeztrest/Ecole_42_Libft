/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_atoi.c                                          :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ezakyure <ezakyure@student.42istanbul.c    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2026/08/03 17:09:07 by ezakyure          #+#    #+#             */
/*   Updated: 2026/08/06 17:40:04 by ezakyure         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

static int	ft_check(long long result, const char *str, int sign,
			size_t i)
{
	if (result > 922337203685477580 || (result == 922337203685477580 && (str[i]
				- '0') > 7))
	{
		if (sign == 1)
			return (-1);
		else
			return (0);
	}
	else
		return (1);
}

static size_t	ft_white_space(size_t i, const char *str)
{
	while (str[i] == 32 || (str[i] >= 9 && str[i] <= 13))
		i++;
	return (i);
}

int	ft_atoi(const char *str)
{
	size_t		i;
	long long	result;
	int			sign;
	int			re;

	i = 0;
	result = 0;
	sign = 1;
	re = 0;
	i += ft_white_space(i, str);
	if (str[i] == '+')
		i++;
	else if (str[i] == '-')
	{
		sign = -1;
		i++;
	}
	while (str[i] >= 48 && str[i] <= 57)
	{
		re = ft_check(result, str, sign, i);
		if (re == -1 || re == 0)
			return (re);
		result = ((result * 10) + (str[i++] - 48));
	}
	return ((int)(result * sign));
}
