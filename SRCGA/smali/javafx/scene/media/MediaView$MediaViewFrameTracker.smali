.class Ljavafx/scene/media/MediaView$MediaViewFrameTracker;
.super Ljava/lang/Object;
.source "MediaView.java"

# interfaces
.implements Lcom/sun/javafx/sg/prism/MediaFrameTracker;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/media/MediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaViewFrameTracker"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/MediaView;


# direct methods
.method private constructor <init>(Ljavafx/scene/media/MediaView;)V
    .locals 4

    .prologue
    .line 1008
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$MediaViewFrameTracker;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaView$MediaViewFrameTracker;->this$0:Ljavafx/scene/media/MediaView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/media/MediaView;Ljavafx/scene/media/MediaView$1;)V
    .locals 5

    .prologue
    .line 1008
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$MediaViewFrameTracker;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/media/MediaView;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/media/MediaView$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaView$MediaViewFrameTracker;-><init>(Ljavafx/scene/media/MediaView;)V

    return-void
.end method


# virtual methods
.method public incrementDecodedFrameCount(I)V
    .locals 5

    .prologue
    .line 1011
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$MediaViewFrameTracker;
    move v1, p1

    .local v1, "count":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaView$MediaViewFrameTracker;->this$0:Ljavafx/scene/media/MediaView;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaView$MediaViewFrameTracker;->this$0:Ljavafx/scene/media/MediaView;

    invoke-static {v3}, Ljavafx/scene/media/MediaView;->access$2800(Ljavafx/scene/media/MediaView;)I

    move-result v3

    move v4, v1

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljavafx/scene/media/MediaView;->access$2802(Ljavafx/scene/media/MediaView;I)I

    move-result v2

    .line 1012
    return-void
.end method

.method public incrementRenderedFrameCount(I)V
    .locals 5

    .prologue
    .line 1016
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$MediaViewFrameTracker;
    move v1, p1

    .local v1, "count":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/media/MediaView$MediaViewFrameTracker;->this$0:Ljavafx/scene/media/MediaView;

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaView$MediaViewFrameTracker;->this$0:Ljavafx/scene/media/MediaView;

    invoke-static {v3}, Ljavafx/scene/media/MediaView;->access$2900(Ljavafx/scene/media/MediaView;)I

    move-result v3

    move v4, v1

    add-int/2addr v3, v4

    invoke-static {v2, v3}, Ljavafx/scene/media/MediaView;->access$2902(Ljavafx/scene/media/MediaView;I)I

    move-result v2

    .line 1017
    return-void
.end method
