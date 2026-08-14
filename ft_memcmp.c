/* ************************************************************************** */
/*                                                                            */
/*                                                        :::      ::::::::   */
/*   ft_memcmp.c                                        :+:      :+:    :+:   */
/*                                                    +:+ +:+         +:+     */
/*   By: ezakyure <ezakyure@student.42istanbul.c    +#+  +:+       +#+        */
/*                                                +#+#+#+#+#+   +#+           */
/*   Created: 2026/08/03 17:07:39 by ezakyure          #+#    #+#             */
/*   Updated: 2026/08/06 17:40:35 by ezakyure         ###   ########.fr       */
/*                                                                            */
/* ************************************************************************** */

#include "libft.h"

int	ft_memcmp(const void *s1, const void *s2, size_t n)
{
	const unsigned char	*s1_;
	const unsigned char	*s2_;
	size_t				index;

	index = 0;
	s1_ = (const unsigned char *)s1;
	s2_ = (const unsigned char *)s2;
	while (index < n)
	{
		if (s1_[index] != s2_[index])
		{
			if (s1_[index] < s2_[index])
				return (-1);
			return (1);
		}
		index++;
	}
	return (0);
}
