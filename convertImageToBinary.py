def binarize_fun(img):
    grey_scale_img= img.convert('L')  #coverting into grayscale
    array_of_image = np.array(grey_scale_img) 
    CONST_THRESHOLD = 128        

    #exploring each pixel 
    for i in range(len(array_of_image)):
        for j in range(len(array_of_image[i])):
            if(array_of_image[i,j] < CONST_THRESHOLD):   
                array_of_image[i,j]=0
            else:
                array_of_image[i,j]=255    

    binary_image = Image.fromarray(array_of_image)  
    return binary_image  #showing image


opn_img = Image.open('lena_color.gif')
binary_image= binarize_fun(opn_img)
array_of_image = np.array(binary_image)
l=256

for i in range(len(array_of_image)):
    for j in range(len(array_of_image[i])):  
      r=array_of_image[i,j]
      s=l-1-r
      array_of_image[i,j]=s

neg_img = Image.fromarray(array_of_image)
