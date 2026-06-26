def clean_list(shopping_list):
    if not shopping_list:
            return []
    if 'milk' not in shopping_list:
        shopping_list = shopping_list + ['milk'] 
    result = []
    for i, item in enumerate(shopping_list, start=1):
        cleaned = item.strip().capitalize()
        result.append(f"{i}/ {cleaned}")
    return result