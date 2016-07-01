.class public Ljavafx/scene/SceneBuilder;
.super Ljava/lang/Object;
.source "SceneBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/SceneBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/Scene;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private __set:J

.field private camera:Ljavafx/scene/Camera;

.field private cursor:Ljavafx/scene/Cursor;

.field private depthBuffer:Z

.field private eventDispatcher:Ljavafx/event/EventDispatcher;

.field private fill:Ljavafx/scene/paint/Paint;

.field private height:D

.field private onContextMenuRequested:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ContextMenuEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onDragDetected:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onDragDone:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onDragDropped:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onDragEntered:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onDragExited:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onDragOver:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onInputMethodTextChanged:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/InputMethodEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onKeyPressed:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onKeyReleased:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onKeyTyped:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onMouseClicked:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onMouseDragEntered:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onMouseDragExited:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onMouseDragOver:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onMouseDragReleased:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onMouseDragged:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onMouseEntered:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onMouseExited:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onMouseMoved:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onMousePressed:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onMouseReleased:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onRotate:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/RotateEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onRotationFinished:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/RotateEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onRotationStarted:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/RotateEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onScroll:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onScrollFinished:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onScrollStarted:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onSwipeDown:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onSwipeLeft:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onSwipeRight:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onSwipeUp:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onTouchMoved:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onTouchPressed:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onTouchReleased:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onTouchStationary:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onZoom:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ZoomEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onZoomFinished:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ZoomEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onZoomStarted:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ZoomEvent;",
            ">;"
        }
    .end annotation
.end field

.field private root:Ljavafx/scene/Parent;

.field private stylesheets:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private width:D


# direct methods
.method protected constructor <init>()V
    .locals 4

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 158
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/SceneBuilder;->height:D

    .line 646
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/SceneBuilder;->width:D

    .line 38
    return-void
.end method

.method private __set(I)V
    .locals 10

    .prologue
    .line 48
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move v2, p1

    .local v2, "i":I
    move-object v3, v1

    move-object v9, v3

    move-object v3, v9

    move-object v4, v9

    iget-wide v4, v4, Ljavafx/scene/SceneBuilder;->__set:J

    const-wide/16 v6, 0x1

    move v8, v2

    shl-long/2addr v6, v8

    or-long/2addr v4, v6

    iput-wide v4, v3, Ljavafx/scene/SceneBuilder;->__set:J

    .line 49
    return-void
.end method

.method public static create()Ljavafx/scene/SceneBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/SceneBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/SceneBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/SceneBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/Scene;)V
    .locals 12

    .prologue
    .line 51
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v2, p1

    .local v2, "x":Ljavafx/scene/Scene;
    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/SceneBuilder;->__set:J

    move-wide v3, v6

    .line 52
    .local v3, "set":J
    :goto_0
    move-wide v6, v3

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-eqz v6, :cond_0

    .line 53
    move-wide v6, v3

    invoke-static {v6, v7}, Ljava/lang/Long;->numberOfTrailingZeros(J)I

    move-result v6

    move v5, v6

    .line 54
    .local v5, "i":I
    move-wide v6, v3

    const-wide/16 v8, 0x1

    move v10, v5

    shl-long/2addr v8, v10

    const-wide/16 v10, -0x1

    xor-long/2addr v8, v10

    and-long/2addr v6, v8

    move-wide v3, v6

    .line 55
    move v6, v5

    packed-switch v6, :pswitch_data_0

    .line 101
    :goto_1
    goto :goto_0

    .line 56
    :pswitch_0
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->camera:Ljavafx/scene/Camera;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setCamera(Ljavafx/scene/Camera;)V

    goto :goto_1

    .line 57
    :pswitch_1
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->cursor:Ljavafx/scene/Cursor;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setCursor(Ljavafx/scene/Cursor;)V

    goto :goto_1

    .line 58
    :pswitch_2
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->eventDispatcher:Ljavafx/event/EventDispatcher;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setEventDispatcher(Ljavafx/event/EventDispatcher;)V

    goto :goto_1

    .line 59
    :pswitch_3
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->fill:Ljavafx/scene/paint/Paint;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setFill(Ljavafx/scene/paint/Paint;)V

    goto :goto_1

    .line 60
    :pswitch_4
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onContextMenuRequested:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnContextMenuRequested(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 61
    :pswitch_5
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onDragDetected:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnDragDetected(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 62
    :pswitch_6
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onDragDone:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnDragDone(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 63
    :pswitch_7
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onDragDropped:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnDragDropped(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 64
    :pswitch_8
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onDragEntered:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnDragEntered(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 65
    :pswitch_9
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onDragExited:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnDragExited(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 66
    :pswitch_a
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onDragOver:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnDragOver(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 67
    :pswitch_b
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onInputMethodTextChanged:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnInputMethodTextChanged(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 68
    :pswitch_c
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onKeyPressed:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnKeyPressed(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 69
    :pswitch_d
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onKeyReleased:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnKeyReleased(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 70
    :pswitch_e
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onKeyTyped:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnKeyTyped(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 71
    :pswitch_f
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onMouseClicked:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnMouseClicked(Ljavafx/event/EventHandler;)V

    goto :goto_1

    .line 72
    :pswitch_10
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onMouseDragEntered:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnMouseDragEntered(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 73
    :pswitch_11
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onMouseDragExited:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnMouseDragExited(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 74
    :pswitch_12
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onMouseDragged:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnMouseDragged(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 75
    :pswitch_13
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onMouseDragOver:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnMouseDragOver(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 76
    :pswitch_14
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onMouseDragReleased:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnMouseDragReleased(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 77
    :pswitch_15
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onMouseEntered:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnMouseEntered(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 78
    :pswitch_16
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onMouseExited:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnMouseExited(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 79
    :pswitch_17
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onMouseMoved:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnMouseMoved(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 80
    :pswitch_18
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onMousePressed:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 81
    :pswitch_19
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onMouseReleased:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnMouseReleased(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 82
    :pswitch_1a
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onRotate:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnRotate(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 83
    :pswitch_1b
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onRotationFinished:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnRotationFinished(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 84
    :pswitch_1c
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onRotationStarted:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnRotationStarted(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 85
    :pswitch_1d
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onScroll:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnScroll(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 86
    :pswitch_1e
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onScrollFinished:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnScrollFinished(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 87
    :pswitch_1f
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onScrollStarted:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnScrollStarted(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 88
    :pswitch_20
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onSwipeDown:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnSwipeDown(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 89
    :pswitch_21
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onSwipeLeft:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnSwipeLeft(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 90
    :pswitch_22
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onSwipeRight:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnSwipeRight(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 91
    :pswitch_23
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onSwipeUp:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnSwipeUp(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 92
    :pswitch_24
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onTouchMoved:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnTouchMoved(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 93
    :pswitch_25
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onTouchPressed:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnTouchPressed(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 94
    :pswitch_26
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onTouchReleased:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnTouchReleased(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 95
    :pswitch_27
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onTouchStationary:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnTouchStationary(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 96
    :pswitch_28
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onZoom:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnZoom(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 97
    :pswitch_29
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onZoomFinished:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnZoomFinished(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 98
    :pswitch_2a
    move-object v6, v2

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->onZoomStarted:Ljavafx/event/EventHandler;

    invoke-virtual {v6, v7}, Ljavafx/scene/Scene;->setOnZoomStarted(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 99
    :pswitch_2b
    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/Scene;->getStylesheets()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/SceneBuilder;->stylesheets:Ljava/util/Collection;

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v6

    goto/16 :goto_1

    .line 102
    .end local v5    # "i":I
    :cond_0
    return-void

    .line 55
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
        :pswitch_10
        :pswitch_11
        :pswitch_12
        :pswitch_13
        :pswitch_14
        :pswitch_15
        :pswitch_16
        :pswitch_17
        :pswitch_18
        :pswitch_19
        :pswitch_1a
        :pswitch_1b
        :pswitch_1c
        :pswitch_1d
        :pswitch_1e
        :pswitch_1f
        :pswitch_20
        :pswitch_21
        :pswitch_22
        :pswitch_23
        :pswitch_24
        :pswitch_25
        :pswitch_26
        :pswitch_27
        :pswitch_28
        :pswitch_29
        :pswitch_2a
        :pswitch_2b
    .end packed-switch
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/SceneBuilder;->build()Ljavafx/scene/Scene;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/Scene;
    .locals 12

    .prologue
    .line 660
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    new-instance v3, Ljavafx/scene/Scene;

    move-object v11, v3

    move-object v3, v11

    move-object v4, v11

    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/SceneBuilder;->root:Ljavafx/scene/Parent;

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/SceneBuilder;->width:D

    move-object v8, v1

    iget-wide v8, v8, Ljavafx/scene/SceneBuilder;->height:D

    move-object v10, v1

    iget-boolean v10, v10, Ljavafx/scene/SceneBuilder;->depthBuffer:Z

    invoke-direct/range {v4 .. v10}, Ljavafx/scene/Scene;-><init>(Ljavafx/scene/Parent;DDZ)V

    move-object v2, v3

    .line 661
    .local v2, "x":Ljavafx/scene/Scene;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/SceneBuilder;->applyTo(Ljavafx/scene/Scene;)V

    .line 662
    move-object v3, v2

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v1
.end method

.method public camera(Ljavafx/scene/Camera;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Camera;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Camera;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->camera:Ljavafx/scene/Camera;

    .line 111
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 112
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public cursor(Ljavafx/scene/Cursor;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Cursor;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Cursor;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->cursor:Ljavafx/scene/Cursor;

    .line 122
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 123
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public depthBuffer(Z)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/SceneBuilder;->depthBuffer:Z

    .line 133
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public eventDispatcher(Ljavafx/event/EventDispatcher;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventDispatcher;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventDispatcher;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->eventDispatcher:Ljavafx/event/EventDispatcher;

    .line 143
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 144
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public fill(Ljavafx/scene/paint/Paint;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/paint/Paint;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/paint/Paint;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->fill:Ljavafx/scene/paint/Paint;

    .line 154
    move-object v2, v0

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 155
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public height(D)Ljavafx/scene/SceneBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 164
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/SceneBuilder;->height:D

    .line 165
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onContextMenuRequested(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ContextMenuEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ContextMenuEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onContextMenuRequested:Ljavafx/event/EventHandler;

    .line 176
    move-object v2, v0

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 177
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onDragDetected(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 186
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onDragDetected:Ljavafx/event/EventHandler;

    .line 187
    move-object v2, v0

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 188
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onDragDone(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 197
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/DragEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onDragDone:Ljavafx/event/EventHandler;

    .line 198
    move-object v2, v0

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 199
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onDragDropped(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 208
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/DragEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onDragDropped:Ljavafx/event/EventHandler;

    .line 209
    move-object v2, v0

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 210
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onDragEntered(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 219
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/DragEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onDragEntered:Ljavafx/event/EventHandler;

    .line 220
    move-object v2, v0

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 221
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onDragExited(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/DragEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onDragExited:Ljavafx/event/EventHandler;

    .line 231
    move-object v2, v0

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 232
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onDragOver(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/DragEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onDragOver:Ljavafx/event/EventHandler;

    .line 242
    move-object v2, v0

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 243
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onInputMethodTextChanged(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/InputMethodEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 252
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/InputMethodEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onInputMethodTextChanged:Ljavafx/event/EventHandler;

    .line 253
    move-object v2, v0

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 254
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onKeyPressed(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/KeyEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 263
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/KeyEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onKeyPressed:Ljavafx/event/EventHandler;

    .line 264
    move-object v2, v0

    const/16 v3, 0xc

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 265
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onKeyReleased(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/KeyEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 274
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/KeyEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onKeyReleased:Ljavafx/event/EventHandler;

    .line 275
    move-object v2, v0

    const/16 v3, 0xd

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 276
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onKeyTyped(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/KeyEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/KeyEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onKeyTyped:Ljavafx/event/EventHandler;

    .line 286
    move-object v2, v0

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 287
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onMouseClicked(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 296
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onMouseClicked:Ljavafx/event/EventHandler;

    .line 297
    move-object v2, v0

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 298
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onMouseDragEntered(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 308
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseDragEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onMouseDragEntered:Ljavafx/event/EventHandler;

    .line 309
    move-object v2, v0

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 310
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onMouseDragExited(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 320
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseDragEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onMouseDragExited:Ljavafx/event/EventHandler;

    .line 321
    move-object v2, v0

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 322
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onMouseDragOver(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 343
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseDragEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onMouseDragOver:Ljavafx/event/EventHandler;

    .line 344
    move-object v2, v0

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 345
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onMouseDragReleased(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseDragEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onMouseDragReleased:Ljavafx/event/EventHandler;

    .line 356
    move-object v2, v0

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 357
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onMouseDragged(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 331
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onMouseDragged:Ljavafx/event/EventHandler;

    .line 332
    move-object v2, v0

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 333
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onMouseEntered(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 366
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onMouseEntered:Ljavafx/event/EventHandler;

    .line 367
    move-object v2, v0

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 368
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onMouseExited(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 377
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onMouseExited:Ljavafx/event/EventHandler;

    .line 378
    move-object v2, v0

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 379
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onMouseMoved(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 388
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onMouseMoved:Ljavafx/event/EventHandler;

    .line 389
    move-object v2, v0

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 390
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onMousePressed(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 399
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onMousePressed:Ljavafx/event/EventHandler;

    .line 400
    move-object v2, v0

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 401
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onMouseReleased(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 410
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onMouseReleased:Ljavafx/event/EventHandler;

    .line 411
    move-object v2, v0

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 412
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onRotate(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/RotateEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 422
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/RotateEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onRotate:Ljavafx/event/EventHandler;

    .line 423
    move-object v2, v0

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 424
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onRotationFinished(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/RotateEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 434
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/RotateEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onRotationFinished:Ljavafx/event/EventHandler;

    .line 435
    move-object v2, v0

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 436
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onRotationStarted(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/RotateEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 446
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/RotateEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onRotationStarted:Ljavafx/event/EventHandler;

    .line 447
    move-object v2, v0

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 448
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onScroll(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ScrollEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onScroll:Ljavafx/event/EventHandler;

    .line 458
    move-object v2, v0

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 459
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onScrollFinished(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 469
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ScrollEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onScrollFinished:Ljavafx/event/EventHandler;

    .line 470
    move-object v2, v0

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 471
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onScrollStarted(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 481
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ScrollEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onScrollStarted:Ljavafx/event/EventHandler;

    .line 482
    move-object v2, v0

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 483
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onSwipeDown(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 493
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/SwipeEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onSwipeDown:Ljavafx/event/EventHandler;

    .line 494
    move-object v2, v0

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 495
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onSwipeLeft(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 505
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/SwipeEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onSwipeLeft:Ljavafx/event/EventHandler;

    .line 506
    move-object v2, v0

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 507
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onSwipeRight(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 517
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/SwipeEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onSwipeRight:Ljavafx/event/EventHandler;

    .line 518
    move-object v2, v0

    const/16 v3, 0x22

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 519
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onSwipeUp(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 529
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/SwipeEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onSwipeUp:Ljavafx/event/EventHandler;

    .line 530
    move-object v2, v0

    const/16 v3, 0x23

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 531
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onTouchMoved(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/TouchEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onTouchMoved:Ljavafx/event/EventHandler;

    .line 542
    move-object v2, v0

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 543
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onTouchPressed(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/TouchEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onTouchPressed:Ljavafx/event/EventHandler;

    .line 554
    move-object v2, v0

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 555
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onTouchReleased(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/TouchEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onTouchReleased:Ljavafx/event/EventHandler;

    .line 566
    move-object v2, v0

    const/16 v3, 0x26

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 567
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onTouchStationary(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 577
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/TouchEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onTouchStationary:Ljavafx/event/EventHandler;

    .line 578
    move-object v2, v0

    const/16 v3, 0x27

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 579
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onZoom(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ZoomEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 589
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ZoomEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onZoom:Ljavafx/event/EventHandler;

    .line 590
    move-object v2, v0

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 591
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onZoomFinished(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ZoomEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 601
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ZoomEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onZoomFinished:Ljavafx/event/EventHandler;

    .line 602
    move-object v2, v0

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 603
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public onZoomStarted(Ljavafx/event/EventHandler;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ZoomEvent;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 613
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ZoomEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->onZoomStarted:Ljavafx/event/EventHandler;

    .line 614
    move-object v2, v0

    const/16 v3, 0x2a

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 615
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public root(Ljavafx/scene/Parent;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Parent;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 624
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Parent;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->root:Ljavafx/scene/Parent;

    .line 625
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public stylesheets(Ljava/util/Collection;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/String;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 634
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/SceneBuilder;->stylesheets:Ljava/util/Collection;

    .line 635
    move-object v2, v0

    const/16 v3, 0x2b

    invoke-direct {v2, v3}, Ljavafx/scene/SceneBuilder;->__set(I)V

    .line 636
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public varargs stylesheets([Ljava/lang/String;)Ljavafx/scene/SceneBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 643
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/SceneBuilder;->stylesheets(Ljava/util/Collection;)Ljavafx/scene/SceneBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method

.method public width(D)Ljavafx/scene/SceneBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 652
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/SceneBuilder;->width:D

    .line 653
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/SceneBuilder;, "Ljavafx/scene/SceneBuilder<TB;>;"
    return-object v0
.end method
