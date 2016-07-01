.class public abstract Ljavafx/scene/NodeBuilder;
.super Ljava/lang/Object;
.source "NodeBuilder.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/NodeBuilder",
        "<TB;>;>",
        "Ljava/lang/Object;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field __set:Ljava/util/BitSet;

.field private blendMode:Ljavafx/scene/effect/BlendMode;

.field private cache:Z

.field private cacheHint:Ljavafx/scene/CacheHint;

.field private clip:Ljavafx/scene/Node;

.field private cursor:Ljavafx/scene/Cursor;

.field private depthTest:Ljavafx/scene/DepthTest;

.field private disable:Z

.field private effect:Ljavafx/scene/effect/Effect;

.field private eventDispatcher:Ljavafx/event/EventDispatcher;

.field private focusTraversable:Z

.field private id:Ljava/lang/String;

.field private inputMethodRequests:Ljavafx/scene/input/InputMethodRequests;

.field private layoutX:D

.field private layoutY:D

.field private managed:Z

.field private mouseTransparent:Z

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

.field private opacity:D

.field private pickOnBounds:Z

.field private rotate:D

.field private rotationAxis:Ljavafx/geometry/Point3D;

.field private scaleX:D

.field private scaleY:D

.field private scaleZ:D

.field private style:Ljava/lang/String;

.field private styleClass:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private transforms:Ljava/util/Collection;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/transform/Transform;",
            ">;"
        }
    .end annotation
.end field

.field private translateX:D

.field private translateY:D

.field private translateZ:D

.field private userData:Ljava/lang/Object;

.field private visible:Z


# direct methods
.method protected constructor <init>()V
    .locals 5

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 41
    move-object v1, v0

    new-instance v2, Ljava/util/BitSet;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/BitSet;-><init>()V

    iput-object v2, v1, Ljavafx/scene/NodeBuilder;->__set:Ljava/util/BitSet;

    .line 38
    return-void
.end method

.method private __set(I)V
    .locals 4

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move v1, p1

    .local v1, "i":I
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/NodeBuilder;->__set:Ljava/util/BitSet;

    move v3, v1

    invoke-virtual {v2, v3}, Ljava/util/BitSet;->set(I)V

    .line 44
    return-void
.end method


# virtual methods
.method public applyTo(Ljavafx/scene/Node;)V
    .locals 9

    .prologue
    .line 46
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v2, p1

    .local v2, "x":Ljavafx/scene/Node;
    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/NodeBuilder;->__set:Ljava/util/BitSet;

    move-object v3, v5

    .line 47
    .local v3, "set":Ljava/util/BitSet;
    const/4 v5, -0x1

    move v4, v5

    .local v4, "i":I
    :goto_0
    move-object v5, v3

    move v6, v4

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    invoke-virtual {v5, v6}, Ljava/util/BitSet;->nextSetBit(I)I

    move-result v5

    move v8, v5

    move v5, v8

    move v6, v8

    move v4, v6

    if-ltz v5, :cond_0

    .line 48
    move v5, v4

    packed-switch v5, :pswitch_data_0

    .line 118
    :goto_1
    goto :goto_0

    .line 49
    :pswitch_0
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->blendMode:Ljavafx/scene/effect/BlendMode;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setBlendMode(Ljavafx/scene/effect/BlendMode;)V

    goto :goto_1

    .line 50
    :pswitch_1
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/NodeBuilder;->cache:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setCache(Z)V

    goto :goto_1

    .line 51
    :pswitch_2
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->cacheHint:Ljavafx/scene/CacheHint;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setCacheHint(Ljavafx/scene/CacheHint;)V

    goto :goto_1

    .line 52
    :pswitch_3
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->clip:Ljavafx/scene/Node;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setClip(Ljavafx/scene/Node;)V

    goto :goto_1

    .line 53
    :pswitch_4
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->cursor:Ljavafx/scene/Cursor;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setCursor(Ljavafx/scene/Cursor;)V

    goto :goto_1

    .line 54
    :pswitch_5
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->depthTest:Ljavafx/scene/DepthTest;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setDepthTest(Ljavafx/scene/DepthTest;)V

    goto :goto_1

    .line 55
    :pswitch_6
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/NodeBuilder;->disable:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setDisable(Z)V

    goto :goto_1

    .line 56
    :pswitch_7
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->effect:Ljavafx/scene/effect/Effect;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setEffect(Ljavafx/scene/effect/Effect;)V

    goto :goto_1

    .line 57
    :pswitch_8
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->eventDispatcher:Ljavafx/event/EventDispatcher;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setEventDispatcher(Ljavafx/event/EventDispatcher;)V

    goto :goto_1

    .line 58
    :pswitch_9
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/NodeBuilder;->focusTraversable:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setFocusTraversable(Z)V

    goto :goto_1

    .line 59
    :pswitch_a
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->id:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setId(Ljava/lang/String;)V

    goto :goto_1

    .line 60
    :pswitch_b
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->inputMethodRequests:Ljavafx/scene/input/InputMethodRequests;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setInputMethodRequests(Ljavafx/scene/input/InputMethodRequests;)V

    goto :goto_1

    .line 61
    :pswitch_c
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/NodeBuilder;->layoutX:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->setLayoutX(D)V

    goto :goto_1

    .line 62
    :pswitch_d
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/NodeBuilder;->layoutY:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->setLayoutY(D)V

    goto :goto_1

    .line 63
    :pswitch_e
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/NodeBuilder;->managed:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setManaged(Z)V

    goto :goto_1

    .line 64
    :pswitch_f
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/NodeBuilder;->mouseTransparent:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setMouseTransparent(Z)V

    goto :goto_1

    .line 65
    :pswitch_10
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onContextMenuRequested:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnContextMenuRequested(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 66
    :pswitch_11
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onDragDetected:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnDragDetected(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 67
    :pswitch_12
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onDragDone:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnDragDone(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 68
    :pswitch_13
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onDragDropped:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnDragDropped(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 69
    :pswitch_14
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onDragEntered:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnDragEntered(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 70
    :pswitch_15
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onDragExited:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnDragExited(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 71
    :pswitch_16
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onDragOver:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnDragOver(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 72
    :pswitch_17
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onInputMethodTextChanged:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnInputMethodTextChanged(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 73
    :pswitch_18
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onKeyPressed:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnKeyPressed(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 74
    :pswitch_19
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onKeyReleased:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnKeyReleased(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 75
    :pswitch_1a
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onKeyTyped:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnKeyTyped(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 76
    :pswitch_1b
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onMouseClicked:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnMouseClicked(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 77
    :pswitch_1c
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onMouseDragEntered:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnMouseDragEntered(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 78
    :pswitch_1d
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onMouseDragExited:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnMouseDragExited(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 79
    :pswitch_1e
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onMouseDragged:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnMouseDragged(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 80
    :pswitch_1f
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onMouseDragOver:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnMouseDragOver(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 81
    :pswitch_20
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onMouseDragReleased:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnMouseDragReleased(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 82
    :pswitch_21
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onMouseEntered:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnMouseEntered(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 83
    :pswitch_22
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onMouseExited:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnMouseExited(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 84
    :pswitch_23
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onMouseMoved:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnMouseMoved(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 85
    :pswitch_24
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onMousePressed:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 86
    :pswitch_25
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onMouseReleased:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnMouseReleased(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 87
    :pswitch_26
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onRotate:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnRotate(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 88
    :pswitch_27
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onRotationFinished:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnRotationFinished(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 89
    :pswitch_28
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onRotationStarted:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnRotationStarted(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 90
    :pswitch_29
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onScroll:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnScroll(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 91
    :pswitch_2a
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onScrollFinished:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnScrollFinished(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 92
    :pswitch_2b
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onScrollStarted:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnScrollStarted(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 93
    :pswitch_2c
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onSwipeDown:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnSwipeDown(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 94
    :pswitch_2d
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onSwipeLeft:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnSwipeLeft(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 95
    :pswitch_2e
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onSwipeRight:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnSwipeRight(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 96
    :pswitch_2f
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onSwipeUp:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnSwipeUp(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 97
    :pswitch_30
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onTouchMoved:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnTouchMoved(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 98
    :pswitch_31
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onTouchPressed:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnTouchPressed(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 99
    :pswitch_32
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onTouchReleased:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnTouchReleased(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 100
    :pswitch_33
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onTouchStationary:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnTouchStationary(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 101
    :pswitch_34
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onZoom:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnZoom(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 102
    :pswitch_35
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onZoomFinished:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnZoomFinished(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 103
    :pswitch_36
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->onZoomStarted:Ljavafx/event/EventHandler;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setOnZoomStarted(Ljavafx/event/EventHandler;)V

    goto/16 :goto_1

    .line 104
    :pswitch_37
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/NodeBuilder;->opacity:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->setOpacity(D)V

    goto/16 :goto_1

    .line 105
    :pswitch_38
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/NodeBuilder;->pickOnBounds:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setPickOnBounds(Z)V

    goto/16 :goto_1

    .line 106
    :pswitch_39
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/NodeBuilder;->rotate:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->setRotate(D)V

    goto/16 :goto_1

    .line 107
    :pswitch_3a
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->rotationAxis:Ljavafx/geometry/Point3D;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setRotationAxis(Ljavafx/geometry/Point3D;)V

    goto/16 :goto_1

    .line 108
    :pswitch_3b
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/NodeBuilder;->scaleX:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->setScaleX(D)V

    goto/16 :goto_1

    .line 109
    :pswitch_3c
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/NodeBuilder;->scaleY:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->setScaleY(D)V

    goto/16 :goto_1

    .line 110
    :pswitch_3d
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/NodeBuilder;->scaleZ:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->setScaleZ(D)V

    goto/16 :goto_1

    .line 111
    :pswitch_3e
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->style:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setStyle(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 112
    :pswitch_3f
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->styleClass:Ljava/util/Collection;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v5

    goto/16 :goto_1

    .line 113
    :pswitch_40
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/Node;->getTransforms()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->transforms:Ljava/util/Collection;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v5

    goto/16 :goto_1

    .line 114
    :pswitch_41
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/NodeBuilder;->translateX:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->setTranslateX(D)V

    goto/16 :goto_1

    .line 115
    :pswitch_42
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/NodeBuilder;->translateY:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->setTranslateY(D)V

    goto/16 :goto_1

    .line 116
    :pswitch_43
    move-object v5, v2

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/NodeBuilder;->translateZ:D

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->setTranslateZ(D)V

    goto/16 :goto_1

    .line 117
    :pswitch_44
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/NodeBuilder;->userData:Ljava/lang/Object;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setUserData(Ljava/lang/Object;)V

    goto/16 :goto_1

    .line 118
    :pswitch_45
    move-object v5, v2

    move-object v6, v1

    iget-boolean v6, v6, Ljavafx/scene/NodeBuilder;->visible:Z

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->setVisible(Z)V

    goto/16 :goto_1

    .line 121
    :cond_0
    return-void

    .line 48
    nop

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
        :pswitch_2c
        :pswitch_2d
        :pswitch_2e
        :pswitch_2f
        :pswitch_30
        :pswitch_31
        :pswitch_32
        :pswitch_33
        :pswitch_34
        :pswitch_35
        :pswitch_36
        :pswitch_37
        :pswitch_38
        :pswitch_39
        :pswitch_3a
        :pswitch_3b
        :pswitch_3c
        :pswitch_3d
        :pswitch_3e
        :pswitch_3f
        :pswitch_40
        :pswitch_41
        :pswitch_42
        :pswitch_43
        :pswitch_44
        :pswitch_45
    .end packed-switch
.end method

.method public blendMode(Ljavafx/scene/effect/BlendMode;)Ljavafx/scene/NodeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/effect/BlendMode;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/effect/BlendMode;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->blendMode:Ljavafx/scene/effect/BlendMode;

    .line 130
    move-object v2, v0

    const/4 v3, 0x0

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 131
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public cache(Z)Ljavafx/scene/NodeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/NodeBuilder;->cache:Z

    .line 141
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 142
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public cacheHint(Ljavafx/scene/CacheHint;)Ljavafx/scene/NodeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/CacheHint;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/CacheHint;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->cacheHint:Ljavafx/scene/CacheHint;

    .line 152
    move-object v2, v0

    const/4 v3, 0x2

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 153
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public clip(Ljavafx/scene/Node;)Ljavafx/scene/NodeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Node;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->clip:Ljavafx/scene/Node;

    .line 163
    move-object v2, v0

    const/4 v3, 0x3

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 164
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public cursor(Ljavafx/scene/Cursor;)Ljavafx/scene/NodeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/Cursor;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 173
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/Cursor;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->cursor:Ljavafx/scene/Cursor;

    .line 174
    move-object v2, v0

    const/4 v3, 0x4

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 175
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public depthTest(Ljavafx/scene/DepthTest;)Ljavafx/scene/NodeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/DepthTest;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 184
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/DepthTest;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->depthTest:Ljavafx/scene/DepthTest;

    .line 185
    move-object v2, v0

    const/4 v3, 0x5

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 186
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public disable(Z)Ljavafx/scene/NodeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 195
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/NodeBuilder;->disable:Z

    .line 196
    move-object v2, v0

    const/4 v3, 0x6

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 197
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public effect(Ljavafx/scene/effect/Effect;)Ljavafx/scene/NodeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/effect/Effect;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 206
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->effect:Ljavafx/scene/effect/Effect;

    .line 207
    move-object v2, v0

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 208
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public eventDispatcher(Ljavafx/event/EventDispatcher;)Ljavafx/scene/NodeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventDispatcher;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 217
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventDispatcher;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->eventDispatcher:Ljavafx/event/EventDispatcher;

    .line 218
    move-object v2, v0

    const/16 v3, 0x8

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 219
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public focusTraversable(Z)Ljavafx/scene/NodeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 228
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/NodeBuilder;->focusTraversable:Z

    .line 229
    move-object v2, v0

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 230
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public id(Ljava/lang/String;)Ljavafx/scene/NodeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->id:Ljava/lang/String;

    .line 240
    move-object v2, v0

    const/16 v3, 0xa

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 241
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public inputMethodRequests(Ljavafx/scene/input/InputMethodRequests;)Ljavafx/scene/NodeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/input/InputMethodRequests;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 250
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/input/InputMethodRequests;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->inputMethodRequests:Ljavafx/scene/input/InputMethodRequests;

    .line 251
    move-object v2, v0

    const/16 v3, 0xb

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 252
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public layoutX(D)Ljavafx/scene/NodeBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/NodeBuilder;->layoutX:D

    .line 262
    move-object v3, v0

    const/16 v4, 0xc

    invoke-direct {v3, v4}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 263
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public layoutY(D)Ljavafx/scene/NodeBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/NodeBuilder;->layoutY:D

    .line 273
    move-object v3, v0

    const/16 v4, 0xd

    invoke-direct {v3, v4}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 274
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public managed(Z)Ljavafx/scene/NodeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 283
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/NodeBuilder;->managed:Z

    .line 284
    move-object v2, v0

    const/16 v3, 0xe

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 285
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public mouseTransparent(Z)Ljavafx/scene/NodeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/NodeBuilder;->mouseTransparent:Z

    .line 295
    move-object v2, v0

    const/16 v3, 0xf

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 296
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onContextMenuRequested(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 306
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ContextMenuEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onContextMenuRequested:Ljavafx/event/EventHandler;

    .line 307
    move-object v2, v0

    const/16 v3, 0x10

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 308
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onDragDetected(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 317
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onDragDetected:Ljavafx/event/EventHandler;

    .line 318
    move-object v2, v0

    const/16 v3, 0x11

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 319
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onDragDone(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 328
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/DragEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onDragDone:Ljavafx/event/EventHandler;

    .line 329
    move-object v2, v0

    const/16 v3, 0x12

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 330
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onDragDropped(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 339
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/DragEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onDragDropped:Ljavafx/event/EventHandler;

    .line 340
    move-object v2, v0

    const/16 v3, 0x13

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 341
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onDragEntered(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 350
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/DragEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onDragEntered:Ljavafx/event/EventHandler;

    .line 351
    move-object v2, v0

    const/16 v3, 0x14

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 352
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onDragExited(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 361
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/DragEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onDragExited:Ljavafx/event/EventHandler;

    .line 362
    move-object v2, v0

    const/16 v3, 0x15

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 363
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onDragOver(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 372
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/DragEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onDragOver:Ljavafx/event/EventHandler;

    .line 373
    move-object v2, v0

    const/16 v3, 0x16

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 374
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onInputMethodTextChanged(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 383
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/InputMethodEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onInputMethodTextChanged:Ljavafx/event/EventHandler;

    .line 384
    move-object v2, v0

    const/16 v3, 0x17

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 385
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onKeyPressed(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 394
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/KeyEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onKeyPressed:Ljavafx/event/EventHandler;

    .line 395
    move-object v2, v0

    const/16 v3, 0x18

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 396
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onKeyReleased(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 405
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/KeyEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onKeyReleased:Ljavafx/event/EventHandler;

    .line 406
    move-object v2, v0

    const/16 v3, 0x19

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 407
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onKeyTyped(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 416
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/KeyEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onKeyTyped:Ljavafx/event/EventHandler;

    .line 417
    move-object v2, v0

    const/16 v3, 0x1a

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 418
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onMouseClicked(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 427
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onMouseClicked:Ljavafx/event/EventHandler;

    .line 428
    move-object v2, v0

    const/16 v3, 0x1b

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 429
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onMouseDragEntered(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 439
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseDragEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onMouseDragEntered:Ljavafx/event/EventHandler;

    .line 440
    move-object v2, v0

    const/16 v3, 0x1c

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 441
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onMouseDragExited(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 451
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseDragEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onMouseDragExited:Ljavafx/event/EventHandler;

    .line 452
    move-object v2, v0

    const/16 v3, 0x1d

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 453
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onMouseDragOver(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 474
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseDragEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onMouseDragOver:Ljavafx/event/EventHandler;

    .line 475
    move-object v2, v0

    const/16 v3, 0x1f

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 476
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onMouseDragReleased(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 486
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseDragEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onMouseDragReleased:Ljavafx/event/EventHandler;

    .line 487
    move-object v2, v0

    const/16 v3, 0x20

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 488
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onMouseDragged(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 462
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onMouseDragged:Ljavafx/event/EventHandler;

    .line 463
    move-object v2, v0

    const/16 v3, 0x1e

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 464
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onMouseEntered(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 497
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onMouseEntered:Ljavafx/event/EventHandler;

    .line 498
    move-object v2, v0

    const/16 v3, 0x21

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 499
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onMouseExited(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 508
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onMouseExited:Ljavafx/event/EventHandler;

    .line 509
    move-object v2, v0

    const/16 v3, 0x22

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 510
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onMouseMoved(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 519
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onMouseMoved:Ljavafx/event/EventHandler;

    .line 520
    move-object v2, v0

    const/16 v3, 0x23

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 521
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onMousePressed(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 530
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onMousePressed:Ljavafx/event/EventHandler;

    .line 531
    move-object v2, v0

    const/16 v3, 0x24

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 532
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onMouseReleased(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 541
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onMouseReleased:Ljavafx/event/EventHandler;

    .line 542
    move-object v2, v0

    const/16 v3, 0x25

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 543
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onRotate(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 553
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/RotateEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onRotate:Ljavafx/event/EventHandler;

    .line 554
    move-object v2, v0

    const/16 v3, 0x26

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 555
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onRotationFinished(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 565
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/RotateEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onRotationFinished:Ljavafx/event/EventHandler;

    .line 566
    move-object v2, v0

    const/16 v3, 0x27

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 567
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onRotationStarted(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 577
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/RotateEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onRotationStarted:Ljavafx/event/EventHandler;

    .line 578
    move-object v2, v0

    const/16 v3, 0x28

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 579
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onScroll(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 588
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ScrollEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onScroll:Ljavafx/event/EventHandler;

    .line 589
    move-object v2, v0

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 590
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onScrollFinished(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 600
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ScrollEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onScrollFinished:Ljavafx/event/EventHandler;

    .line 601
    move-object v2, v0

    const/16 v3, 0x2a

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 602
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onScrollStarted(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 612
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ScrollEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onScrollStarted:Ljavafx/event/EventHandler;

    .line 613
    move-object v2, v0

    const/16 v3, 0x2b

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 614
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onSwipeDown(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 624
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/SwipeEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onSwipeDown:Ljavafx/event/EventHandler;

    .line 625
    move-object v2, v0

    const/16 v3, 0x2c

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 626
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onSwipeLeft(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 636
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/SwipeEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onSwipeLeft:Ljavafx/event/EventHandler;

    .line 637
    move-object v2, v0

    const/16 v3, 0x2d

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 638
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onSwipeRight(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 648
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/SwipeEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onSwipeRight:Ljavafx/event/EventHandler;

    .line 649
    move-object v2, v0

    const/16 v3, 0x2e

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 650
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onSwipeUp(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 660
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/SwipeEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onSwipeUp:Ljavafx/event/EventHandler;

    .line 661
    move-object v2, v0

    const/16 v3, 0x2f

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 662
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onTouchMoved(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 672
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/TouchEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onTouchMoved:Ljavafx/event/EventHandler;

    .line 673
    move-object v2, v0

    const/16 v3, 0x30

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 674
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onTouchPressed(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 684
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/TouchEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onTouchPressed:Ljavafx/event/EventHandler;

    .line 685
    move-object v2, v0

    const/16 v3, 0x31

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 686
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onTouchReleased(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 696
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/TouchEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onTouchReleased:Ljavafx/event/EventHandler;

    .line 697
    move-object v2, v0

    const/16 v3, 0x32

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 698
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onTouchStationary(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 708
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/TouchEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onTouchStationary:Ljavafx/event/EventHandler;

    .line 709
    move-object v2, v0

    const/16 v3, 0x33

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 710
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onZoom(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 720
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ZoomEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onZoom:Ljavafx/event/EventHandler;

    .line 721
    move-object v2, v0

    const/16 v3, 0x34

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 722
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onZoomFinished(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 732
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ZoomEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onZoomFinished:Ljavafx/event/EventHandler;

    .line 733
    move-object v2, v0

    const/16 v3, 0x35

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 734
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public onZoomStarted(Ljavafx/event/EventHandler;)Ljavafx/scene/NodeBuilder;
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
    .line 744
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ZoomEvent;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->onZoomStarted:Ljavafx/event/EventHandler;

    .line 745
    move-object v2, v0

    const/16 v3, 0x36

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 746
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public opacity(D)Ljavafx/scene/NodeBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 755
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/NodeBuilder;->opacity:D

    .line 756
    move-object v3, v0

    const/16 v4, 0x37

    invoke-direct {v3, v4}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 757
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public pickOnBounds(Z)Ljavafx/scene/NodeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 766
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/NodeBuilder;->pickOnBounds:Z

    .line 767
    move-object v2, v0

    const/16 v3, 0x38

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 768
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public rotate(D)Ljavafx/scene/NodeBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 777
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/NodeBuilder;->rotate:D

    .line 778
    move-object v3, v0

    const/16 v4, 0x39

    invoke-direct {v3, v4}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 779
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public rotationAxis(Ljavafx/geometry/Point3D;)Ljavafx/scene/NodeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/geometry/Point3D;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 788
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljavafx/geometry/Point3D;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->rotationAxis:Ljavafx/geometry/Point3D;

    .line 789
    move-object v2, v0

    const/16 v3, 0x3a

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 790
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public scaleX(D)Ljavafx/scene/NodeBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 799
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/NodeBuilder;->scaleX:D

    .line 800
    move-object v3, v0

    const/16 v4, 0x3b

    invoke-direct {v3, v4}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 801
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public scaleY(D)Ljavafx/scene/NodeBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 810
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/NodeBuilder;->scaleY:D

    .line 811
    move-object v3, v0

    const/16 v4, 0x3c

    invoke-direct {v3, v4}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 812
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public scaleZ(D)Ljavafx/scene/NodeBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 821
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/NodeBuilder;->scaleZ:D

    .line 822
    move-object v3, v0

    const/16 v4, 0x3d

    invoke-direct {v3, v4}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 823
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public style(Ljava/lang/String;)Ljavafx/scene/NodeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 832
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->style:Ljava/lang/String;

    .line 833
    move-object v2, v0

    const/16 v3, 0x3e

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 834
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public styleClass(Ljava/util/Collection;)Ljavafx/scene/NodeBuilder;
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
    .line 843
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljava/lang/String;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->styleClass:Ljava/util/Collection;

    .line 844
    move-object v2, v0

    const/16 v3, 0x3f

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 845
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public varargs styleClass([Ljava/lang/String;)Ljavafx/scene/NodeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 852
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/NodeBuilder;->styleClass(Ljava/util/Collection;)Ljavafx/scene/NodeBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public transforms(Ljava/util/Collection;)Ljavafx/scene/NodeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<+",
            "Ljavafx/scene/transform/Transform;",
            ">;)TB;"
        }
    .end annotation

    .prologue
    .line 861
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/util/Collection;, "Ljava/util/Collection<+Ljavafx/scene/transform/Transform;>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->transforms:Ljava/util/Collection;

    .line 862
    move-object v2, v0

    const/16 v3, 0x40

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 863
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public varargs transforms([Ljavafx/scene/transform/Transform;)Ljavafx/scene/NodeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "([",
            "Ljavafx/scene/transform/Transform;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 870
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":[Ljavafx/scene/transform/Transform;
    move-object v2, v0

    move-object v3, v1

    invoke-static {v3}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljavafx/scene/NodeBuilder;->transforms(Ljava/util/Collection;)Ljavafx/scene/NodeBuilder;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public translateX(D)Ljavafx/scene/NodeBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 879
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/NodeBuilder;->translateX:D

    .line 880
    move-object v3, v0

    const/16 v4, 0x41

    invoke-direct {v3, v4}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 881
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public translateY(D)Ljavafx/scene/NodeBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 890
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/NodeBuilder;->translateY:D

    .line 891
    move-object v3, v0

    const/16 v4, 0x42

    invoke-direct {v3, v4}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 892
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public translateZ(D)Ljavafx/scene/NodeBuilder;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(D)TB;"
        }
    .end annotation

    .prologue
    .line 901
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/NodeBuilder;->translateZ:D

    .line 902
    move-object v3, v0

    const/16 v4, 0x43

    invoke-direct {v3, v4}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 903
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public userData(Ljava/lang/Object;)Ljavafx/scene/NodeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Object;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 912
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/Object;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/NodeBuilder;->userData:Ljava/lang/Object;

    .line 913
    move-object v2, v0

    const/16 v3, 0x44

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 914
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method

.method public visible(Z)Ljavafx/scene/NodeBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)TB;"
        }
    .end annotation

    .prologue
    .line 923
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    move v1, p1

    .local v1, "x":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/NodeBuilder;->visible:Z

    .line 924
    move-object v2, v0

    const/16 v3, 0x45

    invoke-direct {v2, v3}, Ljavafx/scene/NodeBuilder;->__set(I)V

    .line 925
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/NodeBuilder;, "Ljavafx/scene/NodeBuilder<TB;>;"
    return-object v0
.end method
