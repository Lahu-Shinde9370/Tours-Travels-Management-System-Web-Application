<!DOCTYPE html>
<html>
<head>
  <meta charset="UTF-8">
  <title>Tours and Travels Videos</title>
  <link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.15.4/css/all.min.css">
  <style>
    /* Add your CSS styles here */
    body {
      font-family: Arial, sans-serif;
      margin: 0;
      padding: 0;
      background-image: url('images/t9.jpeg'); /* Replace 'your-background-image.jpg' with the path to your background image */
      background-size: cover;
      background-repeat: no-repeat;
      background-attachment: fixed;
    }
    .container {
      max-width: 1200px;
      margin: 20px auto;
      padding: 0 20px;
    }
    h1 {
      text-align: center;
      margin-bottom: 30px;
      color: #333;
    }
    .video-gallery {
      display: grid;
      grid-template-columns: repeat(auto-fit, minmax(250px, 1fr));
      grid-gap: 20px;
    }
    .video-container {
      position: relative;
      cursor: pointer;
      border-radius: 5px;
      overflow: hidden;
      box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
      transition: transform 0.2s ease-in-out;
      background-color: #fff;
    }
    .video-container:hover .video-overlay {
      opacity: 1;
    }
    .video {
      width: 100%;
      height: auto;
    }
    .video-title {
      margin-top: 10px;
      font-size: 16px;
      text-align: center;
      color: #333;
    }
    .video-overlay {
      position: absolute;
      top: 0;
      left: 0;
      width: 100%;
      height: 100%;
      background: rgba(0, 0, 0, 0.5);
      display: flex;
      justify-content: center;
      align-items: center;
      opacity: 0;
      transition: opacity 0.3s ease;
    }
    .play-icon {
      color: white;
      font-size: 48px;
      transition: transform 0.2s ease;
    }
    .video-container:hover .video {
      opacity: 0.7;
    }
    .video-container:hover .play-icon {
      transform: scale(1.2);
    }
  </style>
</head>
<body>
  <div class="container">
    <h1>Welcome to Tours and Travels Video Gallery</h1>
    <div class="video-gallery">
      <div class="video-container">
        <video class="video" src="images/video1.mp4" loop></video>
        <div class="video-overlay">
          <i class="fas fa-play-circle play-icon"></i>
        </div>
        <div class="video-title"> Himalaya Tour</div>
      </div>
      <div class="video-container">
        <video class="video" src="images/Welcome_to_Kerala.mp4" loop></video>
        <div class="video-overlay">
          <i class="fas fa-play-circle play-icon"></i>
        </div>
        <div class="video-title">Kerala Tour</div>
      </div>
      <!-- Add more video containers below -->
      <div class="video-container">
        <video class="video" src="images/BALI_Indonesia.mp4" loop></video>
        <div class="video-overlay">
          <i class="fas fa-play-circle play-icon"></i>
        </div>
        <div class="video-title">BALI_Indonesia Tour</div>
      </div>
      <div class="video-container">
        <video class="video" src="images/India_in_4K.mp4" loop></video>
        <div class="video-overlay">
          <i class="fas fa-play-circle play-icon"></i>
        </div>
        <div class="video-title">India Tour</div>
      </div>
      <div class="video-container">
        <video class="video" src="images/NEW_YORK.webm" loop></video>
        <div class="video-overlay">
          <i class="fas fa-play-circle play-icon"></i>
        </div>
        <div class="video-title">NEW_YORK Tour</div>
      </div>
      <!-- Add more video containers as needed -->
      <div class="video-container">
        <video class="video" src="images/India_in_4K.mp4" loop></video>
        <div class="video-overlay">
          <i class="fas fa-play-circle play-icon"></i>
        </div>
        <div class="video-title">London Tour</div>
      </div>
      <div class="video-container">
        <video class="video" src="images/Welcome_to_Kerala.mp4" loop></video>
        <div class="video-overlay">
          <i class="fas fa-play-circle play-icon"></i>
        </div>
        <div class="video-title">Nepal Tour</div>
      </div>
      <div class="video-container">
        <video class="video" src="images/video1.mp4" loop></video>
        <div class="video-overlay">
          <i class="fas fa-play-circle play-icon"></i>
        </div>
        <div class="video-title">Kashmir Tour</div>
      </div>
    </div>
  </div>
  <script>
    const videoContainers = document.querySelectorAll('.video-container');

    videoContainers.forEach(container => {
      const video = container.querySelector('.video');

      container.addEventListener('click', () => {
        videoContainers.forEach(c => {
          const v = c.querySelector('.video');
          if (c !== container && !v.paused) {
            v.pause();
          }
        });

        if (video.paused) {
          video.play();
        } else {
          video.pause();
        }
      });

      video.addEventListener('click', function() {
        if (!document.fullscreenElement) {
          video.requestFullscreen();
        } else {
          document.exitFullscreen();
        }
      });

      video.addEventListener('contextmenu', function(event) {
        event.preventDefault();
        if (video.playbackRate == 1) {
          video.playbackRate = 1.5;
        } else {
          video.playbackRate = 1;
        }
      });
    });
  </script>
</body>
</html>
