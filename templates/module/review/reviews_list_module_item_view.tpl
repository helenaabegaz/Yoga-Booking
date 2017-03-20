<div class="review-item clearfix">
    <div class="review-inner">
        <div class="avatar">
            <a href="{{link}}">
                <img src="{{formatAvatarImage image size=100}}" alt="user face" />
            </a>
        </div>
        <div class="content">
            <div class="review-info">
                <div class="author">
                    {{name}}
                </div>
                <div class="rating-container stars stars-{{rate}}">
                    <div class="inner"></div>
                </div>
            </div>
            <div class="review-text">
                <div class="cap">
                    {{subject}}
                </div>
                <div class="comment">
                    {{message}}
                </div>
            </div>
        </div>
    </div>
    <div class="btn-div">
        <button class="add-btn"></button>
    </div>
</div>