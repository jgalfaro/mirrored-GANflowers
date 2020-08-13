# Generative Adversarial Network to Generate Fake Numeric Datasets

## Resources

Version: August 13, 2020

Reused code and datasets from:

<a href="https://www.mathworks.com/help/deeplearning/">MATLAB Deep Learning Toolbox</a> and other relevant toolboxes.

<a href="https://www.mathworks.com/help/deeplearning/ug/train-generative-adversarial-network.html">MATLAB Train Generative Adversarial Network (GAN) example</a>

<a href="https://www.tensorflow.org/datasets/catalog/tf_flowers">The TensorFlow Flowers</a> <a href="http://download.tensorflow.org/example_images/flower_photos.tgz">dataset</a>

```matlab
url = 'http://download.tensorflow.org/example_images/flower_photos.tgz';
downloadFolder = tempdir;
filename = fullfile(downloadFolder,'flower_dataset.tgz');

imageFolder = fullfile(downloadFolder,'flower_photos');
if ~exist(imageFolder,'dir')
    disp('Downloading Flowers data set (218 MB)...')
    websave(filename,url);
    untar(filename,downloadFolder)
end
```




