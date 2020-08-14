# Generative Adversarial Network to build Fake Numeric Datasets using MATLAB

## Resources


Version: August 13, 2020

Reused code and datasets from:

<a href="https://www.mathworks.com/help/deeplearning/">MATLAB Deep Learning Toolbox</a> and other relevant toolboxes

<a href="https://www.mathworks.com/help/deeplearning/ug/train-generative-adversarial-network.html">MATLAB Train Generative Adversarial Network (GAN) example</a> [1,3]

<a href="https://www.tensorflow.org/datasets/catalog/tf_flowers">The TensorFlow Flowers</a> <a href="http://download.tensorflow.org/example_images/flower_photos.tgz">dataset</a> [2]

## 1. Preamble

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

## 2. Generator

![Fig. 1. Generator.](https://www.mathworks.com/help/examples/nnet/win64/TrainGenerativeAdversarialNetworkGANExample_02.png?raw=true)

## 3. Discriminator

![Fig. 2. Generator.](https://www.mathworks.com/help/examples/nnet/win64/TrainGenerativeAdversarialNetworkGANExample_03.png?raw=true)

## 4. Training Options

```matlab
numEpochs = 500;
miniBatchSize = 128;
augimds.MiniBatchSize = miniBatchSize;

learnRate = 0.0002;
gradientDecayFactor = 0.5;
squaredGradientDecayFactor = 0.999;

executionEnvironment = "auto";

flipFactor = 0.3;

validationFrequency = 100;
```

## 5. Training Experiment

![Fig. 3. Training experiment.](https://github.com/jgalfaro/mirrored-GANflowers/blob/master/figures/training.gif?raw=true)

(Use <a href="https://youtu.be/3Ytm2MOBvtw">this link</a> to visualize the whole training experiment).

### Generated Dataset

![Fig. 4. Generated Dataset.](https://github.com/jgalfaro/mirrored-GANflowers/blob/master/figures/generatedDataset.png?raw=true)

## References

[1] The Mathworks MATLAB team. http://www.mathworks.com/help/deeplearning/ug/train-generative-adversarial-network.html

[2] The TensorFlow Team. Flowers http://download.tensorflow.org/example_images/flower_photos.tgz

[3] Radford, Alec, Luke Metz, and Soumith Chintala. "Unsupervised representation learning with deep convolutional generative adversarial networks." arXiv preprint arXiv:1511.06434 (2015).
