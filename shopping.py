def remember_the_apple(list):
        if not list:
            return []
        if 'apple' in list:
            return list
        return list + ['apple']   

