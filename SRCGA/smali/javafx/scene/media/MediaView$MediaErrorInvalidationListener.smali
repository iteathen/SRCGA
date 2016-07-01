.class Ljavafx/scene/media/MediaView$MediaErrorInvalidationListener;
.super Ljava/lang/Object;
.source "MediaView.java"

# interfaces
.implements Ljavafx/beans/InvalidationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/media/MediaView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MediaErrorInvalidationListener"
.end annotation


# instance fields
.field final synthetic this$0:Ljavafx/scene/media/MediaView;


# direct methods
.method private constructor <init>(Ljavafx/scene/media/MediaView;)V
    .locals 4

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$MediaErrorInvalidationListener;
    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/media/MediaView$MediaErrorInvalidationListener;->this$0:Ljavafx/scene/media/MediaView;

    move-object v2, v0

    invoke-direct {v2}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/media/MediaView;Ljavafx/scene/media/MediaView$1;)V
    .locals 5

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$MediaErrorInvalidationListener;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/media/MediaView;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/media/MediaView$1;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/media/MediaView$MediaErrorInvalidationListener;-><init>(Ljavafx/scene/media/MediaView;)V

    return-void
.end method


# virtual methods
.method public invalidated(Ljavafx/beans/Observable;)V
    .locals 10

    .prologue
    .line 107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/media/MediaView$MediaErrorInvalidationListener;
    move-object v1, p1

    .local v1, "value":Ljavafx/beans/Observable;
    move-object v3, v1

    check-cast v3, Ljavafx/beans/value/ObservableObjectValue;

    move-object v2, v3

    .line 108
    .local v2, "errorProperty":Ljavafx/beans/value/ObservableObjectValue;, "Ljavafx/beans/value/ObservableObjectValue<Ljavafx/scene/media/MediaException;>;"
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/media/MediaView$MediaErrorInvalidationListener;->this$0:Ljavafx/scene/media/MediaView;

    new-instance v4, Ljavafx/scene/media/MediaErrorEvent;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/media/MediaView$MediaErrorInvalidationListener;->this$0:Ljavafx/scene/media/MediaView;

    invoke-virtual {v6}, Ljavafx/scene/media/MediaView;->getMediaPlayer()Ljavafx/scene/media/MediaPlayer;

    move-result-object v6

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/media/MediaView$MediaErrorInvalidationListener;->this$0:Ljavafx/scene/media/MediaView;

    invoke-static {v7}, Ljavafx/scene/media/MediaView;->access$000(Ljavafx/scene/media/MediaView;)Ljavafx/scene/media/MediaView;

    move-result-object v7

    move-object v8, v2

    invoke-interface {v8}, Ljavafx/beans/value/ObservableObjectValue;->get()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/media/MediaException;

    invoke-direct {v5, v6, v7, v8}, Ljavafx/scene/media/MediaErrorEvent;-><init>(Ljava/lang/Object;Ljavafx/event/EventTarget;Ljavafx/scene/media/MediaException;)V

    invoke-virtual {v3, v4}, Ljavafx/scene/media/MediaView;->fireEvent(Ljavafx/event/Event;)V

    .line 109
    return-void
.end method
