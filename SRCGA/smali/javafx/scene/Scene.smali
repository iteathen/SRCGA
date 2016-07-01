.class public Ljavafx/scene/Scene;
.super Ljava/lang/Object;
.source "Scene.java"

# interfaces
.implements Ljavafx/event/EventTarget;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/Scene$EffectiveOrientationProperty;,
        Ljavafx/scene/Scene$TargetWrapper;,
        Ljavafx/scene/Scene$TouchMap;,
        Ljavafx/scene/Scene$InputMethodRequestsDelegate;,
        Ljavafx/scene/Scene$KeyHandler;,
        Ljavafx/scene/Scene$MouseHandler;,
        Ljavafx/scene/Scene$ClickGenerator;,
        Ljavafx/scene/Scene$ClickCounter;,
        Ljavafx/scene/Scene$DragSourceListener;,
        Ljavafx/scene/Scene$DragDetectedState;,
        Ljavafx/scene/Scene$DnDGesture;,
        Ljavafx/scene/Scene$DragGestureListener;,
        Ljavafx/scene/Scene$DropTargetListener;,
        Ljavafx/scene/Scene$ScenePeerPaintListener;,
        Ljavafx/scene/Scene$ScenePeerListener;,
        Ljavafx/scene/Scene$ScenePulseListener;,
        Ljavafx/scene/Scene$DirtyBits;,
        Ljavafx/scene/Scene$TouchGesture;
    }
.end annotation

.annotation runtime Ljavafx/beans/DefaultProperty;
    value = "root"
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final MIN_DIRTY_CAPACITY:I = 0x1e

.field private static final PLATFORM_DRAG_GESTURE_INITIATION:Z

.field private static final USER_DATA_KEY:Ljava/lang/Object;

.field private static allowPGAccess:Z

.field private static final defaultNodeOrientation:Ljavafx/geometry/NodeOrientation;

.field private static inMousePick:Z

.field private static inSynchronizer:Z

.field private static paused:Z

.field private static pgAccessCount:I

.field private static snapshotPulseListener:Lcom/sun/javafx/tk/TKPulseListener;

.field private static snapshotRunnableList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static snapshotRunnableListA:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static snapshotRunnableListB:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation
.end field

.field private static final trackerMonitor:Ljava/lang/Object;


# instance fields
.field final acc:Ljava/security/AccessControlContext;

.field private accMap:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/scene/Node;",
            "Lcom/sun/glass/ui/Accessible;",
            ">;"
        }
    .end annotation
.end field

.field private accessible:Lcom/sun/glass/ui/Accessible;

.field private final antiAliasing:Ljavafx/scene/SceneAntialiasing;

.field private camera:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Camera;",
            ">;"
        }
    .end annotation
.end field

.field private clickGenerator:Ljavafx/scene/Scene$ClickGenerator;

.field private cursor:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Cursor;",
            ">;"
        }
    .end annotation
.end field

.field private cursorScenePos:Ljavafx/geometry/Point2D;

.field private cursorScreenPos:Ljavafx/geometry/Point2D;

.field private defaultCamera:Ljavafx/scene/Camera;

.field private final depthBuffer:Z

.field private dirtyBits:I

.field private dirtyNodes:[Ljavafx/scene/Node;

.field private dirtyNodesSize:I

.field dndGesture:Ljavafx/scene/Scene$DnDGesture;

.field dragGestureListener:Ljavafx/scene/Scene$DragGestureListener;

.field private effectiveNodeOrientation:Ljavafx/geometry/NodeOrientation;

.field private effectiveNodeOrientationProperty:Ljavafx/scene/Scene$EffectiveOrientationProperty;

.field private eventDispatcher:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventDispatcher;",
            ">;"
        }
    .end annotation
.end field

.field private fill:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation
.end field

.field private focusDirty:Z

.field private focusOwner:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

.field private heightSetByUser:D

.field private impl_peer:Lcom/sun/javafx/tk/TKScene;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private internalEventDispatcher:Lcom/sun/javafx/scene/SceneEventDispatcher;

.field private keyHandler:Ljavafx/scene/Scene$KeyHandler;

.field private lights:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/LightBase;",
            ">;"
        }
    .end annotation
.end field

.field private mouseHandler:Ljavafx/scene/Scene$MouseHandler;

.field private nextTouchEvent:Ljavafx/scene/input/TouchEvent;

.field private nodeOrientation:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/NodeOrientation;",
            ">;"
        }
    .end annotation
.end field

.field private oldFocusOwner:Ljavafx/scene/Node;

.field oldRoot:Ljavafx/scene/Parent;

.field private onContextMenuRequested:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ContextMenuEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onDragDetected:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onDragDone:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onDragDropped:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onDragEntered:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onDragExited:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onDragOver:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onInputMethodTextChanged:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/InputMethodEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onKeyPressed:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/KeyEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onKeyReleased:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/KeyEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onKeyTyped:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/KeyEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onMouseClicked:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onMouseDragEntered:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onMouseDragExited:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onMouseDragOver:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onMouseDragReleased:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onMouseDragged:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onMouseEntered:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onMouseExited:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onMouseMoved:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onMousePressed:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onMouseReleased:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onRotate:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/RotateEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onRotationFinished:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/RotateEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onRotationStarted:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/RotateEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onScroll:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onScrollFinished:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onScrollStarted:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onSwipeDown:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onSwipeLeft:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onSwipeRight:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onSwipeUp:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onTouchMoved:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onTouchPressed:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onTouchReleased:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onTouchStationary:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onZoom:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ZoomEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onZoomFinished:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ZoomEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private onZoomStarted:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ZoomEvent;",
            ">;>;"
        }
    .end annotation
.end field

.field private properties:Ljavafx/collections/ObservableMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private root:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Parent;",
            ">;"
        }
    .end annotation
.end field

.field private final rotateGesture:Ljavafx/scene/Scene$TouchGesture;

.field scenePulseListener:Ljavafx/scene/Scene$ScenePulseListener;

.field private final scrollGesture:Ljavafx/scene/Scene$TouchGesture;

.field private sizeInitialized:Z

.field private final stylesheets:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final swipeGesture:Ljavafx/scene/Scene$TouchGesture;

.field testPulseListener:Ljava/lang/Runnable;

.field private tmpTargetWrapper:Ljavafx/scene/Scene$TargetWrapper;

.field private touchEventSetId:I

.field private touchMap:Ljavafx/scene/Scene$TouchMap;

.field private touchPointIndex:I

.field private touchPoints:[Ljavafx/scene/input/TouchPoint;

.field private touchTargets:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljavafx/event/EventTarget;",
            ">;"
        }
    .end annotation
.end field

.field private tracker:Lcom/sun/javafx/perf/PerformanceTracker;

.field private transientFocusContainer:Ljavafx/scene/Node;

.field private traversalEngine:Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;

.field private userAgentStylesheet:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

.field private widthSetByUser:D

.field private window:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/stage/Window;",
            ">;"
        }
    .end annotation
.end field

.field private x:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

.field private y:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

.field private final zoomGesture:Ljavafx/scene/Scene$TouchGesture;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 158
    const-class v0, Ljavafx/scene/Scene;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavafx/scene/Scene;->$assertionsDisabled:Z

    .line 353
    new-instance v0, Ljavafx/scene/Scene$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/Scene$1;-><init>()V

    invoke-static {v0}, Lcom/sun/javafx/perf/PerformanceTracker;->setSceneAccessor(Lcom/sun/javafx/perf/PerformanceTracker$SceneAccessor;)V

    .line 365
    new-instance v0, Ljavafx/scene/Scene$2;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/Scene$2;-><init>()V

    invoke-static {v0}, Lcom/sun/javafx/robot/impl/FXRobotHelper;->setSceneAccessor(Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotSceneAccessor;)V

    .line 382
    new-instance v0, Ljavafx/scene/Scene$3;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/Scene$3;-><init>()V

    invoke-static {v0}, Lcom/sun/javafx/scene/SceneHelper;->setSceneAccessor(Lcom/sun/javafx/scene/SceneHelper$SceneAccessor;)V

    .line 436
    const/4 v0, 0x0

    sput-boolean v0, Ljavafx/scene/Scene;->inSynchronizer:Z

    .line 437
    const/4 v0, 0x0

    sput-boolean v0, Ljavafx/scene/Scene;->inMousePick:Z

    .line 438
    const/4 v0, 0x0

    sput-boolean v0, Ljavafx/scene/Scene;->allowPGAccess:Z

    .line 439
    const/4 v0, 0x0

    sput v0, Ljavafx/scene/Scene;->pgAccessCount:I

    .line 442
    const/4 v0, 0x0

    sput-boolean v0, Ljavafx/scene/Scene;->paused:Z

    .line 1274
    const/4 v0, 0x0

    sput-object v0, Ljavafx/scene/Scene;->snapshotPulseListener:Lcom/sun/javafx/tk/TKPulseListener;

    .line 1724
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljavafx/scene/Scene;->trackerMonitor:Ljava/lang/Object;

    .line 6065
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljavafx/scene/Scene;->USER_DATA_KEY:Ljava/lang/Object;

    .line 6129
    invoke-static {}, Ljavafx/scene/Scene$$Lambda$5;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    .line 6130
    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_1

    sget-object v0, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    :goto_1
    sput-object v0, Ljavafx/scene/Scene;->defaultNodeOrientation:Ljavafx/geometry/NodeOrientation;

    .line 6129
    return-void

    .line 158
    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 6130
    :cond_1
    sget-object v0, Ljavafx/geometry/NodeOrientation;->INHERIT:Ljavafx/geometry/NodeOrientation;

    goto :goto_1
.end method

.method public constructor <init>(Ljavafx/scene/Parent;)V
    .locals 11
    .param p1    # Ljavafx/scene/Parent;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "root"
        .end annotation
    .end param

    .prologue
    .line 194
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "root":Ljavafx/scene/Parent;
    move-object v2, v0

    move-object v3, v1

    const-wide/high16 v4, -0x4010000000000000L    # -1.0

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    sget-object v8, Ljavafx/scene/paint/Color;->WHITE:Ljavafx/scene/paint/Color;

    const/4 v9, 0x0

    sget-object v10, Ljavafx/scene/SceneAntialiasing;->DISABLED:Ljavafx/scene/SceneAntialiasing;

    invoke-direct/range {v2 .. v10}, Ljavafx/scene/Scene;-><init>(Ljavafx/scene/Parent;DDLjavafx/scene/paint/Paint;ZLjavafx/scene/SceneAntialiasing;)V

    .line 195
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/Parent;DD)V
    .locals 16
    .param p1    # Ljavafx/scene/Parent;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "root"
        .end annotation
    .end param
    .param p2    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "width"
        .end annotation
    .end param
    .param p4    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "height"
        .end annotation
    .end param

    .prologue
    .line 223
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object/from16 v1, p1

    .local v1, "root":Ljavafx/scene/Parent;
    move-wide/from16 v2, p2

    .local v2, "width":D
    move-wide/from16 v4, p4

    .local v4, "height":D
    move-object v6, v0

    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    sget-object v12, Ljavafx/scene/paint/Color;->WHITE:Ljavafx/scene/paint/Color;

    const/4 v13, 0x0

    sget-object v14, Ljavafx/scene/SceneAntialiasing;->DISABLED:Ljavafx/scene/SceneAntialiasing;

    invoke-direct/range {v6 .. v14}, Ljavafx/scene/Scene;-><init>(Ljavafx/scene/Parent;DDLjavafx/scene/paint/Paint;ZLjavafx/scene/SceneAntialiasing;)V

    .line 224
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/Parent;DDLjavafx/scene/paint/Paint;)V
    .locals 16
    .param p1    # Ljavafx/scene/Parent;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "root"
        .end annotation
    .end param
    .param p2    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "width"
        .end annotation
    .end param
    .param p4    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "height"
        .end annotation
    .end param
    .param p6    # Ljavafx/scene/paint/Paint;
        .annotation runtime Ljavafx/beans/NamedArg;
            defaultValue = "WHITE"
            value = "fill"
        .end annotation
    .end param

    .prologue
    .line 250
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object/from16 v1, p1

    .local v1, "root":Ljavafx/scene/Parent;
    move-wide/from16 v2, p2

    .local v2, "width":D
    move-wide/from16 v4, p4

    .local v4, "height":D
    move-object/from16 v6, p6

    .local v6, "fill":Ljavafx/scene/paint/Paint;
    move-object v7, v0

    move-object v8, v1

    move-wide v9, v2

    move-wide v11, v4

    move-object v13, v6

    const/4 v14, 0x0

    sget-object v15, Ljavafx/scene/SceneAntialiasing;->DISABLED:Ljavafx/scene/SceneAntialiasing;

    invoke-direct/range {v7 .. v15}, Ljavafx/scene/Scene;-><init>(Ljavafx/scene/Parent;DDLjavafx/scene/paint/Paint;ZLjavafx/scene/SceneAntialiasing;)V

    .line 251
    return-void
.end method

.method private constructor <init>(Ljavafx/scene/Parent;DDLjavafx/scene/paint/Paint;ZLjavafx/scene/SceneAntialiasing;)V
    .locals 18

    .prologue
    .line 332
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Scene;
    move-object/from16 v2, p1

    .local v2, "root":Ljavafx/scene/Parent;
    move-wide/from16 v3, p2

    .local v3, "width":D
    move-wide/from16 v5, p4

    .local v5, "height":D
    move-object/from16 v7, p6

    .local v7, "fill":Ljavafx/scene/paint/Paint;
    move/from16 v8, p7

    .local v8, "depthBuffer":Z
    move-object/from16 v9, p8

    .local v9, "antiAliasing":Ljavafx/scene/SceneAntialiasing;
    move-object v11, v1

    invoke-direct {v11}, Ljava/lang/Object;-><init>()V

    .line 161
    move-object v11, v1

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    iput-wide v12, v11, Ljavafx/scene/Scene;->widthSetByUser:D

    .line 162
    move-object v11, v1

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    iput-wide v12, v11, Ljavafx/scene/Scene;->heightSetByUser:D

    .line 163
    move-object v11, v1

    const/4 v12, 0x0

    iput-boolean v12, v11, Ljavafx/scene/Scene;->sizeInitialized:Z

    .line 169
    move-object v11, v1

    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v12

    iput-object v12, v11, Ljavafx/scene/Scene;->acc:Ljava/security/AccessControlContext;

    .line 579
    move-object v11, v1

    new-instance v12, Ljavafx/scene/Scene$ScenePulseListener;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    invoke-direct {v13, v14}, Ljavafx/scene/Scene$ScenePulseListener;-><init>(Ljavafx/scene/Scene;)V

    iput-object v12, v11, Ljavafx/scene/Scene;->scenePulseListener:Ljavafx/scene/Scene$ScenePulseListener;

    .line 761
    move-object v11, v1

    const/4 v12, 0x0

    iput-object v12, v11, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    .line 910
    move-object v11, v1

    new-instance v12, Ljavafx/scene/Scene$TargetWrapper;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Ljavafx/scene/Scene$TargetWrapper;-><init>(Ljavafx/scene/Scene$1;)V

    iput-object v12, v11, Ljavafx/scene/Scene;->tmpTargetWrapper:Ljavafx/scene/Scene$TargetWrapper;

    .line 1489
    move-object v11, v1

    new-instance v12, Ljavafx/scene/Scene$11;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    invoke-direct {v13, v14}, Ljavafx/scene/Scene$11;-><init>(Ljavafx/scene/Scene;)V

    iput-object v12, v11, Ljavafx/scene/Scene;->stylesheets:Ljavafx/collections/ObservableList;

    .line 1545
    move-object v11, v1

    const/4 v12, 0x0

    iput-object v12, v11, Ljavafx/scene/Scene;->userAgentStylesheet:Ljavafx/beans/property/ObjectProperty;

    .line 1741
    move-object v11, v1

    new-instance v12, Ljavafx/scene/Scene$TouchGesture;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Ljavafx/scene/Scene$TouchGesture;-><init>(Ljavafx/scene/Scene$1;)V

    iput-object v12, v11, Ljavafx/scene/Scene;->scrollGesture:Ljavafx/scene/Scene$TouchGesture;

    .line 1742
    move-object v11, v1

    new-instance v12, Ljavafx/scene/Scene$TouchGesture;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Ljavafx/scene/Scene$TouchGesture;-><init>(Ljavafx/scene/Scene$1;)V

    iput-object v12, v11, Ljavafx/scene/Scene;->zoomGesture:Ljavafx/scene/Scene$TouchGesture;

    .line 1743
    move-object v11, v1

    new-instance v12, Ljavafx/scene/Scene$TouchGesture;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Ljavafx/scene/Scene$TouchGesture;-><init>(Ljavafx/scene/Scene$1;)V

    iput-object v12, v11, Ljavafx/scene/Scene;->rotateGesture:Ljavafx/scene/Scene$TouchGesture;

    .line 1744
    move-object v11, v1

    new-instance v12, Ljavafx/scene/Scene$TouchGesture;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Ljavafx/scene/Scene$TouchGesture;-><init>(Ljavafx/scene/Scene$1;)V

    iput-object v12, v11, Ljavafx/scene/Scene;->swipeGesture:Ljavafx/scene/Scene$TouchGesture;

    .line 1747
    move-object v11, v1

    new-instance v12, Ljavafx/scene/Scene$TouchMap;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    const/4 v14, 0x0

    invoke-direct {v13, v14}, Ljavafx/scene/Scene$TouchMap;-><init>(Ljavafx/scene/Scene$1;)V

    iput-object v12, v11, Ljavafx/scene/Scene;->touchMap:Ljavafx/scene/Scene$TouchMap;

    .line 1748
    move-object v11, v1

    const/4 v12, 0x0

    iput-object v12, v11, Ljavafx/scene/Scene;->nextTouchEvent:Ljavafx/scene/input/TouchEvent;

    .line 1749
    move-object v11, v1

    const/4 v12, 0x0

    iput-object v12, v11, Ljavafx/scene/Scene;->touchPoints:[Ljavafx/scene/input/TouchPoint;

    .line 1750
    move-object v11, v1

    const/4 v12, 0x0

    iput v12, v11, Ljavafx/scene/Scene;->touchEventSetId:I

    .line 1751
    move-object v11, v1

    const/4 v12, 0x0

    iput v12, v11, Ljavafx/scene/Scene;->touchPointIndex:I

    .line 1752
    move-object v11, v1

    new-instance v12, Ljava/util/HashMap;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V

    iput-object v12, v11, Ljavafx/scene/Scene;->touchTargets:Ljava/util/Map;

    .line 1975
    move-object v11, v1

    const/4 v12, 0x0

    iput-object v12, v11, Ljavafx/scene/Scene;->keyHandler:Ljavafx/scene/Scene$KeyHandler;

    .line 1987
    move-object v11, v1

    const/4 v12, 0x1

    iput-boolean v12, v11, Ljavafx/scene/Scene;->focusDirty:Z

    .line 2000
    move-object v11, v1

    new-instance v12, Lcom/sun/javafx/scene/traversal/SceneTraversalEngine;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    invoke-direct {v13, v14}, Lcom/sun/javafx/scene/traversal/SceneTraversalEngine;-><init>(Ljavafx/scene/Scene;)V

    iput-object v12, v11, Ljavafx/scene/Scene;->traversalEngine:Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;

    .line 2059
    move-object v11, v1

    new-instance v12, Ljavafx/scene/Scene$13;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    move-object v14, v1

    move-object v15, v1

    const-string v16, "focusOwner"

    invoke-direct/range {v13 .. v16}, Ljavafx/scene/Scene$13;-><init>(Ljavafx/scene/Scene;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v12, v11, Ljavafx/scene/Scene;->focusOwner:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 2155
    move-object v11, v1

    const/4 v12, 0x0

    iput-object v12, v11, Ljavafx/scene/Scene;->testPulseListener:Ljava/lang/Runnable;

    .line 2211
    move-object v11, v1

    new-instance v12, Ljava/util/ArrayList;

    move-object/from16 v17, v12

    move-object/from16 v12, v17

    move-object/from16 v13, v17

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    iput-object v12, v11, Ljavafx/scene/Scene;->lights:Ljava/util/List;

    .line 333
    move-object v11, v1

    move v12, v8

    iput-boolean v12, v11, Ljavafx/scene/Scene;->depthBuffer:Z

    .line 334
    move-object v11, v1

    move-object v12, v9

    iput-object v12, v11, Ljavafx/scene/Scene;->antiAliasing:Ljavafx/scene/SceneAntialiasing;

    .line 335
    move-object v11, v2

    if-nez v11, :cond_0

    .line 336
    new-instance v11, Ljava/lang/NullPointerException;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    const-string v13, "Root cannot be null"

    invoke-direct {v12, v13}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 339
    :cond_0
    move v11, v8

    if-nez v11, :cond_1

    move-object v11, v9

    if-eqz v11, :cond_2

    move-object v11, v9

    sget-object v12, Ljavafx/scene/SceneAntialiasing;->DISABLED:Ljavafx/scene/SceneAntialiasing;

    if-eq v11, v12, :cond_2

    :cond_1
    sget-object v11, Ljavafx/application/ConditionalFeature;->SCENE3D:Ljavafx/application/ConditionalFeature;

    .line 340
    invoke-static {v11}, Ljavafx/application/Platform;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 341
    const-class v11, Ljavafx/scene/Scene;

    invoke-virtual {v11}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v11

    move-object v10, v11

    .line 342
    .local v10, "logname":Ljava/lang/String;
    move-object v11, v10

    invoke-static {v11}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v11

    const-string v12, "System can\'t support ConditionalFeature.SCENE3D"

    invoke-virtual {v11, v12}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 346
    .end local v10    # "logname":Ljava/lang/String;
    :cond_2
    move-object v11, v1

    invoke-direct {v11}, Ljavafx/scene/Scene;->init()V

    .line 347
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v11, v12}, Ljavafx/scene/Scene;->setRoot(Ljavafx/scene/Parent;)V

    .line 348
    move-object v11, v1

    move-wide v12, v3

    move-wide v14, v5

    invoke-direct {v11, v12, v13, v14, v15}, Ljavafx/scene/Scene;->init(DD)V

    .line 349
    move-object v11, v1

    move-object v12, v7

    invoke-virtual {v11, v12}, Ljavafx/scene/Scene;->setFill(Ljavafx/scene/paint/Paint;)V

    .line 350
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/Parent;DDZ)V
    .locals 16
    .param p1    # Ljavafx/scene/Parent;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "root"
        .end annotation
    .end param
    .param p2    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            defaultValue = "-1"
            value = "width"
        .end annotation
    .end param
    .param p4    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            defaultValue = "-1"
            value = "height"
        .end annotation
    .end param
    .param p6    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "depthBuffer"
        .end annotation
    .end param

    .prologue
    .line 279
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object/from16 v1, p1

    .local v1, "root":Ljavafx/scene/Parent;
    move-wide/from16 v2, p2

    .local v2, "width":D
    move-wide/from16 v4, p4

    .local v4, "height":D
    move/from16 v6, p6

    .local v6, "depthBuffer":Z
    move-object v7, v0

    move-object v8, v1

    move-wide v9, v2

    move-wide v11, v4

    sget-object v13, Ljavafx/scene/paint/Color;->WHITE:Ljavafx/scene/paint/Color;

    move v14, v6

    sget-object v15, Ljavafx/scene/SceneAntialiasing;->DISABLED:Ljavafx/scene/SceneAntialiasing;

    invoke-direct/range {v7 .. v15}, Ljavafx/scene/Scene;-><init>(Ljavafx/scene/Parent;DDLjavafx/scene/paint/Paint;ZLjavafx/scene/SceneAntialiasing;)V

    .line 280
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/Parent;DDZLjavafx/scene/SceneAntialiasing;)V
    .locals 18
    .param p1    # Ljavafx/scene/Parent;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "root"
        .end annotation
    .end param
    .param p2    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            defaultValue = "-1"
            value = "width"
        .end annotation
    .end param
    .param p4    # D
        .annotation runtime Ljavafx/beans/NamedArg;
            defaultValue = "-1"
            value = "height"
        .end annotation
    .end param
    .param p6    # Z
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "depthBuffer"
        .end annotation
    .end param
    .param p7    # Ljavafx/scene/SceneAntialiasing;
        .annotation runtime Ljavafx/beans/NamedArg;
            defaultValue = "DISABLED"
            value = "antiAliasing"
        .end annotation
    .end param

    .prologue
    .line 320
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object/from16 v1, p1

    .local v1, "root":Ljavafx/scene/Parent;
    move-wide/from16 v2, p2

    .local v2, "width":D
    move-wide/from16 v4, p4

    .local v4, "height":D
    move/from16 v6, p6

    .local v6, "depthBuffer":Z
    move-object/from16 v7, p7

    .local v7, "antiAliasing":Ljavafx/scene/SceneAntialiasing;
    move-object v9, v0

    move-object v10, v1

    move-wide v11, v2

    move-wide v13, v4

    sget-object v15, Ljavafx/scene/paint/Color;->WHITE:Ljavafx/scene/paint/Color;

    move/from16 v16, v6

    move-object/from16 v17, v7

    invoke-direct/range {v9 .. v17}, Ljavafx/scene/Scene;-><init>(Ljavafx/scene/Parent;DDLjavafx/scene/paint/Paint;ZLjavafx/scene/SceneAntialiasing;)V

    .line 322
    move-object v9, v7

    if-eqz v9, :cond_0

    move-object v9, v7

    sget-object v10, Ljavafx/scene/SceneAntialiasing;->DISABLED:Ljavafx/scene/SceneAntialiasing;

    if-eq v9, v10, :cond_0

    .line 323
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v9

    invoke-virtual {v9}, Lcom/sun/javafx/tk/Toolkit;->isMSAASupported()Z

    move-result v9

    if-nez v9, :cond_0

    .line 325
    const-class v9, Ljavafx/scene/Scene;

    invoke-virtual {v9}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v9

    move-object v8, v9

    .line 326
    .local v8, "logname":Ljava/lang/String;
    move-object v9, v8

    invoke-static {v9}, Lsun/util/logging/PlatformLogger;->getLogger(Ljava/lang/String;)Lsun/util/logging/PlatformLogger;

    move-result-object v9

    const-string v10, "System can\'t support antiAliasing"

    invoke-virtual {v9, v10}, Lsun/util/logging/PlatformLogger;->warning(Ljava/lang/String;)V

    .line 329
    .end local v8    # "logname":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method public constructor <init>(Ljavafx/scene/Parent;Ljavafx/scene/paint/Paint;)V
    .locals 13
    .param p1    # Ljavafx/scene/Parent;
        .annotation runtime Ljavafx/beans/NamedArg;
            value = "root"
        .end annotation
    .end param
    .param p2    # Ljavafx/scene/paint/Paint;
        .annotation runtime Ljavafx/beans/NamedArg;
            defaultValue = "WHITE"
            value = "fill"
        .end annotation
    .end param

    .prologue
    .line 235
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Scene;
    move-object v2, p1

    .local v2, "root":Ljavafx/scene/Parent;
    move-object v3, p2

    .local v3, "fill":Ljavafx/scene/paint/Paint;
    move-object v4, v1

    move-object v5, v2

    const-wide/high16 v6, -0x4010000000000000L    # -1.0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    move-object v10, v3

    const/4 v11, 0x0

    sget-object v12, Ljavafx/scene/SceneAntialiasing;->DISABLED:Ljavafx/scene/SceneAntialiasing;

    invoke-direct/range {v4 .. v12}, Ljavafx/scene/Scene;-><init>(Ljavafx/scene/Parent;DDLjavafx/scene/paint/Paint;ZLjavafx/scene/SceneAntialiasing;)V

    .line 236
    return-void
.end method

.method static synthetic access$000()Ljava/lang/Object;
    .locals 1

    .prologue
    .line 159
    sget-object v0, Ljavafx/scene/Scene;->trackerMonitor:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/Scene;)Lcom/sun/javafx/perf/PerformanceTracker;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->tracker:Lcom/sun/javafx/perf/PerformanceTracker;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$102(Ljavafx/scene/Scene;Lcom/sun/javafx/perf/PerformanceTracker;)Lcom/sun/javafx/perf/PerformanceTracker;
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/perf/PerformanceTracker;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/Scene;->tracker:Lcom/sun/javafx/perf/PerformanceTracker;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$1100(Ljavafx/scene/Scene;Ljavafx/scene/Scene$DirtyBits;)V
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Scene$DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene;->markDirty(Ljavafx/scene/Scene$DirtyBits;)V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchGesture;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->scrollGesture:Ljavafx/scene/Scene$TouchGesture;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$2000(Ljavafx/scene/Scene;)Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->oldFocusOwner:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$2002(Ljavafx/scene/Scene;Ljavafx/scene/Node;)Ljavafx/scene/Node;
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/Scene;->oldFocusOwner:Ljavafx/scene/Node;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$2100(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$KeyHandler;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->keyHandler:Ljavafx/scene/Scene$KeyHandler;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$2300(Ljavafx/scene/Scene;)Lcom/sun/glass/ui/Accessible;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->accessible:Lcom/sun/glass/ui/Accessible;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$2502(Z)Z
    .locals 4

    .prologue
    .line 159
    move v0, p0

    .local v0, "x0":Z
    move v1, v0

    move v3, v1

    move v1, v3

    move v2, v3

    sput-boolean v2, Ljavafx/scene/Scene;->inSynchronizer:Z

    move v0, v1

    .end local v0    # "x0":Z
    return v0
.end method

.method static synthetic access$2600(Ljavafx/scene/Scene;)[Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->dirtyNodes:[Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$2602(Ljavafx/scene/Scene;[Ljavafx/scene/Node;)[Ljavafx/scene/Node;
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "x1":[Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/Scene;->dirtyNodes:[Ljavafx/scene/Node;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$2700(Ljavafx/scene/Scene;)I
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/Scene;->dirtyNodesSize:I

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return v0
.end method

.method static synthetic access$2702(Ljavafx/scene/Scene;I)I
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Ljavafx/scene/Scene;->dirtyNodesSize:I

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return v0
.end method

.method static synthetic access$2800(Ljavafx/scene/Scene;Ljavafx/scene/Scene$DirtyBits;)Z
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Scene$DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene;->isDirty(Ljavafx/scene/Scene$DirtyBits;)Z

    move-result v2

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return v0
.end method

.method static synthetic access$2900(Ljavafx/scene/Scene;)Lcom/sun/javafx/tk/TKScene;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/Scene;Ljavafx/scene/input/GestureEvent;Ljavafx/scene/Scene$TouchGesture;)V
    .locals 6

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/input/GestureEvent;
    move-object v2, p2

    .local v2, "x2":Ljavafx/scene/Scene$TouchGesture;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Scene;->processGestureEvent(Ljavafx/scene/input/GestureEvent;Ljavafx/scene/Scene$TouchGesture;)V

    return-void
.end method

.method static synthetic access$3000(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$MouseHandler;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->mouseHandler:Ljavafx/scene/Scene$MouseHandler;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$3200(Ljavafx/scene/Scene;)V
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene;->clearDirty()V

    return-void
.end method

.method static synthetic access$3300(Ljavafx/scene/Scene;)V
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene;->focusInitial()V

    return-void
.end method

.method static synthetic access$3400(Ljavafx/scene/Scene;Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene;->focusIneligible(Ljavafx/scene/Node;)V

    return-void
.end method

.method static synthetic access$3500(Ljavafx/scene/Scene;)V
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene;->disposeAccessibles()V

    return-void
.end method

.method static synthetic access$3600(Ljavafx/scene/Scene;)V
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene;->doCSSPass()V

    return-void
.end method

.method static synthetic access$3700(Ljavafx/scene/Scene;)Z
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene;->isDirtyEmpty()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return v0
.end method

.method static synthetic access$3800(Ljavafx/scene/Scene;)V
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene;->syncLights()V

    return-void
.end method

.method static synthetic access$4000(Ljavafx/scene/Scene;D)V
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Scene;->setX(D)V

    return-void
.end method

.method static synthetic access$402(Z)Z
    .locals 4

    .prologue
    .line 159
    move v0, p0

    .local v0, "x0":Z
    move v1, v0

    move v3, v1

    move v1, v3

    move v2, v3

    sput-boolean v2, Ljavafx/scene/Scene;->paused:Z

    move v0, v1

    .end local v0    # "x0":Z
    return v0
.end method

.method static synthetic access$4100(Ljavafx/scene/Scene;D)V
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Scene;->setY(D)V

    return-void
.end method

.method static synthetic access$4200(Ljavafx/scene/Scene;D)V
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Scene;->setWidth(D)V

    return-void
.end method

.method static synthetic access$4300(Ljavafx/scene/Scene;D)V
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-wide v1, p1

    .local v1, "x1":D
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Scene;->setHeight(D)V

    return-void
.end method

.method static synthetic access$4400(Ljavafx/scene/Scene;Ljavafx/scene/input/InputMethodEvent;)V
    .locals 4

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/input/InputMethodEvent;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene;->processInputMethodEvent(Ljavafx/scene/input/InputMethodEvent;)V

    return-void
.end method

.method static synthetic access$4500(Ljavafx/scene/Scene;DDDDZ)V
    .locals 21

    .prologue
    .line 159
    move-object/from16 v1, p0

    .local v1, "x0":Ljavafx/scene/Scene;
    move-wide/from16 v2, p1

    .local v2, "x1":D
    move-wide/from16 v4, p3

    .local v4, "x2":D
    move-wide/from16 v6, p5

    .local v6, "x3":D
    move-wide/from16 v8, p7

    .local v8, "x4":D
    move/from16 v10, p9

    .local v10, "x5":Z
    move-object v11, v1

    move-wide v12, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    move/from16 v20, v10

    invoke-direct/range {v11 .. v20}, Ljavafx/scene/Scene;->processMenuEvent(DDDDZ)V

    return-void
.end method

.method static synthetic access$4600(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->cursorScenePos:Ljavafx/geometry/Point2D;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$4602(Ljavafx/scene/Scene;Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "x1":Ljavafx/geometry/Point2D;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/Scene;->cursorScenePos:Ljavafx/geometry/Point2D;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$4700(Ljavafx/scene/Scene;)Ljavafx/geometry/Point2D;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->cursorScreenPos:Ljavafx/geometry/Point2D;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$4702(Ljavafx/scene/Scene;Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "x1":Ljavafx/geometry/Point2D;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/Scene;->cursorScreenPos:Ljavafx/geometry/Point2D;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$4802(Z)Z
    .locals 4

    .prologue
    .line 159
    move v0, p0

    .local v0, "x0":Z
    move v1, v0

    move v3, v1

    move v1, v3

    move v2, v3

    sput-boolean v2, Ljavafx/scene/Scene;->inMousePick:Z

    move v0, v1

    .end local v0    # "x0":Z
    return v0
.end method

.method static synthetic access$4900(Ljavafx/scene/Scene;DD)Ljavafx/scene/input/PickResult;
    .locals 11

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-wide v1, p1

    .local v1, "x1":D
    move-wide v3, p3

    .local v3, "x2":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/Scene;->pick(DD)Ljavafx/scene/input/PickResult;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/Scene;)V
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene;->parentEffectiveOrientationInvalidated()V

    return-void
.end method

.method static synthetic access$5000(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchGesture;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->zoomGesture:Ljavafx/scene/Scene$TouchGesture;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$5100(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchGesture;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->rotateGesture:Ljavafx/scene/Scene$TouchGesture;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$5200(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchGesture;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->swipeGesture:Ljavafx/scene/Scene$TouchGesture;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$5300(Ljavafx/scene/Scene;)Ljavafx/scene/input/TouchEvent;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->nextTouchEvent:Ljavafx/scene/input/TouchEvent;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$5302(Ljavafx/scene/Scene;Ljavafx/scene/input/TouchEvent;)Ljavafx/scene/input/TouchEvent;
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/input/TouchEvent;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/Scene;->nextTouchEvent:Ljavafx/scene/input/TouchEvent;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$5400(Ljavafx/scene/Scene;)[Ljavafx/scene/input/TouchPoint;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->touchPoints:[Ljavafx/scene/input/TouchPoint;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$5402(Ljavafx/scene/Scene;[Ljavafx/scene/input/TouchPoint;)[Ljavafx/scene/input/TouchPoint;
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "x1":[Ljavafx/scene/input/TouchPoint;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/Scene;->touchPoints:[Ljavafx/scene/input/TouchPoint;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$5500(Ljavafx/scene/Scene;)I
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/Scene;->touchPointIndex:I

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return v0
.end method

.method static synthetic access$5502(Ljavafx/scene/Scene;I)I
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Ljavafx/scene/Scene;->touchPointIndex:I

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return v0
.end method

.method static synthetic access$5508(Ljavafx/scene/Scene;)I
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    iget v2, v2, Ljavafx/scene/Scene;->touchPointIndex:I

    move-object v5, v1

    move v6, v2

    move v1, v6

    move-object v2, v5

    move v3, v6

    const/4 v4, 0x1

    add-int/lit8 v3, v3, 0x1

    iput v3, v2, Ljavafx/scene/Scene;->touchPointIndex:I

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return v0
.end method

.method static synthetic access$5600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TouchMap;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->touchMap:Ljavafx/scene/Scene$TouchMap;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$5700(Ljavafx/scene/Scene;)Ljava/util/Map;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->touchTargets:Ljava/util/Map;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$5800(Ljavafx/scene/Scene;Ljavafx/scene/input/TouchEvent;[Ljavafx/scene/input/TouchPoint;)V
    .locals 6

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/input/TouchEvent;
    move-object v2, p2

    .local v2, "x2":[Ljavafx/scene/input/TouchPoint;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Scene;->processTouchEvent(Ljavafx/scene/input/TouchEvent;[Ljavafx/scene/input/TouchPoint;)V

    return-void
.end method

.method static synthetic access$5902(Ljavafx/scene/Scene;I)I
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move v1, p1

    .local v1, "x1":I
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput v4, v3, Ljavafx/scene/Scene;->touchEventSetId:I

    move v0, v2

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return v0
.end method

.method static synthetic access$600(Ljavafx/scene/Scene;)Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->transientFocusContainer:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$602(Ljavafx/scene/Scene;Ljavafx/scene/Node;)Ljavafx/scene/Node;
    .locals 7

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/Scene;->transientFocusContainer:Ljavafx/scene/Node;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$6600(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$TargetWrapper;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->tmpTargetWrapper:Ljavafx/scene/Scene$TargetWrapper;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$6700(Ljavafx/scene/Scene;Ljavafx/scene/Scene$TargetWrapper;DD)V
    .locals 12

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Scene$TargetWrapper;
    move-wide v2, p2

    .local v2, "x2":D
    move-wide/from16 v4, p4

    .local v4, "x3":D
    move-object v6, v0

    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    invoke-direct/range {v6 .. v11}, Ljavafx/scene/Scene;->pick(Ljavafx/scene/Scene$TargetWrapper;DD)V

    return-void
.end method

.method static synthetic access$700(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$KeyHandler;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene;->getKeyHandler()Ljavafx/scene/Scene$KeyHandler;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$7800(Ljavafx/scene/Scene;)Ljavafx/scene/Scene$ClickGenerator;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->clickGenerator:Ljavafx/scene/Scene$ClickGenerator;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$8300(Ljavafx/scene/Scene;)Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->focusOwner:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Scene;
    return-object v0
.end method

.method static synthetic access$8700(Ljavafx/scene/Scene;)V
    .locals 2

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Scene;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene;->sceneEffectiveOrientationInvalidated()V

    return-void
.end method

.method static synthetic access$lambda$0()V
    .locals 0

    invoke-static {}, Ljavafx/scene/Scene;->lambda$addSnapshotRunnable$6()V

    return-void
.end method

.method static synthetic access$lambda$1(Ljava/lang/Runnable;Ljava/security/AccessControlContext;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/Scene;->lambda$addSnapshotRunnable$8(Ljava/lang/Runnable;Ljava/security/AccessControlContext;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/Scene;Ljavafx/scene/image/WritableImage;Ljavafx/util/Callback;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Scene;->lambda$snapshot$9(Ljavafx/scene/image/WritableImage;Ljavafx/util/Callback;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljava/lang/Runnable;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/Scene;->lambda$null$7(Ljava/lang/Runnable;)Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$4()Ljava/lang/Boolean;
    .locals 1

    invoke-static {}, Ljavafx/scene/Scene;->lambda$static$12()Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method static addSnapshotRunnable(Ljava/lang/Runnable;)V
    .locals 6

    .prologue
    .line 1281
    move-object v0, p0

    .local v0, "runnable":Ljava/lang/Runnable;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 1283
    sget-object v2, Ljavafx/scene/Scene;->snapshotPulseListener:Lcom/sun/javafx/tk/TKPulseListener;

    if-nez v2, :cond_0

    .line 1284
    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Ljavafx/scene/Scene;->snapshotRunnableListA:Ljava/util/List;

    .line 1285
    new-instance v2, Ljava/util/ArrayList;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    sput-object v2, Ljavafx/scene/Scene;->snapshotRunnableListB:Ljava/util/List;

    .line 1286
    sget-object v2, Ljavafx/scene/Scene;->snapshotRunnableListA:Ljava/util/List;

    sput-object v2, Ljavafx/scene/Scene;->snapshotRunnableList:Ljava/util/List;

    .line 1288
    invoke-static {}, Ljavafx/scene/Scene$$Lambda$1;->lambdaFactory$()Lcom/sun/javafx/tk/TKPulseListener;

    move-result-object v2

    sput-object v2, Ljavafx/scene/Scene;->snapshotPulseListener:Lcom/sun/javafx/tk/TKPulseListener;

    .line 1310
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    sget-object v3, Ljavafx/scene/Scene;->snapshotPulseListener:Lcom/sun/javafx/tk/TKPulseListener;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/Toolkit;->addPostSceneTkPulseListener(Lcom/sun/javafx/tk/TKPulseListener;)V

    .line 1313
    :cond_0
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v2

    move-object v1, v2

    .line 1314
    .local v1, "acc":Ljava/security/AccessControlContext;
    sget-object v2, Ljavafx/scene/Scene;->snapshotRunnableList:Ljava/util/List;

    move-object v3, v0

    move-object v4, v1

    invoke-static {v3, v4}, Ljavafx/scene/Scene$$Lambda$2;->lambdaFactory$(Ljava/lang/Runnable;Ljava/security/AccessControlContext;)Ljava/lang/Runnable;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 1320
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->requestNextPulse()V

    .line 1321
    return-void
.end method

.method private calcEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;
    .locals 7

    .prologue
    .line 6230
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v5

    move-object v1, v5

    .line 6231
    .local v1, "orientation":Ljavafx/geometry/NodeOrientation;
    move-object v5, v1

    sget-object v6, Ljavafx/geometry/NodeOrientation;->INHERIT:Ljavafx/geometry/NodeOrientation;

    if-ne v5, v6, :cond_3

    .line 6232
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v5

    move-object v2, v5

    .line 6233
    .local v2, "window":Ljavafx/stage/Window;
    move-object v5, v2

    if-eqz v5, :cond_2

    .line 6234
    const/4 v5, 0x0

    move-object v3, v5

    .line 6235
    .local v3, "parent":Ljavafx/stage/Window;
    move-object v5, v2

    instance-of v5, v5, Ljavafx/stage/Stage;

    if-eqz v5, :cond_1

    .line 6236
    move-object v5, v2

    check-cast v5, Ljavafx/stage/Stage;

    invoke-virtual {v5}, Ljavafx/stage/Stage;->getOwner()Ljavafx/stage/Window;

    move-result-object v5

    move-object v3, v5

    .line 6242
    :cond_0
    :goto_0
    move-object v5, v3

    if-eqz v5, :cond_2

    .line 6243
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    move-object v4, v5

    .line 6244
    .local v4, "scene":Ljavafx/scene/Scene;
    move-object v5, v4

    if-eqz v5, :cond_2

    move-object v5, v4

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v5

    move-object v0, v5

    .line 6249
    .end local v0    # "this":Ljavafx/scene/Scene;
    .end local v2    # "window":Ljavafx/stage/Window;
    .end local v3    # "parent":Ljavafx/stage/Window;
    .end local v4    # "scene":Ljavafx/scene/Scene;
    :goto_1
    return-object v0

    .line 6238
    .restart local v0    # "this":Ljavafx/scene/Scene;
    .restart local v2    # "window":Ljavafx/stage/Window;
    .restart local v3    # "parent":Ljavafx/stage/Window;
    :cond_1
    move-object v5, v2

    instance-of v5, v5, Ljavafx/stage/PopupWindow;

    if-eqz v5, :cond_0

    .line 6239
    move-object v5, v2

    check-cast v5, Ljavafx/stage/PopupWindow;

    invoke-virtual {v5}, Ljavafx/stage/PopupWindow;->getOwnerWindow()Ljavafx/stage/Window;

    move-result-object v5

    move-object v3, v5

    goto :goto_0

    .line 6247
    .end local v3    # "parent":Ljavafx/stage/Window;
    :cond_2
    sget-object v5, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    move-object v0, v5

    goto :goto_1

    .line 6249
    .end local v2    # "window":Ljavafx/stage/Window;
    :cond_3
    move-object v5, v1

    move-object v0, v5

    goto :goto_1
.end method

.method private clearDirty()V
    .locals 3

    .prologue
    .line 2192
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/scene/Scene;->dirtyBits:I

    .line 2193
    return-void
.end method

.method private createInternalEventDispatcher()Lcom/sun/javafx/scene/SceneEventDispatcher;
    .locals 5

    .prologue
    .line 4193
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    new-instance v1, Lcom/sun/javafx/scene/SceneEventDispatcher;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/SceneEventDispatcher;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method private disposeAccessibles()V
    .locals 7

    .prologue
    .line 6288
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene;->accMap:Ljava/util/Map;

    if-eqz v5, :cond_5

    .line 6289
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene;->accMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v5

    invoke-interface {v5}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v5

    :goto_0
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/Map$Entry;

    move-object v2, v5

    .line 6290
    .local v2, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/Node;Lcom/sun/glass/ui/Accessible;>;"
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Node;

    move-object v3, v5

    .line 6291
    .local v3, "node":Ljavafx/scene/Node;
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/glass/ui/Accessible;

    move-object v4, v5

    .line 6292
    .local v4, "acc":Lcom/sun/glass/ui/Accessible;
    move-object v5, v3

    iget-object v5, v5, Ljavafx/scene/Node;->accessible:Lcom/sun/glass/ui/Accessible;

    if-eqz v5, :cond_2

    .line 6298
    move-object v5, v3

    iget-object v5, v5, Ljavafx/scene/Node;->accessible:Lcom/sun/glass/ui/Accessible;

    move-object v6, v4

    if-ne v5, v6, :cond_0

    .line 6299
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "[A11y] \'node.accessible == acc\' should never happen."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6301
    :cond_0
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    move-object v6, v0

    if-ne v5, v6, :cond_1

    .line 6302
    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v6, "[A11y] \'node.getScene() == this\' should never happen."

    invoke-virtual {v5, v6}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 6304
    :cond_1
    move-object v5, v4

    invoke-virtual {v5}, Lcom/sun/glass/ui/Accessible;->dispose()V

    .line 6312
    :goto_1
    goto :goto_0

    .line 6306
    :cond_2
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    move-object v6, v0

    if-ne v5, v6, :cond_3

    .line 6307
    move-object v5, v3

    move-object v6, v4

    iput-object v6, v5, Ljavafx/scene/Node;->accessible:Lcom/sun/glass/ui/Accessible;

    goto :goto_1

    .line 6309
    :cond_3
    move-object v5, v4

    invoke-virtual {v5}, Lcom/sun/glass/ui/Accessible;->dispose()V

    goto :goto_1

    .line 6313
    .end local v2    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljavafx/scene/Node;Lcom/sun/glass/ui/Accessible;>;"
    .end local v3    # "node":Ljavafx/scene/Node;
    .end local v4    # "acc":Lcom/sun/glass/ui/Accessible;
    :cond_4
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene;->accMap:Ljava/util/Map;

    invoke-interface {v5}, Ljava/util/Map;->clear()V

    .line 6315
    :cond_5
    return-void
.end method

.method private doCSSPass()V
    .locals 4

    .prologue
    .line 524
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v1, v2

    .line 540
    .local v1, "sceneRoot":Ljavafx/scene/Parent;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Parent;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    sget-object v3, Lcom/sun/javafx/scene/CssFlags;->CLEAN:Lcom/sun/javafx/scene/CssFlags;

    if-eq v2, v3, :cond_0

    .line 544
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_CSS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/Parent;->impl_clearDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 545
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Parent;->processCSS()V

    .line 547
    :cond_0
    return-void
.end method

.method static doSnapshot(Ljavafx/scene/Scene;DDDDLjavafx/scene/Node;Lcom/sun/javafx/geom/transform/BaseTransform;ZLjavafx/scene/paint/Paint;Ljavafx/scene/Camera;Ljavafx/scene/image/WritableImage;)Ljavafx/scene/image/WritableImage;
    .locals 37

    .prologue
    .line 1184
    move-object/from16 v3, p0

    .local v3, "scene":Ljavafx/scene/Scene;
    move-wide/from16 v4, p1

    .local v4, "x":D
    move-wide/from16 v6, p3

    .local v6, "y":D
    move-wide/from16 v8, p5

    .local v8, "w":D
    move-wide/from16 v10, p7

    .local v10, "h":D
    move-object/from16 v12, p9

    .local v12, "root":Ljavafx/scene/Node;
    move-object/from16 v13, p10

    .local v13, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move/from16 v14, p11

    .local v14, "depthBuffer":Z
    move-object/from16 v15, p12

    .local v15, "fill":Ljavafx/scene/paint/Paint;
    move-object/from16 v16, p13

    .local v16, "camera":Ljavafx/scene/Camera;
    move-object/from16 v17, p14

    .local v17, "wimg":Ljavafx/scene/image/WritableImage;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v32

    move-object/from16 v18, v32

    .line 1185
    .local v18, "tk":Lcom/sun/javafx/tk/Toolkit;
    new-instance v32, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;

    move-object/from16 v36, v32

    move-object/from16 v32, v36

    move-object/from16 v33, v36

    invoke-direct/range {v33 .. v33}, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;-><init>()V

    move-object/from16 v19, v32

    .line 1187
    .local v19, "context":Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;
    move-wide/from16 v32, v4

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->floor(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v32, v0

    move/from16 v20, v32

    .line 1188
    .local v20, "xMin":I
    move-wide/from16 v32, v6

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->floor(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v32, v0

    move/from16 v21, v32

    .line 1189
    .local v21, "yMin":I
    move-wide/from16 v32, v4

    move-wide/from16 v34, v8

    add-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v32, v0

    move/from16 v22, v32

    .line 1190
    .local v22, "xMax":I
    move-wide/from16 v32, v6

    move-wide/from16 v34, v10

    add-double v32, v32, v34

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v32, v0

    move/from16 v23, v32

    .line 1191
    .local v23, "yMax":I
    move/from16 v32, v22

    move/from16 v33, v20

    sub-int v32, v32, v33

    const/16 v33, 0x1

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v24, v32

    .line 1192
    .local v24, "width":I
    move/from16 v32, v23

    move/from16 v33, v21

    sub-int v32, v32, v33

    const/16 v33, 0x1

    invoke-static/range {v32 .. v33}, Ljava/lang/Math;->max(II)I

    move-result v32

    move/from16 v25, v32

    .line 1193
    .local v25, "height":I
    move-object/from16 v32, v17

    if-nez v32, :cond_0

    .line 1194
    new-instance v32, Ljavafx/scene/image/WritableImage;

    move-object/from16 v36, v32

    move-object/from16 v32, v36

    move-object/from16 v33, v36

    move/from16 v34, v24

    move/from16 v35, v25

    invoke-direct/range {v33 .. v35}, Ljavafx/scene/image/WritableImage;-><init>(II)V

    move-object/from16 v17, v32

    .line 1200
    :goto_0
    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljavafx/scene/Scene;->impl_setAllowPGAccess(Z)V

    .line 1201
    move-object/from16 v32, v19

    move/from16 v33, v20

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->x:I

    .line 1202
    move-object/from16 v32, v19

    move/from16 v33, v21

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->y:I

    .line 1203
    move-object/from16 v32, v19

    move/from16 v33, v24

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->width:I

    .line 1204
    move-object/from16 v32, v19

    move/from16 v33, v25

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput v0, v1, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->height:I

    .line 1205
    move-object/from16 v32, v19

    move-object/from16 v33, v13

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->transform:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 1206
    move-object/from16 v32, v19

    move/from16 v33, v14

    move/from16 v0, v33

    move-object/from16 v1, v32

    iput-boolean v0, v1, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->depthBuffer:Z

    .line 1207
    move-object/from16 v32, v19

    move-object/from16 v33, v12

    invoke-virtual/range {v33 .. v33}, Ljavafx/scene/Node;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->root:Lcom/sun/javafx/sg/prism/NGNode;

    .line 1208
    move-object/from16 v32, v19

    move-object/from16 v33, v15

    if-nez v33, :cond_1

    const/16 v33, 0x0

    :goto_1
    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->platformPaint:Ljava/lang/Object;

    .line 1209
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v32

    .line 1210
    .local v26, "cameraViewWidth":D
    const-wide/high16 v32, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v28, v32

    .line 1211
    .local v28, "cameraViewHeight":D
    move-object/from16 v32, v16

    if-eqz v32, :cond_2

    .line 1213
    move-object/from16 v32, v16

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/Camera;->getViewWidth()D

    move-result-wide v32

    move-wide/from16 v26, v32

    .line 1214
    move-object/from16 v32, v16

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/Camera;->getViewHeight()D

    move-result-wide v32

    move-wide/from16 v28, v32

    .line 1215
    move-object/from16 v32, v16

    move/from16 v33, v24

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-virtual/range {v32 .. v34}, Ljavafx/scene/Camera;->setViewWidth(D)V

    .line 1216
    move-object/from16 v32, v16

    move/from16 v33, v25

    move/from16 v0, v33

    int-to-double v0, v0

    move-wide/from16 v33, v0

    invoke-virtual/range {v32 .. v34}, Ljavafx/scene/Camera;->setViewHeight(D)V

    .line 1217
    move-object/from16 v32, v16

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/Camera;->impl_updatePeer()V

    .line 1218
    move-object/from16 v32, v19

    move-object/from16 v33, v16

    invoke-virtual/range {v33 .. v33}, Ljavafx/scene/Camera;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v33

    check-cast v33, Lcom/sun/javafx/sg/prism/NGCamera;

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->camera:Lcom/sun/javafx/sg/prism/NGCamera;

    .line 1224
    :goto_2
    move-object/from16 v32, v19

    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->lights:[Lcom/sun/javafx/sg/prism/NGLightBase;

    .line 1225
    move-object/from16 v32, v3

    if-eqz v32, :cond_3

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Ljavafx/scene/Scene;->lights:Ljava/util/List;

    move-object/from16 v32, v0

    invoke-interface/range {v32 .. v32}, Ljava/util/List;->isEmpty()Z

    move-result v32

    if-nez v32, :cond_3

    .line 1226
    move-object/from16 v32, v19

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-object v0, v0, Ljavafx/scene/Scene;->lights:Ljava/util/List;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v33

    move/from16 v0, v33

    new-array v0, v0, [Lcom/sun/javafx/sg/prism/NGLightBase;

    move-object/from16 v33, v0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->lights:[Lcom/sun/javafx/sg/prism/NGLightBase;

    .line 1227
    const/16 v32, 0x0

    move/from16 v30, v32

    .local v30, "i":I
    :goto_3
    move/from16 v32, v30

    move-object/from16 v33, v3

    move-object/from16 v0, v33

    iget-object v0, v0, Ljavafx/scene/Scene;->lights:Ljava/util/List;

    move-object/from16 v33, v0

    invoke-interface/range {v33 .. v33}, Ljava/util/List;->size()I

    move-result v33

    move/from16 v0, v32

    move/from16 v1, v33

    if-ge v0, v1, :cond_3

    .line 1228
    move-object/from16 v32, v19

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->lights:[Lcom/sun/javafx/sg/prism/NGLightBase;

    move-object/from16 v32, v0

    move/from16 v33, v30

    move-object/from16 v34, v3

    move-object/from16 v0, v34

    iget-object v0, v0, Ljavafx/scene/Scene;->lights:Ljava/util/List;

    move-object/from16 v34, v0

    move/from16 v35, v30

    invoke-interface/range {v34 .. v35}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v34

    check-cast v34, Ljavafx/scene/LightBase;

    invoke-virtual/range {v34 .. v34}, Ljavafx/scene/LightBase;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v34

    check-cast v34, Lcom/sun/javafx/sg/prism/NGLightBase;

    aput-object v34, v32, v33

    .line 1227
    add-int/lit8 v30, v30, 0x1

    goto :goto_3

    .line 1196
    .end local v26    # "cameraViewWidth":D
    .end local v28    # "cameraViewHeight":D
    .end local v30    # "i":I
    :cond_0
    move-object/from16 v32, v17

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/image/WritableImage;->getWidth()D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v32, v0

    move/from16 v24, v32

    .line 1197
    move-object/from16 v32, v17

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/image/WritableImage;->getHeight()D

    move-result-wide v32

    move-wide/from16 v0, v32

    double-to-int v0, v0

    move/from16 v32, v0

    move/from16 v25, v32

    goto/16 :goto_0

    .line 1208
    :cond_1
    move-object/from16 v33, v18

    move-object/from16 v34, v15

    invoke-virtual/range {v33 .. v34}, Lcom/sun/javafx/tk/Toolkit;->getPaint(Ljavafx/scene/paint/Paint;)Ljava/lang/Object;

    move-result-object v33

    goto/16 :goto_1

    .line 1220
    .restart local v26    # "cameraViewWidth":D
    .restart local v28    # "cameraViewHeight":D
    :cond_2
    move-object/from16 v32, v19

    const/16 v33, 0x0

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->camera:Lcom/sun/javafx/sg/prism/NGCamera;

    goto/16 :goto_2

    .line 1232
    :cond_3
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getWritableImageAccessor()Lcom/sun/javafx/tk/Toolkit$WritableImageAccessor;

    move-result-object v32

    move-object/from16 v30, v32

    .line 1233
    .local v30, "accessor":Lcom/sun/javafx/tk/Toolkit$WritableImageAccessor;
    move-object/from16 v32, v19

    move-object/from16 v33, v30

    move-object/from16 v34, v17

    invoke-interface/range {v33 .. v34}, Lcom/sun/javafx/tk/Toolkit$WritableImageAccessor;->getTkImageLoader(Ljavafx/scene/image/WritableImage;)Ljava/lang/Object;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, v32

    iput-object v0, v1, Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;->platformImage:Ljava/lang/Object;

    .line 1234
    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljavafx/scene/Scene;->impl_setAllowPGAccess(Z)V

    .line 1235
    move-object/from16 v32, v18

    move-object/from16 v33, v19

    invoke-virtual/range {v32 .. v33}, Lcom/sun/javafx/tk/Toolkit;->renderToImage(Lcom/sun/javafx/tk/Toolkit$ImageRenderingContext;)Ljava/lang/Object;

    move-result-object v32

    move-object/from16 v31, v32

    .line 1236
    .local v31, "tkImage":Ljava/lang/Object;
    move-object/from16 v32, v30

    move-object/from16 v33, v17

    move-object/from16 v34, v31

    invoke-interface/range {v32 .. v34}, Lcom/sun/javafx/tk/Toolkit$WritableImageAccessor;->loadTkImage(Ljavafx/scene/image/WritableImage;Ljava/lang/Object;)V

    .line 1238
    move-object/from16 v32, v16

    if-eqz v32, :cond_4

    .line 1239
    const/16 v32, 0x1

    invoke-static/range {v32 .. v32}, Ljavafx/scene/Scene;->impl_setAllowPGAccess(Z)V

    .line 1240
    move-object/from16 v32, v16

    move-wide/from16 v33, v26

    invoke-virtual/range {v32 .. v34}, Ljavafx/scene/Camera;->setViewWidth(D)V

    .line 1241
    move-object/from16 v32, v16

    move-wide/from16 v33, v28

    invoke-virtual/range {v32 .. v34}, Ljavafx/scene/Camera;->setViewHeight(D)V

    .line 1242
    move-object/from16 v32, v16

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/Camera;->impl_updatePeer()V

    .line 1243
    const/16 v32, 0x0

    invoke-static/range {v32 .. v32}, Ljavafx/scene/Scene;->impl_setAllowPGAccess(Z)V

    .line 1249
    :cond_4
    move-object/from16 v32, v3

    if-eqz v32, :cond_5

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    move-object/from16 v32, v0

    if-eqz v32, :cond_5

    .line 1250
    move-object/from16 v32, v3

    invoke-virtual/range {v32 .. v32}, Ljavafx/scene/Scene;->setNeedsRepaint()V

    .line 1253
    :cond_5
    move-object/from16 v32, v17

    move-object/from16 v3, v32

    .end local v3    # "scene":Ljavafx/scene/Scene;
    return-object v3
.end method

.method private doSnapshot(Ljavafx/scene/image/WritableImage;)Ljavafx/scene/image/WritableImage;
    .locals 22

    .prologue
    .line 1262
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object/from16 v1, p1

    .local v1, "img":Ljavafx/scene/image/WritableImage;
    move-object v7, v0

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljavafx/scene/Scene;->doCSSLayoutSyncForSnapshot(Ljavafx/scene/Node;)V

    .line 1264
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/Scene;->getWidth()D

    move-result-wide v7

    move-wide v2, v7

    .line 1265
    .local v2, "w":D
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/Scene;->getHeight()D

    move-result-wide v7

    move-wide v4, v7

    .line 1266
    .local v4, "h":D
    sget-object v7, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v6, v7

    .line 1268
    .local v6, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v7, v0

    const-wide/16 v8, 0x0

    const-wide/16 v10, 0x0

    move-wide v12, v2

    move-wide v14, v4

    move-object/from16 v16, v0

    .line 1269
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v16

    move-object/from16 v17, v6

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Scene;->isDepthBufferInternal()Z

    move-result v18

    move-object/from16 v19, v0

    .line 1270
    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/Scene;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v19

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Scene;->getEffectiveCamera()Ljavafx/scene/Camera;

    move-result-object v20

    move-object/from16 v21, v1

    .line 1268
    invoke-static/range {v7 .. v21}, Ljavafx/scene/Scene;->doSnapshot(Ljavafx/scene/Scene;DDDDLjavafx/scene/Node;Lcom/sun/javafx/geom/transform/BaseTransform;ZLjavafx/scene/paint/Paint;Ljavafx/scene/Camera;Ljavafx/scene/image/WritableImage;)Ljavafx/scene/image/WritableImage;

    move-result-object v7

    move-object v0, v7

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method private focusIneligible(Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 2028
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/scene/traversal/Direction;->NEXT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Scene;->traverse(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v2

    .line 2029
    return-void
.end method

.method private focusInitial()V
    .locals 2

    .prologue
    .line 2018
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->traversalEngine:Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;->traverseToFirst()Ljavafx/scene/Node;

    move-result-object v1

    .line 2019
    return-void
.end method

.method private getAntiAliasingInternal()Z
    .locals 3

    .prologue
    .line 607
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->antiAliasing:Ljavafx/scene/SceneAntialiasing;

    if-eqz v1, :cond_1

    .line 608
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/tk/Toolkit;->isMSAASupported()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-object v1, Ljavafx/application/ConditionalFeature;->SCENE3D:Ljavafx/application/ConditionalFeature;

    .line 609
    invoke-static {v1}, Ljavafx/application/Platform;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->antiAliasing:Ljavafx/scene/SceneAntialiasing;

    sget-object v2, Ljavafx/scene/SceneAntialiasing;->DISABLED:Ljavafx/scene/SceneAntialiasing;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private getInternalEventDispatcher()Lcom/sun/javafx/scene/SceneEventDispatcher;
    .locals 2

    .prologue
    .line 4178
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Scene;->initializeInternalEventDispatcher()V

    .line 4179
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->internalEventDispatcher:Lcom/sun/javafx/scene/SceneEventDispatcher;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method private getKeyHandler()Ljavafx/scene/Scene$KeyHandler;
    .locals 6

    .prologue
    .line 1977
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->keyHandler:Ljavafx/scene/Scene$KeyHandler;

    if-nez v1, :cond_0

    .line 1978
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$KeyHandler;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$KeyHandler;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->keyHandler:Ljavafx/scene/Scene$KeyHandler;

    .line 1980
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->keyHandler:Ljavafx/scene/Scene$KeyHandler;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method private static getPreferredHeight(Ljavafx/scene/Parent;DD)D
    .locals 17

    .prologue
    .line 1705
    move-object/from16 v1, p0

    .local v1, "root":Ljavafx/scene/Parent;
    move-wide/from16 v2, p1

    .local v2, "forcedHeight":D
    move-wide/from16 v4, p3

    .local v4, "width":D
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_0

    .line 1706
    move-wide v8, v2

    move-wide v1, v8

    .line 1709
    .end local v1    # "root":Ljavafx/scene/Parent;
    :goto_0
    return-wide v1

    .line 1708
    .restart local v1    # "root":Ljavafx/scene/Parent;
    :cond_0
    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_1

    move-wide v8, v4

    :goto_1
    move-wide v6, v8

    .line 1709
    .local v6, "normalizedWidth":D
    move-object v8, v1

    move-object v9, v1

    move-wide v10, v6

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/Parent;->prefHeight(D)D

    move-result-wide v9

    move-object v11, v1

    move-wide v12, v6

    .line 1710
    invoke-virtual {v11, v12, v13}, Ljavafx/scene/Parent;->minHeight(D)D

    move-result-wide v11

    move-object v13, v1

    move-wide v14, v6

    .line 1711
    invoke-virtual {v13, v14, v15}, Ljavafx/scene/Parent;->maxHeight(D)D

    move-result-wide v13

    .line 1709
    invoke-virtual/range {v8 .. v14}, Ljavafx/scene/Parent;->boundedSize(DDD)D

    move-result-wide v8

    move-wide v1, v8

    goto :goto_0

    .line 1708
    .end local v6    # "normalizedWidth":D
    :cond_1
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    goto :goto_1
.end method

.method private static getPreferredWidth(Ljavafx/scene/Parent;DD)D
    .locals 17

    .prologue
    .line 1693
    move-object/from16 v1, p0

    .local v1, "root":Ljavafx/scene/Parent;
    move-wide/from16 v2, p1

    .local v2, "forcedWidth":D
    move-wide/from16 v4, p3

    .local v4, "height":D
    move-wide v8, v2

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_0

    .line 1694
    move-wide v8, v2

    move-wide v1, v8

    .line 1697
    .end local v1    # "root":Ljavafx/scene/Parent;
    :goto_0
    return-wide v1

    .line 1696
    .restart local v1    # "root":Ljavafx/scene/Parent;
    :cond_0
    move-wide v8, v4

    const-wide/16 v10, 0x0

    cmpl-double v8, v8, v10

    if-ltz v8, :cond_1

    move-wide v8, v4

    :goto_1
    move-wide v6, v8

    .line 1697
    .local v6, "normalizedHeight":D
    move-object v8, v1

    move-object v9, v1

    move-wide v10, v6

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/Parent;->prefWidth(D)D

    move-result-wide v9

    move-object v11, v1

    move-wide v12, v6

    .line 1698
    invoke-virtual {v11, v12, v13}, Ljavafx/scene/Parent;->minWidth(D)D

    move-result-wide v11

    move-object v13, v1

    move-wide v14, v6

    .line 1699
    invoke-virtual {v13, v14, v15}, Ljavafx/scene/Parent;->maxWidth(D)D

    move-result-wide v13

    .line 1697
    invoke-virtual/range {v8 .. v14}, Ljavafx/scene/Parent;->boundedSize(DDD)D

    move-result-wide v8

    move-wide v1, v8

    goto :goto_0

    .line 1696
    .end local v6    # "normalizedHeight":D
    :cond_1
    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    goto :goto_1
.end method

.method private heightPropertyImpl()Ljavafx/beans/property/ReadOnlyDoubleWrapper;
    .locals 6

    .prologue
    .line 878
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    if-nez v1, :cond_0

    .line 879
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$6;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$6;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 902
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public static impl_setAllowPGAccess(Z)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 460
    move v0, p0

    .local v0, "flag":Z
    invoke-static {}, Lcom/sun/javafx/util/Utils;->assertionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 461
    move v1, v0

    if-eqz v1, :cond_1

    .line 462
    sget v1, Ljavafx/scene/Scene;->pgAccessCount:I

    const/4 v2, 0x1

    add-int/lit8 v1, v1, 0x1

    sput v1, Ljavafx/scene/Scene;->pgAccessCount:I

    .line 463
    const/4 v1, 0x1

    sput-boolean v1, Ljavafx/scene/Scene;->allowPGAccess:Z

    .line 474
    :cond_0
    :goto_0
    return-void

    .line 466
    :cond_1
    sget v1, Ljavafx/scene/Scene;->pgAccessCount:I

    if-gtz v1, :cond_2

    .line 467
    new-instance v1, Ljava/lang/AssertionError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "*** pgAccessCount underflow"

    invoke-direct {v2, v3}, Ljava/lang/AssertionError;-><init>(Ljava/lang/Object;)V

    throw v1

    .line 469
    :cond_2
    sget v1, Ljavafx/scene/Scene;->pgAccessCount:I

    const/4 v2, 0x1

    add-int/lit8 v1, v1, -0x1

    move v4, v1

    move v1, v4

    move v2, v4

    sput v2, Ljavafx/scene/Scene;->pgAccessCount:I

    if-nez v1, :cond_0

    .line 470
    const/4 v1, 0x0

    sput-boolean v1, Ljavafx/scene/Scene;->allowPGAccess:Z

    goto :goto_0
.end method

.method private init()V
    .locals 6

    .prologue
    .line 1626
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    invoke-static {}, Lcom/sun/javafx/perf/PerformanceTracker;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1627
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scene.init for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/perf/PerformanceTracker;->logEvent(Ljava/lang/String;)V

    .line 1629
    :cond_0
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$MouseHandler;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$MouseHandler;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->mouseHandler:Ljavafx/scene/Scene$MouseHandler;

    .line 1630
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$ClickGenerator;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    invoke-direct {v3}, Ljavafx/scene/Scene$ClickGenerator;-><init>()V

    iput-object v2, v1, Ljavafx/scene/Scene;->clickGenerator:Ljavafx/scene/Scene$ClickGenerator;

    .line 1632
    invoke-static {}, Lcom/sun/javafx/perf/PerformanceTracker;->isLoggingEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1633
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v5, v1

    move-object v1, v5

    move-object v2, v5

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Scene.init for ["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "] - finished"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/perf/PerformanceTracker;->logEvent(Ljava/lang/String;)V

    .line 1635
    :cond_1
    return-void
.end method

.method private init(DD)V
    .locals 11

    .prologue
    .line 1614
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-wide v1, p1

    .local v1, "width":D
    move-wide v3, p3

    .local v3, "height":D
    move-wide v5, v1

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_0

    .line 1615
    move-object v5, v0

    move-wide v6, v1

    iput-wide v6, v5, Ljavafx/scene/Scene;->widthSetByUser:D

    .line 1616
    move-object v5, v0

    move-wide v6, v1

    double-to-float v6, v6

    float-to-double v6, v6

    invoke-direct {v5, v6, v7}, Ljavafx/scene/Scene;->setWidth(D)V

    .line 1618
    :cond_0
    move-wide v5, v3

    const-wide/16 v7, 0x0

    cmpl-double v5, v5, v7

    if-ltz v5, :cond_1

    .line 1619
    move-object v5, v0

    move-wide v6, v3

    iput-wide v6, v5, Ljavafx/scene/Scene;->heightSetByUser:D

    .line 1620
    move-object v5, v0

    move-wide v6, v3

    double-to-float v6, v6

    float-to-double v6, v6

    invoke-direct {v5, v6, v7}, Ljavafx/scene/Scene;->setHeight(D)V

    .line 1622
    :cond_1
    move-object v5, v0

    move-object v6, v0

    iget-wide v6, v6, Ljavafx/scene/Scene;->widthSetByUser:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_2

    move-object v6, v0

    iget-wide v6, v6, Ljavafx/scene/Scene;->heightSetByUser:D

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-ltz v6, :cond_2

    const/4 v6, 0x1

    :goto_0
    iput-boolean v6, v5, Ljavafx/scene/Scene;->sizeInitialized:Z

    .line 1623
    return-void

    .line 1622
    :cond_2
    const/4 v6, 0x0

    goto :goto_0
.end method

.method private isDirty(Ljavafx/scene/Scene$DirtyBits;)Z
    .locals 4

    .prologue
    .line 2178
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "dirtyBit":Ljavafx/scene/Scene$DirtyBits;
    move-object v2, v0

    iget v2, v2, Ljavafx/scene/Scene;->dirtyBits:I

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Scene$DirtyBits;->getMask()I

    move-result v3

    and-int/2addr v2, v3

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/Scene;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private isDirtyEmpty()Z
    .locals 2

    .prologue
    .line 2185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/Scene;->dirtyBits:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private isInScene(DD)Z
    .locals 11

    .prologue
    .line 1926
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-wide v1, p1

    .local v1, "x":D
    move-wide v3, p3

    .local v3, "y":D
    move-wide v6, v1

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_0

    move-wide v6, v3

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-ltz v6, :cond_0

    move-wide v6, v1

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/Scene;->getWidth()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-gtz v6, :cond_0

    move-wide v6, v3

    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/Scene;->getHeight()D

    move-result-wide v8

    cmpl-double v6, v6, v8

    if-lez v6, :cond_1

    .line 1927
    :cond_0
    const/4 v6, 0x0

    move v0, v6

    .line 1937
    .end local v0    # "this":Ljavafx/scene/Scene;
    :goto_0
    return v0

    .line 1930
    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_1
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v6

    move-object v5, v6

    .line 1931
    .local v5, "w":Ljavafx/stage/Window;
    move-object v6, v5

    instance-of v6, v6, Ljavafx/stage/Stage;

    if-eqz v6, :cond_2

    move-object v6, v5

    check-cast v6, Ljavafx/stage/Stage;

    .line 1932
    invoke-virtual {v6}, Ljavafx/stage/Stage;->getStyle()Ljavafx/stage/StageStyle;

    move-result-object v6

    sget-object v7, Ljavafx/stage/StageStyle;->TRANSPARENT:Ljavafx/stage/StageStyle;

    if-ne v6, v7, :cond_2

    move-object v6, v0

    .line 1933
    invoke-virtual {v6}, Ljavafx/scene/Scene;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v6

    if-nez v6, :cond_2

    .line 1934
    const/4 v6, 0x0

    move v0, v6

    goto :goto_0

    .line 1937
    :cond_2
    const/4 v6, 0x1

    move v0, v6

    goto :goto_0
.end method

.method static isPGAccessAllowed()Z
    .locals 1

    .prologue
    .line 451
    sget-boolean v0, Ljavafx/scene/Scene;->inSynchronizer:Z

    if-nez v0, :cond_0

    sget-boolean v0, Ljavafx/scene/Scene;->inMousePick:Z

    if-nez v0, :cond_0

    sget-boolean v0, Ljavafx/scene/Scene;->allowPGAccess:Z

    if-eqz v0, :cond_1

    :cond_0
    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static synthetic lambda$addSnapshotRunnable$6()V
    .locals 6

    .prologue
    .line 1289
    sget-object v4, Ljavafx/scene/Scene;->snapshotRunnableList:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-lez v4, :cond_2

    .line 1290
    sget-object v4, Ljavafx/scene/Scene;->snapshotRunnableList:Ljava/util/List;

    move-object v0, v4

    .line 1291
    .local v0, "runnables":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Runnable;>;"
    sget-object v4, Ljavafx/scene/Scene;->snapshotRunnableList:Ljava/util/List;

    sget-object v5, Ljavafx/scene/Scene;->snapshotRunnableListA:Ljava/util/List;

    if-ne v4, v5, :cond_0

    .line 1292
    sget-object v4, Ljavafx/scene/Scene;->snapshotRunnableListB:Ljava/util/List;

    sput-object v4, Ljavafx/scene/Scene;->snapshotRunnableList:Ljava/util/List;

    .line 1296
    :goto_0
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v1, v4

    :goto_1
    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v1

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Runnable;

    move-object v2, v4

    .line 1298
    .local v2, "r":Ljava/lang/Runnable;
    move-object v4, v2

    :try_start_0
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 1302
    .line 1303
    :goto_2
    goto :goto_1

    .line 1294
    .end local v2    # "r":Ljava/lang/Runnable;
    :cond_0
    sget-object v4, Ljavafx/scene/Scene;->snapshotRunnableListA:Ljava/util/List;

    sput-object v4, Ljavafx/scene/Scene;->snapshotRunnableList:Ljava/util/List;

    goto :goto_0

    .line 1299
    .restart local v2    # "r":Ljava/lang/Runnable;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 1300
    .local v3, "th":Ljava/lang/Throwable;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Exception in snapshot runnable"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1301
    move-object v4, v3

    sget-object v5, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v5}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_2

    .line 1304
    .end local v2    # "r":Ljava/lang/Runnable;
    .end local v3    # "th":Ljava/lang/Throwable;
    :cond_1
    move-object v4, v0

    invoke-interface {v4}, Ljava/util/List;->clear()V

    .line 1306
    :cond_2
    return-void
.end method

.method private static synthetic lambda$addSnapshotRunnable$8(Ljava/lang/Runnable;Ljava/security/AccessControlContext;)V
    .locals 4

    .prologue
    .line 1315
    move-object v0, p0

    .local v0, "runnable":Ljava/lang/Runnable;
    move-object v1, p1

    .local v1, "acc":Ljava/security/AccessControlContext;
    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/Scene$$Lambda$4;->lambdaFactory$(Ljava/lang/Runnable;)Ljava/security/PrivilegedAction;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    .line 1319
    return-void
.end method

.method private static synthetic lambda$null$7(Ljava/lang/Runnable;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 1316
    move-object v0, p0

    .local v0, "runnable":Ljava/lang/Runnable;
    move-object v1, v0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 1317
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "runnable":Ljava/lang/Runnable;
    return-object v0
.end method

.method private synthetic lambda$snapshot$9(Ljavafx/scene/image/WritableImage;Ljavafx/util/Callback;)V
    .locals 12

    .prologue
    .line 1421
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "theImage":Ljavafx/scene/image/WritableImage;
    move-object v2, p2

    .local v2, "theCallback":Ljavafx/util/Callback;
    move-object v6, v0

    move-object v7, v1

    invoke-direct {v6, v7}, Ljavafx/scene/Scene;->doSnapshot(Ljavafx/scene/image/WritableImage;)Ljavafx/scene/image/WritableImage;

    move-result-object v6

    move-object v3, v6

    .line 1423
    .local v3, "img":Ljavafx/scene/image/WritableImage;
    new-instance v6, Ljavafx/scene/SnapshotResult;

    move-object v11, v6

    move-object v6, v11

    move-object v7, v11

    move-object v8, v3

    move-object v9, v0

    const/4 v10, 0x0

    invoke-direct {v7, v8, v9, v10}, Ljavafx/scene/SnapshotResult;-><init>(Ljavafx/scene/image/WritableImage;Ljava/lang/Object;Ljavafx/scene/SnapshotParameters;)V

    move-object v4, v6

    .line 1425
    .local v4, "result":Ljavafx/scene/SnapshotResult;
    move-object v6, v2

    move-object v7, v4

    :try_start_0
    invoke-interface {v6, v7}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/lang/Void;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v5, v6

    .line 1429
    .line 1430
    :goto_0
    return-void

    .line 1426
    :catch_0
    move-exception v6

    move-object v5, v6

    .line 1427
    .local v5, "th":Ljava/lang/Throwable;
    sget-object v6, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v7, "Exception in snapshot callback"

    invoke-virtual {v6, v7}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 1428
    move-object v6, v5

    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v6, v7}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method private static synthetic lambda$static$12()Ljava/lang/Boolean;
    .locals 1

    .prologue
    .line 6131
    const-string v0, "javafx.scene.nodeOrientation.RTL"

    invoke-static {v0}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method private markDirty(Ljavafx/scene/Scene$DirtyBits;)V
    .locals 4

    .prologue
    .line 2161
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "dirtyBit":Ljavafx/scene/Scene$DirtyBits;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene;->setDirty(Ljavafx/scene/Scene$DirtyBits;)V

    .line 2162
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    if-eqz v2, :cond_0

    .line 2163
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->requestNextPulse()V

    .line 2165
    :cond_0
    return-void
.end method

.method private parentEffectiveOrientationInvalidated()V
    .locals 3

    .prologue
    .line 6214
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Scene;->getNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v1

    sget-object v2, Ljavafx/geometry/NodeOrientation;->INHERIT:Ljavafx/geometry/NodeOrientation;

    if-ne v1, v2, :cond_0

    .line 6215
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene;->sceneEffectiveOrientationInvalidated()V

    .line 6217
    :cond_0
    return-void
.end method

.method private pick(DD)Ljavafx/scene/input/PickResult;
    .locals 13

    .prologue
    .line 1921
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Scene;
    move-wide v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v6, v1

    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/Scene;->tmpTargetWrapper:Ljavafx/scene/Scene$TargetWrapper;

    move-wide v8, v2

    move-wide v10, v4

    invoke-direct/range {v6 .. v11}, Ljavafx/scene/Scene;->pick(Ljavafx/scene/Scene$TargetWrapper;DD)V

    .line 1922
    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/Scene;->tmpTargetWrapper:Ljavafx/scene/Scene$TargetWrapper;

    invoke-virtual {v6}, Ljavafx/scene/Scene$TargetWrapper;->getResult()Ljavafx/scene/input/PickResult;

    move-result-object v6

    move-object v1, v6

    .end local v1    # "this":Ljavafx/scene/Scene;
    return-object v1
.end method

.method private pick(Ljavafx/scene/Scene$TargetWrapper;DD)V
    .locals 32

    .prologue
    .line 1941
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/Scene;
    move-object/from16 v3, p1

    .local v3, "target":Ljavafx/scene/Scene$TargetWrapper;
    move-wide/from16 v4, p2

    .local v4, "x":D
    move-wide/from16 v6, p4

    .local v6, "y":D
    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/scene/Scene;->getEffectiveCamera()Ljavafx/scene/Camera;

    move-result-object v14

    move-wide v15, v4

    move-wide/from16 v17, v6

    const/16 v19, 0x0

    invoke-virtual/range {v14 .. v19}, Ljavafx/scene/Camera;->computePickRay(DDLcom/sun/javafx/geom/PickRay;)Lcom/sun/javafx/geom/PickRay;

    move-result-object v14

    move-object v8, v14

    .line 1944
    .local v8, "pickRay":Lcom/sun/javafx/geom/PickRay;
    move-object v14, v8

    invoke-virtual {v14}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sun/javafx/geom/Vec3d;->length()D

    move-result-wide v14

    move-wide v9, v14

    .line 1945
    .local v9, "mag":D
    move-object v14, v8

    invoke-virtual {v14}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v14

    invoke-virtual {v14}, Lcom/sun/javafx/geom/Vec3d;->normalize()V

    .line 1946
    move-object v14, v2

    iget-object v14, v14, Ljavafx/scene/Scene;->mouseHandler:Ljavafx/scene/Scene$MouseHandler;

    move-object v15, v8

    invoke-static {v14, v15}, Ljavafx/scene/Scene$MouseHandler;->access$1600(Ljavafx/scene/Scene$MouseHandler;Lcom/sun/javafx/geom/PickRay;)Ljavafx/scene/input/PickResult;

    move-result-object v14

    move-object v11, v14

    .line 1947
    .local v11, "res":Ljavafx/scene/input/PickResult;
    move-object v14, v11

    if-eqz v14, :cond_0

    .line 1948
    move-object v14, v3

    move-object v15, v11

    invoke-virtual {v14, v15}, Ljavafx/scene/Scene$TargetWrapper;->setNodeResult(Ljavafx/scene/input/PickResult;)V

    .line 1961
    :goto_0
    return-void

    .line 1951
    :cond_0
    move-object v14, v8

    invoke-virtual {v14}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v14

    move-object v12, v14

    .line 1952
    .local v12, "o":Lcom/sun/javafx/geom/Vec3d;
    move-object v14, v8

    invoke-virtual {v14}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v14

    move-object v13, v14

    .line 1953
    .local v13, "d":Lcom/sun/javafx/geom/Vec3d;
    move-object v14, v3

    new-instance v15, Ljavafx/scene/input/PickResult;

    move-object/from16 v30, v15

    move-object/from16 v15, v30

    move-object/from16 v16, v30

    const/16 v17, 0x0

    new-instance v18, Ljavafx/geometry/Point3D;

    move-object/from16 v30, v18

    move-object/from16 v18, v30

    move-object/from16 v19, v30

    move-object/from16 v20, v12

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v20, v0

    move-wide/from16 v22, v9

    move-object/from16 v24, v13

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v24, v0

    mul-double v22, v22, v24

    add-double v20, v20, v22

    move-object/from16 v22, v12

    move-object/from16 v0, v22

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v22, v0

    move-wide/from16 v24, v9

    move-object/from16 v26, v13

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v26, v0

    mul-double v24, v24, v26

    add-double v22, v22, v24

    move-object/from16 v24, v12

    move-object/from16 v0, v24

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v24, v0

    move-wide/from16 v26, v9

    move-object/from16 v28, v13

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v28, v0

    mul-double v26, v26, v28

    add-double v24, v24, v26

    invoke-direct/range {v19 .. v25}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-wide/from16 v19, v9

    invoke-direct/range {v16 .. v20}, Ljavafx/scene/input/PickResult;-><init>(Ljavafx/scene/Node;Ljavafx/geometry/Point3D;D)V

    move-object/from16 v16, v2

    move-wide/from16 v17, v4

    move-wide/from16 v19, v6

    .line 1959
    invoke-direct/range {v16 .. v20}, Ljavafx/scene/Scene;->isInScene(DD)Z

    move-result v16

    if-eqz v16, :cond_1

    move-object/from16 v16, v2

    .line 1953
    :goto_1
    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/Scene$TargetWrapper;->setSceneResult(Ljavafx/scene/input/PickResult;Ljavafx/scene/Scene;)V

    goto :goto_0

    .line 1959
    :cond_1
    const/16 v16, 0x0

    goto :goto_1
.end method

.method private preferredSize()V
    .locals 8

    .prologue
    .line 1638
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Scene;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v3

    move-object v2, v3

    .line 1643
    .local v2, "root":Ljavafx/scene/Parent;
    move-object v3, v1

    invoke-direct {v3}, Ljavafx/scene/Scene;->doCSSPass()V

    .line 1645
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/Scene;->resizeRootToPreferredSize(Ljavafx/scene/Parent;)V

    .line 1646
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Scene;->doLayoutPass()V

    .line 1648
    move-object v3, v1

    iget-wide v3, v3, Ljavafx/scene/Scene;->widthSetByUser:D

    const-wide/16 v5, 0x0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_1

    .line 1649
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Parent;->isResizable()Z

    move-result v4

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Parent;->getLayoutX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/Parent;->getTranslateX()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/Parent;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v6

    add-double/2addr v4, v6

    :goto_0
    invoke-direct {v3, v4, v5}, Ljavafx/scene/Scene;->setWidth(D)V

    .line 1655
    :goto_1
    move-object v3, v1

    iget-wide v3, v3, Ljavafx/scene/Scene;->heightSetByUser:D

    const-wide/16 v5, 0x0

    cmpg-double v3, v3, v5

    if-gez v3, :cond_3

    .line 1656
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Parent;->isResizable()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Parent;->getLayoutY()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/Parent;->getTranslateY()D

    move-result-wide v6

    add-double/2addr v4, v6

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/Parent;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v6

    add-double/2addr v4, v6

    :goto_2
    invoke-direct {v3, v4, v5}, Ljavafx/scene/Scene;->setHeight(D)V

    .line 1662
    :goto_3
    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getWidth()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getHeight()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_4

    const/4 v4, 0x1

    :goto_4
    iput-boolean v4, v3, Ljavafx/scene/Scene;->sizeInitialized:Z

    .line 1664
    const-string v3, "Scene preferred bounds computation complete"

    invoke-static {v3}, Lcom/sun/javafx/perf/PerformanceTracker;->logEvent(Ljava/lang/String;)V

    .line 1665
    return-void

    .line 1649
    :cond_0
    move-object v4, v2

    .line 1650
    invoke-virtual {v4}, Ljavafx/scene/Parent;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v4

    goto :goto_0

    .line 1652
    :cond_1
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/Scene;->widthSetByUser:D

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Scene;->setWidth(D)V

    goto :goto_1

    .line 1656
    :cond_2
    move-object v4, v2

    .line 1657
    invoke-virtual {v4}, Ljavafx/scene/Parent;->getBoundsInParent()Ljavafx/geometry/Bounds;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v4

    goto :goto_2

    .line 1659
    :cond_3
    move-object v3, v1

    move-object v4, v1

    iget-wide v4, v4, Ljavafx/scene/Scene;->heightSetByUser:D

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Scene;->setHeight(D)V

    goto :goto_3

    .line 1662
    :cond_4
    const/4 v4, 0x0

    goto :goto_4
.end method

.method private processGestureEvent(Ljavafx/scene/input/GestureEvent;Ljavafx/scene/Scene$TouchGesture;)V
    .locals 13

    .prologue
    .line 1808
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Scene;
    move-object v2, p1

    .local v2, "e":Ljavafx/scene/input/GestureEvent;
    move-object v3, p2

    .local v3, "gesture":Ljavafx/scene/Scene$TouchGesture;
    const/4 v5, 0x0

    move-object v4, v5

    .line 1810
    .local v4, "pickedTarget":Ljavafx/event/EventTarget;
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/input/GestureEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/ZoomEvent;->ZOOM_STARTED:Ljavafx/event/EventType;

    if-eq v5, v6, :cond_0

    move-object v5, v2

    .line 1811
    invoke-virtual {v5}, Ljavafx/scene/input/GestureEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/RotateEvent;->ROTATION_STARTED:Ljavafx/event/EventType;

    if-eq v5, v6, :cond_0

    move-object v5, v2

    .line 1812
    invoke-virtual {v5}, Ljavafx/scene/input/GestureEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/ScrollEvent;->SCROLL_STARTED:Ljavafx/event/EventType;

    if-ne v5, v6, :cond_1

    .line 1813
    :cond_0
    move-object v5, v3

    const/4 v6, 0x0

    iput-object v6, v5, Ljavafx/scene/Scene$TouchGesture;->target:Ljavafx/event/EventTarget;

    .line 1814
    move-object v5, v3

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/scene/Scene$TouchGesture;->finished:Z

    .line 1821
    :cond_1
    move-object v5, v3

    iget-object v5, v5, Ljavafx/scene/Scene$TouchGesture;->target:Ljavafx/event/EventTarget;

    if-eqz v5, :cond_9

    move-object v5, v3

    iget-boolean v5, v5, Ljavafx/scene/Scene$TouchGesture;->finished:Z

    if-nez v5, :cond_9

    .line 1822
    move-object v5, v3

    iget-object v5, v5, Ljavafx/scene/Scene$TouchGesture;->target:Ljavafx/event/EventTarget;

    move-object v4, v5

    .line 1830
    :cond_2
    :goto_0
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/input/GestureEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/ZoomEvent;->ZOOM_STARTED:Ljavafx/event/EventType;

    if-eq v5, v6, :cond_3

    move-object v5, v2

    .line 1831
    invoke-virtual {v5}, Ljavafx/scene/input/GestureEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/RotateEvent;->ROTATION_STARTED:Ljavafx/event/EventType;

    if-eq v5, v6, :cond_3

    move-object v5, v2

    .line 1832
    invoke-virtual {v5}, Ljavafx/scene/input/GestureEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/ScrollEvent;->SCROLL_STARTED:Ljavafx/event/EventType;

    if-ne v5, v6, :cond_4

    .line 1833
    :cond_3
    move-object v5, v3

    move-object v6, v4

    iput-object v6, v5, Ljavafx/scene/Scene$TouchGesture;->target:Ljavafx/event/EventTarget;

    .line 1835
    :cond_4
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/input/GestureEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/ZoomEvent;->ZOOM_FINISHED:Ljavafx/event/EventType;

    if-eq v5, v6, :cond_5

    move-object v5, v2

    .line 1836
    invoke-virtual {v5}, Ljavafx/scene/input/GestureEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/RotateEvent;->ROTATION_FINISHED:Ljavafx/event/EventType;

    if-eq v5, v6, :cond_5

    move-object v5, v2

    .line 1837
    invoke-virtual {v5}, Ljavafx/scene/input/GestureEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/ScrollEvent;->SCROLL_FINISHED:Ljavafx/event/EventType;

    if-eq v5, v6, :cond_5

    move-object v5, v2

    .line 1838
    invoke-virtual {v5}, Ljavafx/scene/input/GestureEvent;->isInertia()Z

    move-result v5

    if-nez v5, :cond_5

    .line 1839
    move-object v5, v3

    new-instance v6, Ljavafx/geometry/Point2D;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/input/GestureEvent;->getSceneX()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/GestureEvent;->getSceneY()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    iput-object v6, v5, Ljavafx/scene/Scene$TouchGesture;->sceneCoords:Ljavafx/geometry/Point2D;

    .line 1840
    move-object v5, v3

    new-instance v6, Ljavafx/geometry/Point2D;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/input/GestureEvent;->getScreenX()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/scene/input/GestureEvent;->getScreenY()D

    move-result-wide v10

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    iput-object v6, v5, Ljavafx/scene/Scene$TouchGesture;->screenCoords:Ljavafx/geometry/Point2D;

    .line 1843
    :cond_5
    move-object v5, v4

    if-eqz v5, :cond_6

    .line 1844
    move-object v5, v4

    move-object v6, v2

    invoke-static {v5, v6}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 1847
    :cond_6
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/input/GestureEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/ZoomEvent;->ZOOM_FINISHED:Ljavafx/event/EventType;

    if-eq v5, v6, :cond_7

    move-object v5, v2

    .line 1848
    invoke-virtual {v5}, Ljavafx/scene/input/GestureEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/RotateEvent;->ROTATION_FINISHED:Ljavafx/event/EventType;

    if-eq v5, v6, :cond_7

    move-object v5, v2

    .line 1849
    invoke-virtual {v5}, Ljavafx/scene/input/GestureEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v5

    sget-object v6, Ljavafx/scene/input/ScrollEvent;->SCROLL_FINISHED:Ljavafx/event/EventType;

    if-ne v5, v6, :cond_8

    .line 1850
    :cond_7
    move-object v5, v3

    const/4 v6, 0x1

    iput-boolean v6, v5, Ljavafx/scene/Scene$TouchGesture;->finished:Z

    .line 1852
    :cond_8
    return-void

    .line 1824
    :cond_9
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/input/GestureEvent;->getPickResult()Ljavafx/scene/input/PickResult;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/input/PickResult;->getIntersectedNode()Ljavafx/scene/Node;

    move-result-object v5

    move-object v4, v5

    .line 1825
    move-object v5, v4

    if-nez v5, :cond_2

    .line 1826
    move-object v5, v1

    move-object v4, v5

    goto/16 :goto_0
.end method

.method private processInputMethodEvent(Ljavafx/scene/input/InputMethodEvent;)V
    .locals 5

    .prologue
    .line 2117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/InputMethodEvent;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getFocusOwner()Ljavafx/scene/Node;

    move-result-object v3

    move-object v2, v3

    .line 2118
    .local v2, "node":Ljavafx/scene/Node;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 2119
    move-object v3, v2

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/Node;->fireEvent(Ljavafx/event/Event;)V

    .line 2121
    :cond_0
    return-void
.end method

.method private processMenuEvent(DDDDZ)V
    .locals 33

    .prologue
    .line 1766
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Scene;
    move-wide/from16 v2, p1

    .local v2, "x2":D
    move-wide/from16 v4, p3

    .local v4, "y2":D
    move-wide/from16 v6, p5

    .local v6, "xAbs":D
    move-wide/from16 v8, p7

    .local v8, "yAbs":D
    move/from16 v10, p9

    .local v10, "isKeyboardTrigger":Z
    const/16 v18, 0x0

    move-object/from16 v11, v18

    .line 1767
    .local v11, "eventTarget":Ljavafx/event/EventTarget;
    const/16 v18, 0x1

    sput-boolean v18, Ljavafx/scene/Scene;->inMousePick:Z

    .line 1768
    move/from16 v18, v10

    if-eqz v18, :cond_0

    .line 1769
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Scene;->getFocusOwner()Ljavafx/scene/Node;

    move-result-object v18

    move-object/from16 v12, v18

    .line 1772
    .local v12, "sceneFocusOwner":Ljavafx/scene/Node;
    move-wide/from16 v18, v6

    move-wide/from16 v20, v2

    sub-double v18, v18, v20

    move-wide/from16 v13, v18

    .line 1773
    .local v13, "xOffset":D
    move-wide/from16 v18, v8

    move-wide/from16 v20, v4

    sub-double v18, v18, v20

    move-wide/from16 v15, v18

    .line 1774
    .local v15, "yOffset":D
    move-object/from16 v18, v12

    if-eqz v18, :cond_3

    .line 1775
    move-object/from16 v18, v12

    move-object/from16 v19, v12

    .line 1776
    invoke-virtual/range {v19 .. v19}, Ljavafx/scene/Node;->getBoundsInLocal()Ljavafx/geometry/Bounds;

    move-result-object v19

    .line 1775
    invoke-virtual/range {v18 .. v19}, Ljavafx/scene/Node;->localToScene(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v18

    move-object/from16 v17, v18

    .line 1777
    .local v17, "bounds":Ljavafx/geometry/Bounds;
    move-object/from16 v18, v17

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v18

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v20

    const-wide/high16 v22, 0x4010000000000000L    # 4.0

    div-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v2, v18

    .line 1778
    move-object/from16 v18, v17

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v18

    move-object/from16 v20, v17

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v20

    const-wide/high16 v22, 0x4000000000000000L    # 2.0

    div-double v20, v20, v22

    add-double v18, v18, v20

    move-wide/from16 v4, v18

    .line 1779
    move-object/from16 v18, v12

    move-object/from16 v11, v18

    .line 1786
    .end local v17    # "bounds":Ljavafx/geometry/Bounds;
    :goto_0
    move-wide/from16 v18, v2

    move-wide/from16 v20, v13

    add-double v18, v18, v20

    move-wide/from16 v6, v18

    .line 1787
    move-wide/from16 v18, v4

    move-wide/from16 v20, v15

    add-double v18, v18, v20

    move-wide/from16 v8, v18

    .line 1790
    .end local v12    # "sceneFocusOwner":Ljavafx/scene/Node;
    .end local v13    # "xOffset":D
    .end local v15    # "yOffset":D
    :cond_0
    move-object/from16 v18, v1

    move-wide/from16 v19, v2

    move-wide/from16 v21, v4

    invoke-direct/range {v18 .. v22}, Ljavafx/scene/Scene;->pick(DD)Ljavafx/scene/input/PickResult;

    move-result-object v18

    move-object/from16 v12, v18

    .line 1792
    .local v12, "res":Ljavafx/scene/input/PickResult;
    move/from16 v18, v10

    if-nez v18, :cond_1

    .line 1793
    move-object/from16 v18, v12

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/input/PickResult;->getIntersectedNode()Ljavafx/scene/Node;

    move-result-object v18

    move-object/from16 v11, v18

    .line 1794
    move-object/from16 v18, v11

    if-nez v18, :cond_1

    .line 1795
    move-object/from16 v18, v1

    move-object/from16 v11, v18

    .line 1799
    :cond_1
    move-object/from16 v18, v11

    if-eqz v18, :cond_2

    .line 1800
    new-instance v18, Ljavafx/scene/input/ContextMenuEvent;

    move-object/from16 v31, v18

    move-object/from16 v18, v31

    move-object/from16 v19, v31

    sget-object v20, Ljavafx/scene/input/ContextMenuEvent;->CONTEXT_MENU_REQUESTED:Ljavafx/event/EventType;

    move-wide/from16 v21, v2

    move-wide/from16 v23, v4

    move-wide/from16 v25, v6

    move-wide/from16 v27, v8

    move/from16 v29, v10

    move-object/from16 v30, v12

    invoke-direct/range {v19 .. v30}, Ljavafx/scene/input/ContextMenuEvent;-><init>(Ljavafx/event/EventType;DDDDZLjavafx/scene/input/PickResult;)V

    move-object/from16 v13, v18

    .line 1802
    .local v13, "context":Ljavafx/scene/input/ContextMenuEvent;
    move-object/from16 v18, v11

    move-object/from16 v19, v13

    invoke-static/range {v18 .. v19}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 1804
    .end local v13    # "context":Ljavafx/scene/input/ContextMenuEvent;
    :cond_2
    const/16 v18, 0x0

    sput-boolean v18, Ljavafx/scene/Scene;->inMousePick:Z

    .line 1805
    return-void

    .line 1781
    .local v12, "sceneFocusOwner":Ljavafx/scene/Node;
    .local v13, "xOffset":D
    .restart local v15    # "yOffset":D
    :cond_3
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Scene;->getWidth()D

    move-result-wide v18

    const-wide/high16 v20, 0x4010000000000000L    # 4.0

    div-double v18, v18, v20

    move-wide/from16 v2, v18

    .line 1782
    move-object/from16 v18, v1

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Scene;->getWidth()D

    move-result-wide v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    move-wide/from16 v4, v18

    .line 1783
    move-object/from16 v18, v1

    move-object/from16 v11, v18

    goto :goto_0
.end method

.method private processTouchEvent(Ljavafx/scene/input/TouchEvent;[Ljavafx/scene/input/TouchPoint;)V
    .locals 25

    .prologue
    .line 1855
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Scene;
    move-object/from16 v2, p1

    .local v2, "e":Ljavafx/scene/input/TouchEvent;
    move-object/from16 v3, p2

    .local v3, "touchPoints":[Ljavafx/scene/input/TouchPoint;
    const/4 v14, 0x1

    sput-boolean v14, Ljavafx/scene/Scene;->inMousePick:Z

    .line 1856
    move-object v14, v1

    move-object/from16 v24, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v24

    iget v15, v15, Ljavafx/scene/Scene;->touchEventSetId:I

    const/16 v16, 0x1

    add-int/lit8 v15, v15, 0x1

    iput v15, v14, Ljavafx/scene/Scene;->touchEventSetId:I

    .line 1858
    move-object v14, v3

    invoke-static {v14}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v14

    move-object v4, v14

    .line 1861
    .local v4, "touchList":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/input/TouchPoint;>;"
    move-object v14, v3

    move-object v5, v14

    move-object v14, v5

    array-length v14, v14

    move v6, v14

    const/4 v14, 0x0

    move v7, v14

    :goto_0
    move v14, v7

    move v15, v6

    if-ge v14, v15, :cond_2

    move-object v14, v5

    move v15, v7

    aget-object v14, v14, v15

    move-object v8, v14

    .line 1862
    .local v8, "tp":Ljavafx/scene/input/TouchPoint;
    move-object v14, v8

    invoke-virtual {v14}, Ljavafx/scene/input/TouchPoint;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 1863
    const/4 v14, 0x0

    move-object v9, v14

    .line 1864
    .local v9, "type":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/TouchEvent;>;"
    sget-object v14, Ljavafx/scene/Scene$55;->$SwitchMap$javafx$scene$input$TouchPoint$State:[I

    move-object v15, v8

    invoke-virtual {v15}, Ljavafx/scene/input/TouchPoint;->getState()Ljavafx/scene/input/TouchPoint$State;

    move-result-object v15

    invoke-virtual {v15}, Ljavafx/scene/input/TouchPoint$State;->ordinal()I

    move-result v15

    aget v14, v14, v15

    packed-switch v14, :pswitch_data_0

    .line 1879
    :goto_1
    move-object v14, v3

    move-object v10, v14

    move-object v14, v10

    array-length v14, v14

    move v11, v14

    const/4 v14, 0x0

    move v12, v14

    :goto_2
    move v14, v12

    move v15, v11

    if-ge v14, v15, :cond_0

    move-object v14, v10

    move v15, v12

    aget-object v14, v14, v15

    move-object v13, v14

    .line 1880
    .local v13, "t":Ljavafx/scene/input/TouchPoint;
    move-object v14, v13

    invoke-virtual {v14}, Ljavafx/scene/input/TouchPoint;->impl_reset()V

    .line 1879
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 1866
    .end local v13    # "t":Ljavafx/scene/input/TouchPoint;
    :pswitch_0
    sget-object v14, Ljavafx/scene/input/TouchEvent;->TOUCH_MOVED:Ljavafx/event/EventType;

    move-object v9, v14

    .line 1867
    goto :goto_1

    .line 1869
    :pswitch_1
    sget-object v14, Ljavafx/scene/input/TouchEvent;->TOUCH_PRESSED:Ljavafx/event/EventType;

    move-object v9, v14

    .line 1870
    goto :goto_1

    .line 1872
    :pswitch_2
    sget-object v14, Ljavafx/scene/input/TouchEvent;->TOUCH_RELEASED:Ljavafx/event/EventType;

    move-object v9, v14

    .line 1873
    goto :goto_1

    .line 1875
    :pswitch_3
    sget-object v14, Ljavafx/scene/input/TouchEvent;->TOUCH_STATIONARY:Ljavafx/event/EventType;

    move-object v9, v14

    goto :goto_1

    .line 1883
    :cond_0
    new-instance v14, Ljavafx/scene/input/TouchEvent;

    move-object/from16 v24, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v24

    move-object/from16 v16, v9

    move-object/from16 v17, v8

    move-object/from16 v18, v4

    move-object/from16 v19, v1

    move-object/from16 v0, v19

    iget v0, v0, Ljavafx/scene/Scene;->touchEventSetId:I

    move/from16 v19, v0

    move-object/from16 v20, v2

    .line 1884
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/input/TouchEvent;->isShiftDown()Z

    move-result v20

    move-object/from16 v21, v2

    invoke-virtual/range {v21 .. v21}, Ljavafx/scene/input/TouchEvent;->isControlDown()Z

    move-result v21

    move-object/from16 v22, v2

    .line 1885
    invoke-virtual/range {v22 .. v22}, Ljavafx/scene/input/TouchEvent;->isAltDown()Z

    move-result v22

    move-object/from16 v23, v2

    invoke-virtual/range {v23 .. v23}, Ljavafx/scene/input/TouchEvent;->isMetaDown()Z

    move-result v23

    invoke-direct/range {v15 .. v23}, Ljavafx/scene/input/TouchEvent;-><init>(Ljavafx/event/EventType;Ljavafx/scene/input/TouchPoint;Ljava/util/List;IZZZZ)V

    move-object v10, v14

    .line 1887
    .local v10, "te":Ljavafx/scene/input/TouchEvent;
    move-object v14, v8

    invoke-virtual {v14}, Ljavafx/scene/input/TouchPoint;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v14

    move-object v15, v10

    invoke-static {v14, v15}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 1861
    .end local v9    # "type":Ljavafx/event/EventType;, "Ljavafx/event/EventType<Ljavafx/scene/input/TouchEvent;>;"
    .end local v10    # "te":Ljavafx/scene/input/TouchEvent;
    :cond_1
    add-int/lit8 v7, v7, 0x1

    goto/16 :goto_0

    .line 1892
    .end local v8    # "tp":Ljavafx/scene/input/TouchPoint;
    :cond_2
    move-object v14, v3

    move-object v5, v14

    move-object v14, v5

    array-length v14, v14

    move v6, v14

    const/4 v14, 0x0

    move v7, v14

    :goto_3
    move v14, v7

    move v15, v6

    if-ge v14, v15, :cond_6

    move-object v14, v5

    move v15, v7

    aget-object v14, v14, v15

    move-object v8, v14

    .line 1893
    .restart local v8    # "tp":Ljavafx/scene/input/TouchPoint;
    move-object v14, v8

    invoke-virtual {v14}, Ljavafx/scene/input/TouchPoint;->getGrabbed()Ljavafx/event/EventTarget;

    move-result-object v14

    move-object v9, v14

    .line 1894
    .local v9, "grabbed":Ljavafx/event/EventTarget;
    move-object v14, v9

    if-eqz v14, :cond_3

    .line 1895
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/Scene;->touchTargets:Ljava/util/Map;

    move-object v15, v8

    invoke-virtual {v15}, Ljavafx/scene/input/TouchPoint;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    move-object/from16 v16, v9

    invoke-interface/range {v14 .. v16}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 1898
    :cond_3
    move-object v14, v9

    if-eqz v14, :cond_4

    move-object v14, v8

    invoke-virtual {v14}, Ljavafx/scene/input/TouchPoint;->getState()Ljavafx/scene/input/TouchPoint$State;

    move-result-object v14

    sget-object v15, Ljavafx/scene/input/TouchPoint$State;->RELEASED:Ljavafx/scene/input/TouchPoint$State;

    if-ne v14, v15, :cond_5

    .line 1899
    :cond_4
    move-object v14, v1

    iget-object v14, v14, Ljavafx/scene/Scene;->touchTargets:Ljava/util/Map;

    move-object v15, v8

    invoke-virtual {v15}, Ljavafx/scene/input/TouchPoint;->getId()I

    move-result v15

    invoke-static {v15}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v15

    invoke-interface {v14, v15}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .line 1892
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 1903
    .end local v8    # "tp":Ljavafx/scene/input/TouchPoint;
    .end local v9    # "grabbed":Ljavafx/event/EventTarget;
    :cond_6
    const/4 v14, 0x0

    sput-boolean v14, Ljavafx/scene/Scene;->inMousePick:Z

    .line 1904
    return-void

    .line 1864
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method private sceneEffectiveOrientationInvalidated()V
    .locals 3

    .prologue
    .line 6220
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/Scene;->effectiveNodeOrientation:Ljavafx/geometry/NodeOrientation;

    .line 6222
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->effectiveNodeOrientationProperty:Ljavafx/scene/Scene$EffectiveOrientationProperty;

    if-eqz v1, :cond_0

    .line 6223
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->effectiveNodeOrientationProperty:Ljavafx/scene/Scene$EffectiveOrientationProperty;

    invoke-virtual {v1}, Ljavafx/scene/Scene$EffectiveOrientationProperty;->invalidate()V

    .line 6226
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Parent;->parentResolvedOrientationInvalidated()V

    .line 6227
    return-void
.end method

.method private setDirty(Ljavafx/scene/Scene$DirtyBits;)V
    .locals 6

    .prologue
    .line 2171
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "dirtyBit":Ljavafx/scene/Scene$DirtyBits;
    move-object v2, v0

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    iget v3, v3, Ljavafx/scene/Scene;->dirtyBits:I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Scene$DirtyBits;->getMask()I

    move-result v4

    or-int/2addr v3, v4

    iput v3, v2, Ljavafx/scene/Scene;->dirtyBits:I

    .line 2172
    return-void
.end method

.method private final setHeight(D)V
    .locals 7

    .prologue
    .line 866
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Scene;->heightPropertyImpl()Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 867
    return-void
.end method

.method private final setWidth(D)V
    .locals 7

    .prologue
    .line 817
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Scene;->widthPropertyImpl()Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 818
    return-void
.end method

.method private setWindow(Ljavafx/stage/Window;)V
    .locals 4

    .prologue
    .line 619
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/stage/Window;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Scene;->windowPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 620
    return-void
.end method

.method private final setX(D)V
    .locals 7

    .prologue
    .line 769
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Scene;->xPropertyImpl()Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 770
    return-void
.end method

.method private final setY(D)V
    .locals 7

    .prologue
    .line 793
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Scene;->yPropertyImpl()Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->set(D)V

    .line 794
    return-void
.end method

.method private syncLights()V
    .locals 7

    .prologue
    .line 2231
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v3, v0

    sget-object v4, Ljavafx/scene/Scene$DirtyBits;->LIGHTS_DIRTY:Ljavafx/scene/Scene$DirtyBits;

    invoke-direct {v3, v4}, Ljavafx/scene/Scene;->isDirty(Ljavafx/scene/Scene$DirtyBits;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 2232
    .line 2255
    :goto_0
    return-void

    .line 2234
    :cond_0
    const/4 v3, 0x1

    sput-boolean v3, Ljavafx/scene/Scene;->inSynchronizer:Z

    .line 2235
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    invoke-interface {v3}, Lcom/sun/javafx/tk/TKScene;->getLights()[Lcom/sun/javafx/sg/prism/NGLightBase;

    move-result-object v3

    move-object v1, v3

    .line 2236
    .local v1, "peerLights":[Lcom/sun/javafx/sg/prism/NGLightBase;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->lights:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    if-eqz v3, :cond_2

    .line 2237
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->lights:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 2238
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/TKScene;->setLights([Lcom/sun/javafx/sg/prism/NGLightBase;)V

    .line 2254
    :cond_2
    :goto_1
    const/4 v3, 0x0

    sput-boolean v3, Ljavafx/scene/Scene;->inSynchronizer:Z

    .line 2255
    goto :goto_0

    .line 2240
    :cond_3
    move-object v3, v1

    if-eqz v3, :cond_4

    move-object v3, v1

    array-length v3, v3

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene;->lights:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_5

    .line 2241
    :cond_4
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->lights:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    new-array v3, v3, [Lcom/sun/javafx/sg/prism/NGLightBase;

    move-object v1, v3

    .line 2243
    :cond_5
    const/4 v3, 0x0

    move v2, v3

    .line 2244
    .local v2, "i":I
    :goto_2
    move v3, v2

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene;->lights:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge v3, v4, :cond_6

    .line 2245
    move-object v3, v1

    move v4, v2

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene;->lights:Ljava/util/List;

    move v6, v2

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/LightBase;

    invoke-virtual {v5}, Ljavafx/scene/LightBase;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/sg/prism/NGLightBase;

    aput-object v5, v3, v4

    .line 2244
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 2248
    :cond_6
    :goto_3
    move v3, v2

    move-object v4, v1

    array-length v4, v4

    if-ge v3, v4, :cond_7

    move-object v3, v1

    move v4, v2

    aget-object v3, v3, v4

    if-eqz v3, :cond_7

    .line 2249
    move-object v3, v1

    move v4, v2

    add-int/lit8 v2, v2, 0x1

    const/4 v5, 0x0

    aput-object v5, v3, v4

    goto :goto_3

    .line 2251
    :cond_7
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    move-object v4, v1

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/TKScene;->setLights([Lcom/sun/javafx/sg/prism/NGLightBase;)V

    goto :goto_1
.end method

.method private widthPropertyImpl()Ljavafx/beans/property/ReadOnlyDoubleWrapper;
    .locals 6

    .prologue
    .line 829
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    if-nez v1, :cond_0

    .line 830
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$5;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 857
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method private windowPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/stage/Window;",
            ">;"
        }
    .end annotation

    .prologue
    .line 631
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->window:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 632
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$4;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$4;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->window:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 660
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->window:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method private xPropertyImpl()Ljavafx/beans/property/ReadOnlyDoubleWrapper;
    .locals 7

    .prologue
    .line 781
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->x:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    if-nez v1, :cond_0

    .line 782
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "x"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->x:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 784
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->x:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method private yPropertyImpl()Ljavafx/beans/property/ReadOnlyDoubleWrapper;
    .locals 7

    .prologue
    .line 805
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->y:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    if-nez v1, :cond_0

    .line 806
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "y"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->y:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    .line 808
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->y:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method


# virtual methods
.method addAccessible(Ljavafx/scene/Node;Lcom/sun/glass/ui/Accessible;)V
    .locals 7

    .prologue
    .line 6281
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "acc":Lcom/sun/glass/ui/Accessible;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->accMap:Ljava/util/Map;

    if-nez v3, :cond_0

    .line 6282
    move-object v3, v0

    new-instance v4, Ljava/util/HashMap;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v4, v3, Ljavafx/scene/Scene;->accMap:Ljava/util/Map;

    .line 6284
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->accMap:Ljava/util/Map;

    move-object v4, v1

    move-object v5, v2

    invoke-interface {v3, v4, v5}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 6285
    return-void
.end method

.method public final addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 4136
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventFilter":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Scene;->getInternalEventDispatcher()Lcom/sun/javafx/scene/SceneEventDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/scene/SceneEventDispatcher;->getEventHandlerManager()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 4137
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 4138
    return-void
.end method

.method public final addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 4098
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Scene;->getInternalEventDispatcher()Lcom/sun/javafx/scene/SceneEventDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/scene/SceneEventDispatcher;->getEventHandlerManager()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 4099
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 4100
    return-void
.end method

.method final addLight(Ljavafx/scene/LightBase;)V
    .locals 4

    .prologue
    .line 2215
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "light":Ljavafx/scene/LightBase;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene;->lights:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2216
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene;->lights:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v2

    .line 2217
    move-object v2, v0

    sget-object v3, Ljavafx/scene/Scene$DirtyBits;->LIGHTS_DIRTY:Ljavafx/scene/Scene$DirtyBits;

    invoke-direct {v2, v3}, Ljavafx/scene/Scene;->markDirty(Ljavafx/scene/Scene$DirtyBits;)V

    .line 2219
    :cond_0
    return-void
.end method

.method public addMnemonic(Ljavafx/scene/input/Mnemonic;)V
    .locals 4

    .prologue
    .line 4202
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "m":Ljavafx/scene/input/Mnemonic;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Scene;->getInternalEventDispatcher()Lcom/sun/javafx/scene/SceneEventDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/scene/SceneEventDispatcher;->getKeyboardShortcutsHandler()Lcom/sun/javafx/scene/KeyboardShortcutsHandler;

    move-result-object v2

    move-object v3, v1

    .line 4203
    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->addMnemonic(Ljavafx/scene/input/Mnemonic;)V

    .line 4204
    return-void
.end method

.method addToDirtyList(Ljavafx/scene/Node;)V
    .locals 10

    .prologue
    .line 507
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "n":Ljavafx/scene/Node;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->dirtyNodes:[Ljavafx/scene/Node;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget v3, v3, Ljavafx/scene/Scene;->dirtyNodesSize:I

    if-nez v3, :cond_1

    .line 508
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    if-eqz v3, :cond_1

    .line 509
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/tk/Toolkit;->requestNextPulse()V

    .line 513
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->dirtyNodes:[Ljavafx/scene/Node;

    if-eqz v3, :cond_3

    .line 514
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/Scene;->dirtyNodesSize:I

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene;->dirtyNodes:[Ljavafx/scene/Node;

    array-length v4, v4

    if-ne v3, v4, :cond_2

    .line 515
    move-object v3, v0

    iget v3, v3, Ljavafx/scene/Scene;->dirtyNodesSize:I

    move-object v4, v0

    iget v4, v4, Ljavafx/scene/Scene;->dirtyNodesSize:I

    const/4 v5, 0x1

    shr-int/lit8 v4, v4, 0x1

    add-int/2addr v3, v4

    new-array v3, v3, [Ljavafx/scene/Node;

    move-object v2, v3

    .line 516
    .local v2, "tmp":[Ljavafx/scene/Node;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->dirtyNodes:[Ljavafx/scene/Node;

    const/4 v4, 0x0

    move-object v5, v2

    const/4 v6, 0x0

    move-object v7, v0

    iget v7, v7, Ljavafx/scene/Scene;->dirtyNodesSize:I

    invoke-static {v3, v4, v5, v6, v7}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 517
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/Scene;->dirtyNodes:[Ljavafx/scene/Node;

    .line 519
    .end local v2    # "tmp":[Ljavafx/scene/Node;
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->dirtyNodes:[Ljavafx/scene/Node;

    move-object v4, v0

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    iget v5, v5, Ljavafx/scene/Scene;->dirtyNodesSize:I

    move-object v8, v4

    move v9, v5

    move v4, v9

    move-object v5, v8

    move v6, v9

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    iput v6, v5, Ljavafx/scene/Scene;->dirtyNodesSize:I

    move-object v5, v1

    aput-object v5, v3, v4

    .line 521
    :cond_3
    return-void
.end method

.method public buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;
    .locals 5

    .prologue
    .line 4254
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "tail":Ljavafx/event/EventDispatchChain;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->eventDispatcher:Ljavafx/beans/property/ObjectProperty;

    if-eqz v3, :cond_0

    .line 4255
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->eventDispatcher:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/event/EventDispatcher;

    move-object v2, v3

    .line 4256
    .local v2, "eventDispatcherValue":Ljavafx/event/EventDispatcher;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 4257
    move-object v3, v1

    move-object v4, v2

    invoke-interface {v3, v4}, Ljavafx/event/EventDispatchChain;->prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v3

    move-object v1, v3

    .line 4261
    .end local v2    # "eventDispatcherValue":Ljavafx/event/EventDispatcher;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 4262
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/stage/Window;->buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;

    move-result-object v3

    move-object v1, v3

    .line 4265
    :cond_1
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final cameraProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Camera;",
            ">;"
        }
    .end annotation

    .prologue
    .line 935
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->camera:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 936
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$7;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$7;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->camera:Ljavafx/beans/property/ObjectProperty;

    .line 977
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->camera:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method final clearNodeMnemonics(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 4218
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Scene;->getInternalEventDispatcher()Lcom/sun/javafx/scene/SceneEventDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/scene/SceneEventDispatcher;->getKeyboardShortcutsHandler()Lcom/sun/javafx/scene/KeyboardShortcutsHandler;

    move-result-object v2

    move-object v3, v1

    .line 4219
    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->clearNodeMnemonics(Ljavafx/scene/Node;)V

    .line 4220
    return-void
.end method

.method public final cursorProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Cursor;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1449
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->cursor:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1450
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$10;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$10;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->cursor:Ljavafx/beans/property/ObjectProperty;

    .line 1467
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->cursor:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method doCSSLayoutSyncForSnapshot(Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 1149
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/Scene;->sizeInitialized:Z

    if-nez v3, :cond_1

    .line 1150
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Scene;->preferredSize()V

    .line 1157
    :goto_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Scene;->doLayoutPass()V

    .line 1159
    sget-boolean v3, Ljavafx/scene/Scene;->paused:Z

    if-nez v3, :cond_0

    .line 1160
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/Parent;->updateBounds()V

    .line 1161
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    if-eqz v3, :cond_2

    .line 1162
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    invoke-interface {v3}, Lcom/sun/javafx/tk/TKScene;->waitForRenderingToComplete()V

    .line 1163
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    invoke-interface {v3}, Lcom/sun/javafx/tk/TKScene;->waitForSynchronization()V

    .line 1166
    move-object v3, v0

    :try_start_0
    iget-object v3, v3, Ljavafx/scene/Scene;->scenePulseListener:Ljavafx/scene/Scene$ScenePulseListener;

    invoke-static {v3}, Ljavafx/scene/Scene$ScenePulseListener;->access$1200(Ljavafx/scene/Scene$ScenePulseListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1168
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/TKScene;->releaseSynchronization(Z)V

    .line 1169
    .line 1168
    .line 1175
    :cond_0
    :goto_1
    return-void

    .line 1152
    :cond_1
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Scene;->doCSSPass()V

    goto :goto_0

    .line 1168
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    const/4 v4, 0x0

    invoke-interface {v3, v4}, Lcom/sun/javafx/tk/TKScene;->releaseSynchronization(Z)V

    move-object v3, v2

    throw v3

    .line 1171
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->scenePulseListener:Ljavafx/scene/Scene$ScenePulseListener;

    invoke-static {v3}, Ljavafx/scene/Scene$ScenePulseListener;->access$1200(Ljavafx/scene/Scene$ScenePulseListener;)V

    goto :goto_1
.end method

.method doLayoutPass()V
    .locals 3

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v1, v2

    .line 551
    .local v1, "r":Ljavafx/scene/Parent;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 552
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Parent;->layout()V

    .line 554
    :cond_0
    return-void
.end method

.method public final effectiveNodeOrientationProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/geometry/NodeOrientation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->effectiveNodeOrientationProperty:Ljavafx/scene/Scene$EffectiveOrientationProperty;

    if-nez v1, :cond_0

    .line 6206
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$EffectiveOrientationProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Scene$EffectiveOrientationProperty;-><init>(Ljavafx/scene/Scene;Ljavafx/scene/Scene$1;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->effectiveNodeOrientationProperty:Ljavafx/scene/Scene$EffectiveOrientationProperty;

    .line 6210
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->effectiveNodeOrientationProperty:Ljavafx/scene/Scene$EffectiveOrientationProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final eventDispatcherProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventDispatcher;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4002
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Scene;->initializeInternalEventDispatcher()V

    .line 4003
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->eventDispatcher:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final fillProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Paint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1035
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->fill:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1036
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$8;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/paint/Color;->WHITE:Ljavafx/scene/paint/Color;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Scene$8;-><init>(Ljavafx/scene/Scene;Ljavafx/scene/paint/Paint;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->fill:Ljavafx/beans/property/ObjectProperty;

    .line 1054
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->fill:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method focusCleanup()V
    .locals 2

    .prologue
    .line 2113
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->scenePulseListener:Ljavafx/scene/Scene$ScenePulseListener;

    invoke-static {v1}, Ljavafx/scene/Scene$ScenePulseListener;->access$2400(Ljavafx/scene/Scene$ScenePulseListener;)V

    .line 2114
    return-void
.end method

.method public final focusOwnerProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 2108
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->focusOwner:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method generateMouseExited(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 3486
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "removing":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene;->mouseHandler:Ljavafx/scene/Scene$MouseHandler;

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/Scene$MouseHandler;->access$7600(Ljavafx/scene/Scene$MouseHandler;Ljavafx/scene/Node;)V

    .line 3487
    return-void
.end method

.method public getAccelerators()Ljavafx/collections/ObservableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljavafx/scene/input/KeyCombination;",
            "Ljava/lang/Runnable;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4239
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene;->getInternalEventDispatcher()Lcom/sun/javafx/scene/SceneEventDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/SceneEventDispatcher;->getKeyboardShortcutsHandler()Lcom/sun/javafx/scene/KeyboardShortcutsHandler;

    move-result-object v1

    .line 4240
    invoke-virtual {v1}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->getAccelerators()Ljavafx/collections/ObservableMap;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method getAccessible()Lcom/sun/glass/ui/Accessible;
    .locals 6

    .prologue
    .line 6327
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move-object v0, v1

    .line 6378
    .end local v0    # "this":Ljavafx/scene/Scene;
    :goto_0
    return-object v0

    .line 6328
    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->accessible:Lcom/sun/glass/ui/Accessible;

    if-nez v1, :cond_1

    .line 6329
    move-object v1, v0

    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/glass/ui/Application;->createAccessible()Lcom/sun/glass/ui/Accessible;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/Scene;->accessible:Lcom/sun/glass/ui/Accessible;

    .line 6330
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->accessible:Lcom/sun/glass/ui/Accessible;

    new-instance v2, Ljavafx/scene/Scene$54;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$54;-><init>(Ljavafx/scene/Scene;)V

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/Accessible;->setEventHandler(Lcom/sun/glass/ui/Accessible$EventHandler;)V

    .line 6376
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->accessibilityActiveProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 6378
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->accessible:Lcom/sun/glass/ui/Accessible;

    move-object v0, v1

    goto :goto_0
.end method

.method public final getAntiAliasing()Ljavafx/scene/SceneAntialiasing;
    .locals 2

    .prologue
    .line 603
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->antiAliasing:Ljavafx/scene/SceneAntialiasing;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final getCamera()Ljavafx/scene/Camera;
    .locals 2

    .prologue
    .line 931
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->camera:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->camera:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Camera;

    goto :goto_0
.end method

.method public final getCursor()Ljavafx/scene/Cursor;
    .locals 2

    .prologue
    .line 1445
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->cursor:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->cursor:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Cursor;

    goto :goto_0
.end method

.method getEffectiveCamera()Ljavafx/scene/Camera;
    .locals 7

    .prologue
    .line 981
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Scene;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getCamera()Ljavafx/scene/Camera;

    move-result-object v3

    move-object v2, v3

    .line 982
    .local v2, "cam":Ljavafx/scene/Camera;
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    instance-of v3, v3, Ljavafx/scene/PerspectiveCamera;

    if-eqz v3, :cond_2

    sget-object v3, Ljavafx/application/ConditionalFeature;->SCENE3D:Ljavafx/application/ConditionalFeature;

    .line 984
    invoke-static {v3}, Ljavafx/application/Platform;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v3

    if-nez v3, :cond_2

    .line 985
    :cond_0
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/Scene;->defaultCamera:Ljavafx/scene/Camera;

    if-nez v3, :cond_1

    .line 986
    move-object v3, v1

    new-instance v4, Ljavafx/scene/ParallelCamera;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    invoke-direct {v5}, Ljavafx/scene/ParallelCamera;-><init>()V

    iput-object v4, v3, Ljavafx/scene/Scene;->defaultCamera:Ljavafx/scene/Camera;

    .line 987
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/Scene;->defaultCamera:Ljavafx/scene/Camera;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/Camera;->setOwnerScene(Ljavafx/scene/Scene;)V

    .line 988
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/Scene;->defaultCamera:Ljavafx/scene/Camera;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getWidth()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Camera;->setViewWidth(D)V

    .line 989
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/Scene;->defaultCamera:Ljavafx/scene/Camera;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getHeight()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Camera;->setViewHeight(D)V

    .line 991
    :cond_1
    move-object v3, v1

    iget-object v3, v3, Ljavafx/scene/Scene;->defaultCamera:Ljavafx/scene/Camera;

    move-object v1, v3

    .line 994
    .end local v1    # "this":Ljavafx/scene/Scene;
    :goto_0
    return-object v1

    .restart local v1    # "this":Ljavafx/scene/Scene;
    :cond_2
    move-object v3, v2

    move-object v1, v3

    goto :goto_0
.end method

.method public final getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;
    .locals 3

    .prologue
    .line 6191
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->effectiveNodeOrientation:Ljavafx/geometry/NodeOrientation;

    if-nez v1, :cond_0

    .line 6192
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Scene;->calcEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/Scene;->effectiveNodeOrientation:Ljavafx/geometry/NodeOrientation;

    .line 6195
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->effectiveNodeOrientation:Ljavafx/geometry/NodeOrientation;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final getEventDispatcher()Ljavafx/event/EventDispatcher;
    .locals 2

    .prologue
    .line 3997
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Scene;->eventDispatcherProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventDispatcher;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final getFill()Ljavafx/scene/paint/Paint;
    .locals 2

    .prologue
    .line 1031
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->fill:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/paint/Color;->WHITE:Ljavafx/scene/paint/Color;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->fill:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Paint;

    goto :goto_0
.end method

.method public final getFocusOwner()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 2104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->focusOwner:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final getHeight()D
    .locals 4

    .prologue
    .line 870
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Scene;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Scene;->height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/Scene;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Scene;->height:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getMnemonics()Ljavafx/collections/ObservableMap;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljavafx/scene/input/KeyCombination;",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/input/Mnemonic;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4229
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene;->getInternalEventDispatcher()Lcom/sun/javafx/scene/SceneEventDispatcher;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/SceneEventDispatcher;->getKeyboardShortcutsHandler()Lcom/sun/javafx/scene/KeyboardShortcutsHandler;

    move-result-object v1

    .line 4230
    invoke-virtual {v1}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->getMnemonics()Ljavafx/collections/ObservableMap;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final getNodeOrientation()Ljavafx/geometry/NodeOrientation;
    .locals 2

    .prologue
    .line 6145
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->nodeOrientation:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/Scene;->defaultNodeOrientation:Ljavafx/geometry/NodeOrientation;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->nodeOrientation:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/NodeOrientation;

    goto :goto_0
.end method

.method public final getOnContextMenuRequested()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ContextMenuEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4287
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onContextMenuRequested:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onContextMenuRequested:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnDragDetected()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4587
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragDetected:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragDetected:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnDragDone()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5688
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragDone:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragDone:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnDragDropped()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5649
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragDropped:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragDropped:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnDragEntered()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5507
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragEntered:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragEntered:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnDragExited()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5544
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragExited:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragExited:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnDragOver()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5581
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragOver:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragOver:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnInputMethodTextChanged()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/InputMethodEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5950
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onInputMethodTextChanged:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onInputMethodTextChanged:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnKeyPressed()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/KeyEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5818
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onKeyPressed:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onKeyPressed:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnKeyReleased()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/KeyEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5857
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onKeyReleased:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onKeyReleased:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnKeyTyped()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/KeyEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5899
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onKeyTyped:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onKeyTyped:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnMouseClicked()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4330
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseClicked:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseClicked:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnMouseDragEntered()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4701
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseDragEntered:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseDragEntered:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnMouseDragExited()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4739
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseDragExited:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseDragExited:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnMouseDragOver()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4625
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseDragOver:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseDragOver:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnMouseDragReleased()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4663
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseDragReleased:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseDragReleased:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnMouseDragged()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4367
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseDragged:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseDragged:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnMouseEntered()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4403
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseEntered:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseEntered:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnMouseExited()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4439
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseExited:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseExited:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnMouseMoved()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4476
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseMoved:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseMoved:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnMousePressed()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4513
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMousePressed:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMousePressed:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnMouseReleased()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4550
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseReleased:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseReleased:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnRotate()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/RotateEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4930
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onRotate:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onRotate:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnRotationFinished()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/RotateEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4967
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onRotationFinished:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onRotationFinished:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnRotationStarted()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/RotateEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4893
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onRotationStarted:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onRotationStarted:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnScroll()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4819
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onScroll:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onScroll:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnScrollFinished()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4856
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onScrollFinished:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onScrollFinished:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnScrollStarted()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 4783
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onScrollStarted:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onScrollStarted:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnSwipeDown()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5154
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onSwipeDown:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onSwipeDown:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnSwipeLeft()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5192
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onSwipeLeft:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onSwipeLeft:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnSwipeRight()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5230
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onSwipeRight:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onSwipeRight:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnSwipeUp()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5116
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onSwipeUp:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onSwipeUp:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnTouchMoved()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5310
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onTouchMoved:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onTouchMoved:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnTouchPressed()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5273
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onTouchPressed:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onTouchPressed:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnTouchReleased()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5347
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onTouchReleased:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onTouchReleased:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnTouchStationary()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5385
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onTouchStationary:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onTouchStationary:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnZoom()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ZoomEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5041
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onZoom:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onZoom:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnZoomFinished()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ZoomEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5078
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onZoomFinished:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onZoomFinished:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getOnZoomStarted()Ljavafx/event/EventHandler;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ZoomEvent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5004
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onZoomStarted:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onZoomStarted:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventHandler;

    goto :goto_0
.end method

.method public final getProperties()Ljavafx/collections/ObservableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljava/lang/Object;",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6079
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->properties:Ljavafx/collections/ObservableMap;

    if-nez v1, :cond_0

    .line 6080
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljavafx/collections/FXCollections;->observableMap(Ljava/util/Map;)Ljavafx/collections/ObservableMap;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/Scene;->properties:Ljavafx/collections/ObservableMap;

    .line 6082
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->properties:Ljavafx/collections/ObservableMap;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final getRoot()Ljavafx/scene/Parent;
    .locals 2

    .prologue
    .line 1076
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->root:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->root:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Parent;

    goto :goto_0
.end method

.method public final getStylesheets()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1543
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->stylesheets:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final getUserAgentStylesheet()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1577
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->userAgentStylesheet:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->userAgentStylesheet:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 6120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Scene;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v1

    sget-object v2, Ljavafx/scene/Scene;->USER_DATA_KEY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final getWidth()D
    .locals 4

    .prologue
    .line 821
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Scene;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Scene;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/Scene;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Scene;->width:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getWindow()Ljavafx/stage/Window;
    .locals 2

    .prologue
    .line 623
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->window:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->window:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/stage/Window;

    goto :goto_0
.end method

.method public final getX()D
    .locals 4

    .prologue
    .line 773
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Scene;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Scene;->x:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/Scene;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Scene;->x:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getY()D
    .locals 4

    .prologue
    .line 797
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Scene;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Scene;->y:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/Scene;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Scene;->y:Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    invoke-virtual {v2}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public hasProperties()Z
    .locals 2

    .prologue
    .line 6092
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->properties:Ljavafx/collections/ObservableMap;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->properties:Ljavafx/collections/ObservableMap;

    invoke-interface {v1}, Ljavafx/collections/ObservableMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 874
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene;->heightPropertyImpl()Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public impl_disposePeer()V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 737
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    if-nez v3, :cond_0

    .line 741
    .line 759
    :goto_0
    return-void

    .line 744
    :cond_0
    const-string v3, "Scene.disposePeer started"

    invoke-static {v3}, Lcom/sun/javafx/perf/PerformanceTracker;->logEvent(Ljava/lang/String;)V

    .line 746
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v3

    move-object v1, v3

    .line 747
    .local v1, "tk":Lcom/sun/javafx/tk/Toolkit;
    move-object v3, v1

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Scene;->scenePulseListener:Ljavafx/scene/Scene$ScenePulseListener;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/tk/Toolkit;->removeSceneTkPulseListener(Lcom/sun/javafx/tk/TKPulseListener;)V

    .line 748
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->accessible:Lcom/sun/glass/ui/Accessible;

    if-eqz v3, :cond_2

    .line 749
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Scene;->disposeAccessibles()V

    .line 750
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v3

    move-object v2, v3

    .line 751
    .local v2, "root":Ljavafx/scene/Node;
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Node;->releaseAccessible()V

    .line 752
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->accessible:Lcom/sun/glass/ui/Accessible;

    invoke-virtual {v3}, Lcom/sun/glass/ui/Accessible;->dispose()V

    .line 753
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/Scene;->accessible:Lcom/sun/glass/ui/Accessible;

    .line 755
    .end local v2    # "root":Ljavafx/scene/Node;
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    invoke-interface {v3}, Lcom/sun/javafx/tk/TKScene;->dispose()V

    .line 756
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    .line 758
    const-string v3, "Scene.disposePeer finished"

    invoke-static {v3}, Lcom/sun/javafx/perf/PerformanceTracker;->logEvent(Ljava/lang/String;)V

    .line 759
    goto :goto_0
.end method

.method public impl_enableInputMethodEvents(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2129
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move v1, p1

    .local v1, "enable":Z
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    if-eqz v2, :cond_0

    .line 2130
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/TKScene;->enableInputMethodEvents(Z)V

    .line 2132
    :cond_0
    return-void
.end method

.method public impl_getPeer()Lcom/sun/javafx/tk/TKScene;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 573
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public impl_getScenePulseListener()Lcom/sun/javafx/tk/TKPulseListener;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 587
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    invoke-static {}, Lcom/sun/javafx/runtime/SystemProperties;->isDebug()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 588
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->scenePulseListener:Ljavafx/scene/Scene$ScenePulseListener;

    move-object v0, v1

    .line 590
    .end local v0    # "this":Ljavafx/scene/Scene;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0
.end method

.method public impl_initPeer()V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 678
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    sget-boolean v5, Ljavafx/scene/Scene;->$assertionsDisabled:Z

    if-nez v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    if-eqz v5, :cond_0

    new-instance v5, Ljava/lang/AssertionError;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 680
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v5

    move-object v1, v5

    .line 684
    .local v1, "window":Ljavafx/stage/Window;
    sget-boolean v5, Ljavafx/scene/Scene;->$assertionsDisabled:Z

    if-nez v5, :cond_1

    move-object v5, v1

    if-nez v5, :cond_1

    new-instance v5, Ljava/lang/AssertionError;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    invoke-direct {v6}, Ljava/lang/AssertionError;-><init>()V

    throw v5

    .line 686
    :cond_1
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/stage/Window;->impl_getPeer()Lcom/sun/javafx/tk/TKStage;

    move-result-object v5

    move-object v2, v5

    .line 687
    .local v2, "windowPeer":Lcom/sun/javafx/tk/TKStage;
    move-object v5, v2

    if-nez v5, :cond_2

    .line 690
    .line 729
    :goto_0
    return-void

    .line 693
    :cond_2
    sget-object v5, Ljavafx/application/ConditionalFeature;->TRANSPARENT_WINDOW:Ljavafx/application/ConditionalFeature;

    invoke-static {v5}, Ljavafx/application/Platform;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v5

    move v3, v5

    .line 694
    .local v3, "isTransparentWindowsSupported":Z
    move v5, v3

    if-nez v5, :cond_3

    .line 695
    move-object v5, v0

    invoke-static {v5}, Lcom/sun/javafx/application/PlatformImpl;->addNoTransparencyStylesheetToScene(Ljavafx/scene/Scene;)V

    .line 698
    :cond_3
    const-string v5, "Scene.initPeer started"

    invoke-static {v5}, Lcom/sun/javafx/perf/PerformanceTracker;->logEvent(Ljava/lang/String;)V

    .line 700
    const/4 v5, 0x1

    invoke-static {v5}, Ljavafx/scene/Scene;->impl_setAllowPGAccess(Z)V

    .line 702
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v5

    move-object v4, v5

    .line 703
    .local v4, "tk":Lcom/sun/javafx/tk/Toolkit;
    move-object v5, v0

    move-object v6, v2

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/Scene;->isDepthBufferInternal()Z

    move-result v7

    move-object v8, v0

    invoke-direct {v8}, Ljavafx/scene/Scene;->getAntiAliasingInternal()Z

    move-result v8

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Scene;->acc:Ljava/security/AccessControlContext;

    invoke-interface {v6, v7, v8, v9}, Lcom/sun/javafx/tk/TKStage;->createTKScene(ZZLjava/security/AccessControlContext;)Lcom/sun/javafx/tk/TKScene;

    move-result-object v6

    iput-object v6, v5, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    .line 704
    const-string v5, "Scene.initPeer TKScene created"

    invoke-static {v5}, Lcom/sun/javafx/perf/PerformanceTracker;->logEvent(Ljava/lang/String;)V

    .line 705
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    new-instance v6, Ljavafx/scene/Scene$ScenePeerListener;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    invoke-direct {v7, v8}, Ljavafx/scene/Scene$ScenePeerListener;-><init>(Ljavafx/scene/Scene;)V

    invoke-interface {v5, v6}, Lcom/sun/javafx/tk/TKScene;->setTKSceneListener(Lcom/sun/javafx/tk/TKSceneListener;)V

    .line 706
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    new-instance v6, Ljavafx/scene/Scene$ScenePeerPaintListener;

    move-object v10, v6

    move-object v6, v10

    move-object v7, v10

    move-object v8, v0

    const/4 v9, 0x0

    invoke-direct {v7, v8, v9}, Ljavafx/scene/Scene$ScenePeerPaintListener;-><init>(Ljavafx/scene/Scene;Ljavafx/scene/Scene$1;)V

    invoke-interface {v5, v6}, Lcom/sun/javafx/tk/TKScene;->setTKScenePaintListener(Lcom/sun/javafx/tk/TKScenePaintListener;)V

    .line 707
    const-string v5, "Scene.initPeer TKScene set"

    invoke-static {v5}, Lcom/sun/javafx/perf/PerformanceTracker;->logEvent(Ljava/lang/String;)V

    .line 708
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/Parent;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/sun/javafx/tk/TKScene;->setRoot(Lcom/sun/javafx/sg/prism/NGNode;)V

    .line 709
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/Scene;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v6

    if-nez v6, :cond_4

    const/4 v6, 0x0

    :goto_1
    invoke-interface {v5, v6}, Lcom/sun/javafx/tk/TKScene;->setFillPaint(Ljava/lang/Object;)V

    .line 710
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getEffectiveCamera()Ljavafx/scene/Camera;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/Camera;->impl_updatePeer()V

    .line 711
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/Scene;->getEffectiveCamera()Ljavafx/scene/Camera;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/Camera;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/sg/prism/NGCamera;

    invoke-interface {v5, v6}, Lcom/sun/javafx/tk/TKScene;->setCamera(Lcom/sun/javafx/sg/prism/NGCamera;)V

    .line 712
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    invoke-interface {v5}, Lcom/sun/javafx/tk/TKScene;->markDirty()V

    .line 713
    const-string v5, "Scene.initPeer TKScene initialized"

    invoke-static {v5}, Lcom/sun/javafx/perf/PerformanceTracker;->logEvent(Ljava/lang/String;)V

    .line 715
    const/4 v5, 0x0

    invoke-static {v5}, Ljavafx/scene/Scene;->impl_setAllowPGAccess(Z)V

    .line 717
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Scene;->scenePulseListener:Ljavafx/scene/Scene$ScenePulseListener;

    invoke-virtual {v5, v6}, Lcom/sun/javafx/tk/Toolkit;->addSceneTkPulseListener(Lcom/sun/javafx/tk/TKPulseListener;)V

    .line 725
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    new-instance v7, Ljavafx/scene/Scene$DropTargetListener;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Ljavafx/scene/Scene$DropTargetListener;-><init>(Ljavafx/scene/Scene;)V

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/tk/Toolkit;->enableDrop(Lcom/sun/javafx/tk/TKScene;Lcom/sun/javafx/tk/TKDropTargetListener;)V

    .line 726
    move-object v5, v4

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    new-instance v7, Ljavafx/scene/Scene$InputMethodRequestsDelegate;

    move-object v10, v7

    move-object v7, v10

    move-object v8, v10

    move-object v9, v0

    invoke-direct {v8, v9}, Ljavafx/scene/Scene$InputMethodRequestsDelegate;-><init>(Ljavafx/scene/Scene;)V

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/tk/Toolkit;->installInputMethodRequests(Lcom/sun/javafx/tk/TKScene;Ljavafx/scene/input/InputMethodRequests;)V

    .line 728
    const-string v5, "Scene.initPeer finished"

    invoke-static {v5}, Lcom/sun/javafx/perf/PerformanceTracker;->logEvent(Ljava/lang/String;)V

    .line 729
    goto/16 :goto_0

    .line 709
    :cond_4
    move-object v6, v4

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/Scene;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v7

    invoke-virtual {v6, v7}, Lcom/sun/javafx/tk/Toolkit;->getPaint(Ljavafx/scene/paint/Paint;)Ljava/lang/Object;

    move-result-object v6

    goto :goto_1
.end method

.method public impl_preferredSize()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1720
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene;->preferredSize()V

    .line 1721
    return-void
.end method

.method public impl_processKeyEvent(Ljavafx/scene/input/KeyEvent;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2038
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    if-eqz v2, :cond_0

    .line 2039
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/Scene$DnDGesture;->access$1700(Ljavafx/scene/Scene$DnDGesture;Ljavafx/scene/input/KeyEvent;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 2040
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    .line 2044
    :cond_0
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Scene;->getKeyHandler()Ljavafx/scene/Scene$KeyHandler;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/Scene$KeyHandler;->access$1800(Ljavafx/scene/Scene$KeyHandler;Ljavafx/scene/input/KeyEvent;)V

    .line 2045
    return-void
.end method

.method public impl_processMouseEvent(Ljavafx/scene/input/MouseEvent;)V
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1762
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene;->mouseHandler:Ljavafx/scene/Scene$MouseHandler;

    move-object v3, v1

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Ljavafx/scene/Scene$MouseHandler;->access$1500(Ljavafx/scene/Scene$MouseHandler;Ljavafx/scene/input/MouseEvent;Z)V

    .line 1763
    return-void
.end method

.method public impl_setWindow(Ljavafx/stage/Window;)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 669
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/stage/Window;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene;->setWindow(Ljavafx/stage/Window;)V

    .line 670
    return-void
.end method

.method final initializeInternalEventDispatcher()V
    .locals 8

    .prologue
    .line 4183
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->internalEventDispatcher:Lcom/sun/javafx/scene/SceneEventDispatcher;

    if-nez v1, :cond_0

    .line 4184
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Scene;->createInternalEventDispatcher()Lcom/sun/javafx/scene/SceneEventDispatcher;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/Scene;->internalEventDispatcher:Lcom/sun/javafx/scene/SceneEventDispatcher;

    .line 4185
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "eventDispatcher"

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Scene;->internalEventDispatcher:Lcom/sun/javafx/scene/SceneEventDispatcher;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->eventDispatcher:Ljavafx/beans/property/ObjectProperty;

    .line 4190
    :cond_0
    return-void
.end method

.method public final isDepthBuffer()Z
    .locals 2

    .prologue
    .line 1603
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Scene;->depthBuffer:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return v0
.end method

.method isDepthBufferInternal()Z
    .locals 2

    .prologue
    .line 1607
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    sget-object v1, Ljavafx/application/ConditionalFeature;->SCENE3D:Ljavafx/application/ConditionalFeature;

    invoke-static {v1}, Ljavafx/application/Platform;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1608
    const/4 v1, 0x0

    move v0, v1

    .line 1610
    .end local v0    # "this":Ljavafx/scene/Scene;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Scene;->depthBuffer:Z

    move v0, v1

    goto :goto_0
.end method

.method final isFocusDirty()Z
    .locals 2

    .prologue
    .line 1997
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Scene;->focusDirty:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return v0
.end method

.method isQuiescent()Z
    .locals 4

    .prologue
    .line 2143
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v1, v2

    .line 2144
    .local v1, "r":Ljavafx/scene/Parent;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->isFocusDirty()Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Parent;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    sget-object v3, Lcom/sun/javafx/scene/CssFlags;->CLEAN:Lcom/sun/javafx/scene/CssFlags;

    if-ne v2, v3, :cond_1

    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Parent;->layoutFlag:Lcom/sun/javafx/scene/LayoutFlags;

    sget-object v3, Lcom/sun/javafx/scene/LayoutFlags;->CLEAN:Lcom/sun/javafx/scene/LayoutFlags;

    if-ne v2, v3, :cond_1

    :cond_0
    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/Scene;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public lookup(Ljava/lang/String;)Ljavafx/scene/Node;
    .locals 4

    .prologue
    .line 1481
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "selector":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/Parent;->lookup(Ljava/lang/String;)Ljavafx/scene/Node;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method markCameraDirty()V
    .locals 3

    .prologue
    .line 999
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/Scene$DirtyBits;->CAMERA_DIRTY:Ljavafx/scene/Scene$DirtyBits;

    invoke-direct {v1, v2}, Ljavafx/scene/Scene;->markDirty(Ljavafx/scene/Scene$DirtyBits;)V

    .line 1000
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Scene;->setNeedsRepaint()V

    .line 1001
    return-void
.end method

.method markCursorDirty()V
    .locals 3

    .prologue
    .line 1004
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    sget-object v2, Ljavafx/scene/Scene$DirtyBits;->CURSOR_DIRTY:Ljavafx/scene/Scene$DirtyBits;

    invoke-direct {v1, v2}, Ljavafx/scene/Scene;->markDirty(Ljavafx/scene/Scene$DirtyBits;)V

    .line 1005
    return-void
.end method

.method public final nodeOrientationProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/NodeOrientation;",
            ">;"
        }
    .end annotation

    .prologue
    .line 6162
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->nodeOrientation:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 6163
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$53;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/scene/Scene;->defaultNodeOrientation:Ljavafx/geometry/NodeOrientation;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Scene$53;-><init>(Ljavafx/scene/Scene;Ljavafx/geometry/NodeOrientation;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->nodeOrientation:Ljavafx/beans/property/ObjectProperty;

    .line 6187
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->nodeOrientation:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onContextMenuRequestedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ContextMenuEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4291
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onContextMenuRequested:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 4292
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$14;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$14;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onContextMenuRequested:Ljavafx/beans/property/ObjectProperty;

    .line 4310
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onContextMenuRequested:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onDragDetectedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4591
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragDetected:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 4592
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$22;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$22;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onDragDetected:Ljavafx/beans/property/ObjectProperty;

    .line 4610
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragDetected:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onDragDoneProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5706
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragDone:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 5707
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$48;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$48;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onDragDone:Ljavafx/beans/property/ObjectProperty;

    .line 5725
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragDone:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onDragDroppedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5659
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragDropped:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 5660
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$47;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$47;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onDragDropped:Ljavafx/beans/property/ObjectProperty;

    .line 5678
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragDropped:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onDragEnteredProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5515
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragEntered:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 5516
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$44;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$44;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onDragEntered:Ljavafx/beans/property/ObjectProperty;

    .line 5534
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragEntered:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onDragExitedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5552
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragExited:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 5553
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$45;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$45;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onDragExited:Ljavafx/beans/property/ObjectProperty;

    .line 5571
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragExited:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onDragOverProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5589
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragOver:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 5590
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$46;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$46;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onDragOver:Ljavafx/beans/property/ObjectProperty;

    .line 5608
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onDragOver:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onInputMethodTextChangedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/InputMethodEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5954
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onInputMethodTextChanged:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 5955
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$52;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$52;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onInputMethodTextChanged:Ljavafx/beans/property/ObjectProperty;

    .line 5973
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onInputMethodTextChanged:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onKeyPressedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/KeyEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5822
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onKeyPressed:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 5823
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$49;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$49;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onKeyPressed:Ljavafx/beans/property/ObjectProperty;

    .line 5841
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onKeyPressed:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onKeyReleasedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/KeyEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5861
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onKeyReleased:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 5862
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$50;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$50;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onKeyReleased:Ljavafx/beans/property/ObjectProperty;

    .line 5880
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onKeyReleased:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onKeyTypedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/KeyEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5904
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onKeyTyped:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 5905
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$51;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$51;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onKeyTyped:Ljavafx/beans/property/ObjectProperty;

    .line 5923
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onKeyTyped:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onMouseClickedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4334
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseClicked:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 4335
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$15;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$15;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onMouseClicked:Ljavafx/beans/property/ObjectProperty;

    .line 4353
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseClicked:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onMouseDragEnteredProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4705
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseDragEntered:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 4706
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$25;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$25;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onMouseDragEntered:Ljavafx/beans/property/ObjectProperty;

    .line 4724
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseDragEntered:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onMouseDragExitedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4743
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseDragExited:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 4744
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$26;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$26;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onMouseDragExited:Ljavafx/beans/property/ObjectProperty;

    .line 4762
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseDragExited:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onMouseDragOverProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4629
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseDragOver:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 4630
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$23;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$23;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onMouseDragOver:Ljavafx/beans/property/ObjectProperty;

    .line 4648
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseDragOver:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onMouseDragReleasedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4667
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseDragReleased:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 4668
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$24;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$24;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onMouseDragReleased:Ljavafx/beans/property/ObjectProperty;

    .line 4686
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseDragReleased:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onMouseDraggedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4371
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseDragged:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 4372
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$16;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$16;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onMouseDragged:Ljavafx/beans/property/ObjectProperty;

    .line 4390
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseDragged:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onMouseEnteredProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4407
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseEntered:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 4408
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$17;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$17;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onMouseEntered:Ljavafx/beans/property/ObjectProperty;

    .line 4426
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseEntered:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onMouseExitedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4443
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseExited:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 4444
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$18;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$18;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onMouseExited:Ljavafx/beans/property/ObjectProperty;

    .line 4462
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseExited:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onMouseMovedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4480
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseMoved:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 4481
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$19;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$19;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onMouseMoved:Ljavafx/beans/property/ObjectProperty;

    .line 4499
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseMoved:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onMousePressedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4517
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMousePressed:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 4518
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$20;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$20;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onMousePressed:Ljavafx/beans/property/ObjectProperty;

    .line 4536
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMousePressed:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onMouseReleasedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4554
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseReleased:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 4555
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$21;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$21;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onMouseReleased:Ljavafx/beans/property/ObjectProperty;

    .line 4573
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onMouseReleased:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onRotateProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/RotateEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4934
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onRotate:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 4935
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$31;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$31;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onRotate:Ljavafx/beans/property/ObjectProperty;

    .line 4953
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onRotate:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onRotationFinishedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/RotateEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4971
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onRotationFinished:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 4972
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$32;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$32;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onRotationFinished:Ljavafx/beans/property/ObjectProperty;

    .line 4990
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onRotationFinished:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onRotationStartedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/RotateEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4897
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onRotationStarted:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 4898
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$30;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$30;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onRotationStarted:Ljavafx/beans/property/ObjectProperty;

    .line 4916
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onRotationStarted:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onScrollFinishedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4860
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onScrollFinished:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 4861
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$29;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$29;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onScrollFinished:Ljavafx/beans/property/ObjectProperty;

    .line 4879
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onScrollFinished:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onScrollProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4823
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onScroll:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 4824
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$28;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$28;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onScroll:Ljavafx/beans/property/ObjectProperty;

    .line 4842
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onScroll:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onScrollStartedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 4787
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onScrollStarted:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 4788
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$27;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$27;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onScrollStarted:Ljavafx/beans/property/ObjectProperty;

    .line 4806
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onScrollStarted:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onSwipeDownProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5158
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onSwipeDown:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 5159
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$37;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$37;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onSwipeDown:Ljavafx/beans/property/ObjectProperty;

    .line 5177
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onSwipeDown:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onSwipeLeftProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5196
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onSwipeLeft:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 5197
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$38;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$38;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onSwipeLeft:Ljavafx/beans/property/ObjectProperty;

    .line 5215
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onSwipeLeft:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onSwipeRightProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5234
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onSwipeRight:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 5235
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$39;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$39;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onSwipeRight:Ljavafx/beans/property/ObjectProperty;

    .line 5253
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onSwipeRight:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onSwipeUpProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5120
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onSwipeUp:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 5121
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$36;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$36;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onSwipeUp:Ljavafx/beans/property/ObjectProperty;

    .line 5139
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onSwipeUp:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onTouchMovedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5314
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onTouchMoved:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 5315
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$41;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$41;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onTouchMoved:Ljavafx/beans/property/ObjectProperty;

    .line 5333
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onTouchMoved:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onTouchPressedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5277
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onTouchPressed:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 5278
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$40;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$40;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onTouchPressed:Ljavafx/beans/property/ObjectProperty;

    .line 5296
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onTouchPressed:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onTouchReleasedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5351
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onTouchReleased:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 5352
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$42;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$42;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onTouchReleased:Ljavafx/beans/property/ObjectProperty;

    .line 5370
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onTouchReleased:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onTouchStationaryProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5389
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onTouchStationary:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 5390
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$43;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$43;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onTouchStationary:Ljavafx/beans/property/ObjectProperty;

    .line 5408
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onTouchStationary:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onZoomFinishedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ZoomEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5082
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onZoomFinished:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 5083
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$35;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$35;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onZoomFinished:Ljavafx/beans/property/ObjectProperty;

    .line 5101
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onZoomFinished:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onZoomProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ZoomEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5045
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onZoom:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 5046
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$34;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$34;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onZoom:Ljavafx/beans/property/ObjectProperty;

    .line 5064
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onZoom:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final onZoomStartedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ZoomEvent;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 5008
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onZoomStarted:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 5009
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$33;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$33;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->onZoomStarted:Ljavafx/beans/property/ObjectProperty;

    .line 5027
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->onZoomStarted:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method removeAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;
    .locals 4

    .prologue
    .line 6276
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene;->accMap:Ljava/util/Map;

    if-nez v2, :cond_0

    const/4 v2, 0x0

    move-object v0, v2

    .line 6277
    .end local v0    # "this":Ljavafx/scene/Scene;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene;->accMap:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/glass/ui/Accessible;

    move-object v0, v2

    goto :goto_0
.end method

.method public final removeEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 4155
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventFilter":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Scene;->getInternalEventDispatcher()Lcom/sun/javafx/scene/SceneEventDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/scene/SceneEventDispatcher;->getEventHandlerManager()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 4156
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->removeEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 4157
    return-void
.end method

.method public final removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 4117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Scene;->getInternalEventDispatcher()Lcom/sun/javafx/scene/SceneEventDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/scene/SceneEventDispatcher;->getEventHandlerManager()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 4118
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 4120
    return-void
.end method

.method final removeLight(Ljavafx/scene/LightBase;)V
    .locals 4

    .prologue
    .line 2222
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "light":Ljavafx/scene/LightBase;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene;->lights:Ljava/util/List;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2223
    move-object v2, v0

    sget-object v3, Ljavafx/scene/Scene$DirtyBits;->LIGHTS_DIRTY:Ljavafx/scene/Scene$DirtyBits;

    invoke-direct {v2, v3}, Ljavafx/scene/Scene;->markDirty(Ljavafx/scene/Scene$DirtyBits;)V

    .line 2225
    :cond_0
    return-void
.end method

.method public removeMnemonic(Ljavafx/scene/input/Mnemonic;)V
    .locals 4

    .prologue
    .line 4213
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "m":Ljavafx/scene/input/Mnemonic;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Scene;->getInternalEventDispatcher()Lcom/sun/javafx/scene/SceneEventDispatcher;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/scene/SceneEventDispatcher;->getKeyboardShortcutsHandler()Lcom/sun/javafx/scene/KeyboardShortcutsHandler;

    move-result-object v2

    move-object v3, v1

    .line 4214
    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/KeyboardShortcutsHandler;->removeMnemonic(Ljavafx/scene/input/Mnemonic;)V

    .line 4215
    return-void
.end method

.method requestFocus(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 2048
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Scene;->getKeyHandler()Ljavafx/scene/Scene$KeyHandler;

    move-result-object v2

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/Scene$KeyHandler;->access$1900(Ljavafx/scene/Scene$KeyHandler;Ljavafx/scene/Node;)V

    .line 2049
    return-void
.end method

.method resizeRootOnSceneSizeChange(DD)V
    .locals 11

    .prologue
    .line 906
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-wide v1, p1

    .local v1, "newWidth":D
    move-wide v3, p3

    .local v3, "newHeight":D
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v5

    move-wide v6, v1

    move-wide v8, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Ljavafx/scene/Parent;->resize(DD)V

    .line 907
    return-void
.end method

.method final resizeRootToPreferredSize(Ljavafx/scene/Parent;)V
    .locals 12

    .prologue
    .line 1671
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "root":Ljavafx/scene/Parent;
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/Parent;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v7

    move-object v6, v7

    .line 1672
    .local v6, "contentBias":Ljavafx/geometry/Orientation;
    move-object v7, v6

    if-nez v7, :cond_0

    .line 1673
    move-object v7, v1

    move-object v8, v0

    iget-wide v8, v8, Ljavafx/scene/Scene;->widthSetByUser:D

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-static {v7, v8, v9, v10, v11}, Ljavafx/scene/Scene;->getPreferredWidth(Ljavafx/scene/Parent;DD)D

    move-result-wide v7

    move-wide v2, v7

    .line 1674
    .local v2, "preferredWidth":D
    move-object v7, v1

    move-object v8, v0

    iget-wide v8, v8, Ljavafx/scene/Scene;->heightSetByUser:D

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-static {v7, v8, v9, v10, v11}, Ljavafx/scene/Scene;->getPreferredHeight(Ljavafx/scene/Parent;DD)D

    move-result-wide v7

    move-wide v4, v7

    .line 1687
    .local v4, "preferredHeight":D
    :goto_0
    move-object v7, v1

    move-wide v8, v2

    move-wide v10, v4

    invoke-virtual {v7, v8, v9, v10, v11}, Ljavafx/scene/Parent;->resize(DD)V

    .line 1688
    return-void

    .line 1675
    .end local v2    # "preferredWidth":D
    .end local v4    # "preferredHeight":D
    :cond_0
    move-object v7, v6

    sget-object v8, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v7, v8, :cond_1

    .line 1677
    move-object v7, v1

    move-object v8, v0

    iget-wide v8, v8, Ljavafx/scene/Scene;->widthSetByUser:D

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-static {v7, v8, v9, v10, v11}, Ljavafx/scene/Scene;->getPreferredWidth(Ljavafx/scene/Parent;DD)D

    move-result-wide v7

    move-wide v2, v7

    .line 1678
    .restart local v2    # "preferredWidth":D
    move-object v7, v1

    move-object v8, v0

    iget-wide v8, v8, Ljavafx/scene/Scene;->heightSetByUser:D

    move-wide v10, v2

    invoke-static {v7, v8, v9, v10, v11}, Ljavafx/scene/Scene;->getPreferredHeight(Ljavafx/scene/Parent;DD)D

    move-result-wide v7

    move-wide v4, v7

    .restart local v4    # "preferredHeight":D
    goto :goto_0

    .line 1682
    .end local v2    # "preferredWidth":D
    .end local v4    # "preferredHeight":D
    :cond_1
    move-object v7, v1

    move-object v8, v0

    iget-wide v8, v8, Ljavafx/scene/Scene;->heightSetByUser:D

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-static {v7, v8, v9, v10, v11}, Ljavafx/scene/Scene;->getPreferredHeight(Ljavafx/scene/Parent;DD)D

    move-result-wide v7

    move-wide v4, v7

    .line 1683
    .restart local v4    # "preferredHeight":D
    move-object v7, v1

    move-object v8, v0

    iget-wide v8, v8, Ljavafx/scene/Scene;->widthSetByUser:D

    move-wide v10, v4

    invoke-static {v7, v8, v9, v10, v11}, Ljavafx/scene/Scene;->getPreferredWidth(Ljavafx/scene/Parent;DD)D

    move-result-wide v7

    move-wide v2, v7

    .restart local v2    # "preferredWidth":D
    goto :goto_0
.end method

.method public final rootProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Parent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1081
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->root:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1082
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$9;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Scene$9;-><init>(Ljavafx/scene/Scene;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->root:Ljavafx/beans/property/ObjectProperty;

    .line 1136
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->root:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final setCamera(Ljavafx/scene/Camera;)V
    .locals 4

    .prologue
    .line 927
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Camera;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->cameraProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 928
    return-void
.end method

.method public final setCursor(Ljavafx/scene/Cursor;)V
    .locals 4

    .prologue
    .line 1441
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Cursor;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->cursorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1442
    return-void
.end method

.method public final setEventDispatcher(Ljavafx/event/EventDispatcher;)V
    .locals 4

    .prologue
    .line 3993
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventDispatcher;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->eventDispatcherProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 3994
    return-void
.end method

.method protected final setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljavafx/event/Event;",
            ">(",
            "Ljavafx/event/EventType",
            "<TT;>;",
            "Ljavafx/event/EventHandler",
            "<-TT;>;)V"
        }
    .end annotation

    .prologue
    .line 4173
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Scene;->getInternalEventDispatcher()Lcom/sun/javafx/scene/SceneEventDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/scene/SceneEventDispatcher;->getEventHandlerManager()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 4174
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 4175
    return-void
.end method

.method public final setFill(Ljavafx/scene/paint/Paint;)V
    .locals 4

    .prologue
    .line 1027
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/paint/Paint;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->fillProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1028
    return-void
.end method

.method final setFocusDirty(Z)V
    .locals 4

    .prologue
    .line 1990
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/Scene;->focusDirty:Z

    if-nez v2, :cond_0

    .line 1991
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->requestNextPulse()V

    .line 1993
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/Scene;->focusDirty:Z

    .line 1994
    return-void
.end method

.method setNeedsRepaint()V
    .locals 2

    .prologue
    .line 1140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    if-eqz v1, :cond_0

    .line 1141
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->impl_peer:Lcom/sun/javafx/tk/TKScene;

    invoke-interface {v1}, Lcom/sun/javafx/tk/TKScene;->entireSceneNeedsRepaint()V

    .line 1143
    :cond_0
    return-void
.end method

.method public final setNodeOrientation(Ljavafx/geometry/NodeOrientation;)V
    .locals 4

    .prologue
    .line 6141
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "orientation":Ljavafx/geometry/NodeOrientation;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->nodeOrientationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 6142
    return-void
.end method

.method public final setOnContextMenuRequested(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ContextMenuEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4283
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ContextMenuEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onContextMenuRequestedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 4284
    return-void
.end method

.method public final setOnDragDetected(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4583
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onDragDetectedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 4584
    return-void
.end method

.method public final setOnDragDone(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5684
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/DragEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onDragDoneProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 5685
    return-void
.end method

.method public final setOnDragDropped(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5645
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/DragEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onDragDroppedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 5646
    return-void
.end method

.method public final setOnDragEntered(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5503
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/DragEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onDragEnteredProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 5504
    return-void
.end method

.method public final setOnDragExited(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5540
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/DragEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onDragExitedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 5541
    return-void
.end method

.method public final setOnDragOver(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/DragEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5577
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/DragEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onDragOverProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 5578
    return-void
.end method

.method public final setOnInputMethodTextChanged(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/InputMethodEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5946
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/InputMethodEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onInputMethodTextChangedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 5947
    return-void
.end method

.method public final setOnKeyPressed(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/KeyEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5814
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/KeyEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onKeyPressedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 5815
    return-void
.end method

.method public final setOnKeyReleased(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/KeyEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5853
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/KeyEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onKeyReleasedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 5854
    return-void
.end method

.method public final setOnKeyTyped(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/KeyEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5893
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/KeyEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onKeyTypedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 5895
    return-void
.end method

.method public final setOnMouseClicked(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4326
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onMouseClickedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 4327
    return-void
.end method

.method public final setOnMouseDragEntered(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4697
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseDragEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onMouseDragEnteredProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 4698
    return-void
.end method

.method public final setOnMouseDragExited(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4735
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseDragEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onMouseDragExitedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 4736
    return-void
.end method

.method public final setOnMouseDragOver(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4621
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseDragEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onMouseDragOverProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 4622
    return-void
.end method

.method public final setOnMouseDragReleased(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseDragEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4659
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseDragEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onMouseDragReleasedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 4660
    return-void
.end method

.method public final setOnMouseDragged(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4363
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onMouseDraggedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 4364
    return-void
.end method

.method public final setOnMouseEntered(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4399
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onMouseEnteredProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 4400
    return-void
.end method

.method public final setOnMouseExited(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4435
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onMouseExitedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 4436
    return-void
.end method

.method public final setOnMouseMoved(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4472
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onMouseMovedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 4473
    return-void
.end method

.method public final setOnMousePressed(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4509
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onMousePressedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 4510
    return-void
.end method

.method public final setOnMouseReleased(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/MouseEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4546
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onMouseReleasedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 4547
    return-void
.end method

.method public final setOnRotate(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/RotateEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4926
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/RotateEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onRotateProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 4927
    return-void
.end method

.method public final setOnRotationFinished(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/RotateEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4963
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/RotateEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onRotationFinishedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 4964
    return-void
.end method

.method public final setOnRotationStarted(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/RotateEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4889
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/RotateEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onRotationStartedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 4890
    return-void
.end method

.method public final setOnScroll(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4815
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ScrollEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onScrollProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 4816
    return-void
.end method

.method public final setOnScrollFinished(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4852
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ScrollEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onScrollFinishedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 4853
    return-void
.end method

.method public final setOnScrollStarted(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ScrollEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 4779
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ScrollEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onScrollStartedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 4780
    return-void
.end method

.method public final setOnSwipeDown(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5150
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/SwipeEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onSwipeDownProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 5151
    return-void
.end method

.method public final setOnSwipeLeft(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5188
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/SwipeEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onSwipeLeftProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 5189
    return-void
.end method

.method public final setOnSwipeRight(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5226
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/SwipeEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onSwipeRightProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 5227
    return-void
.end method

.method public final setOnSwipeUp(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/SwipeEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5112
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/SwipeEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onSwipeUpProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 5113
    return-void
.end method

.method public final setOnTouchMoved(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5306
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/TouchEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onTouchMovedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 5307
    return-void
.end method

.method public final setOnTouchPressed(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5269
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/TouchEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onTouchPressedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 5270
    return-void
.end method

.method public final setOnTouchReleased(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5343
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/TouchEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onTouchReleasedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 5344
    return-void
.end method

.method public final setOnTouchStationary(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/TouchEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5381
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/TouchEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onTouchStationaryProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 5382
    return-void
.end method

.method public final setOnZoom(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ZoomEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5037
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ZoomEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onZoomProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 5038
    return-void
.end method

.method public final setOnZoomFinished(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ZoomEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5074
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ZoomEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onZoomFinishedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 5075
    return-void
.end method

.method public final setOnZoomStarted(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<-",
            "Ljavafx/scene/input/ZoomEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 5000
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ZoomEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->onZoomStartedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 5001
    return-void
.end method

.method public final setRoot(Ljavafx/scene/Parent;)V
    .locals 4

    .prologue
    .line 1072
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Parent;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->rootProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1073
    return-void
.end method

.method public final setUserAgentStylesheet(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1595
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "url":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->userAgentStylesheetProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1596
    return-void
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 6107
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Scene;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    sget-object v3, Ljavafx/scene/Scene;->USER_DATA_KEY:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 6108
    return-void
.end method

.method public snapshot(Ljavafx/scene/image/WritableImage;)Ljavafx/scene/image/WritableImage;
    .locals 4

    .prologue
    .line 1356
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "image":Ljavafx/scene/image/WritableImage;
    sget-boolean v2, Ljavafx/scene/Scene;->paused:Z

    if-nez v2, :cond_0

    .line 1357
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 1360
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Scene;->doSnapshot(Ljavafx/scene/image/WritableImage;)Ljavafx/scene/image/WritableImage;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public snapshot(Ljavafx/util/Callback;Ljavafx/scene/image/WritableImage;)V
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/SnapshotResult;",
            "Ljava/lang/Void;",
            ">;",
            "Ljavafx/scene/image/WritableImage;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1409
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "callback":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/SnapshotResult;Ljava/lang/Void;>;"
    move-object v2, p2

    .local v2, "image":Ljavafx/scene/image/WritableImage;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 1410
    move-object v6, v1

    if-nez v6, :cond_0

    .line 1411
    new-instance v6, Ljava/lang/NullPointerException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "The callback must not be null"

    invoke-direct {v7, v8}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1414
    :cond_0
    move-object v6, v1

    move-object v3, v6

    .line 1415
    .local v3, "theCallback":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/SnapshotResult;Ljava/lang/Void;>;"
    move-object v6, v2

    move-object v4, v6

    .line 1420
    .local v4, "theImage":Ljavafx/scene/image/WritableImage;
    move-object v6, v0

    move-object v7, v4

    move-object v8, v3

    invoke-static {v6, v7, v8}, Ljavafx/scene/Scene$$Lambda$3;->lambdaFactory$(Ljavafx/scene/Scene;Ljavafx/scene/image/WritableImage;Ljavafx/util/Callback;)Ljava/lang/Runnable;

    move-result-object v6

    move-object v5, v6

    .line 1432
    .local v5, "snapshotRunnable":Ljava/lang/Runnable;
    move-object v6, v5

    invoke-static {v6}, Ljavafx/scene/Scene;->addSnapshotRunnable(Ljava/lang/Runnable;)V

    .line 1433
    return-void
.end method

.method varargs startDragAndDrop(Ljavafx/event/EventTarget;[Ljavafx/scene/input/TransferMode;)Ljavafx/scene/input/Dragboard;
    .locals 10

    .prologue
    .line 5768
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "source":Ljavafx/event/EventTarget;
    move-object v2, p2

    .local v2, "transferModes":[Ljavafx/scene/input/TransferMode;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v6

    invoke-virtual {v6}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 5769
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    if-eqz v6, :cond_0

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    .line 5770
    invoke-static {v6}, Ljavafx/scene/Scene$DnDGesture;->access$8400(Ljavafx/scene/Scene$DnDGesture;)Ljavafx/scene/Scene$DragDetectedState;

    move-result-object v6

    sget-object v7, Ljavafx/scene/Scene$DragDetectedState;->PROCESSING:Ljavafx/scene/Scene$DragDetectedState;

    if-eq v6, v7, :cond_1

    .line 5772
    :cond_0
    new-instance v6, Ljava/lang/IllegalStateException;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    const-string v8, "Cannot start drag and drop outside of DRAG_DETECTED event handler"

    invoke-direct {v7, v8}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 5776
    :cond_1
    const-class v6, Ljavafx/scene/input/TransferMode;

    invoke-static {v6}, Ljava/util/EnumSet;->noneOf(Ljava/lang/Class;)Ljava/util/EnumSet;

    move-result-object v6

    move-object v3, v6

    .line 5777
    .local v3, "set":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/input/TransferMode;>;"
    move-object v6, v2

    invoke-static {v6}, Lcom/sun/javafx/scene/input/InputEventUtils;->safeTransferModes([Ljavafx/scene/input/TransferMode;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_0
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_2

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljavafx/scene/input/TransferMode;

    move-object v5, v6

    .line 5778
    .local v5, "tm":Ljavafx/scene/input/TransferMode;
    move-object v6, v3

    move-object v7, v5

    invoke-interface {v6, v7}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v6

    .line 5779
    goto :goto_0

    .line 5780
    .end local v5    # "tm":Ljavafx/scene/input/TransferMode;
    :cond_2
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    move-object v7, v1

    move-object v8, v3

    invoke-static {v6, v7, v8}, Ljavafx/scene/Scene$DnDGesture;->access$8500(Ljavafx/scene/Scene$DnDGesture;Ljavafx/event/EventTarget;Ljava/util/Set;)Ljavafx/scene/input/Dragboard;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public varargs startDragAndDrop([Ljavafx/scene/input/TransferMode;)Ljavafx/scene/input/Dragboard;
    .locals 5

    .prologue
    .line 5746
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "transferModes":[Ljavafx/scene/input/TransferMode;
    move-object v2, v0

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Scene;->startDragAndDrop(Ljavafx/event/EventTarget;[Ljavafx/scene/input/TransferMode;)Ljavafx/scene/input/Dragboard;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public startFullDrag()V
    .locals 3

    .prologue
    .line 5763
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljavafx/scene/Scene;->startFullDrag(Ljavafx/event/EventTarget;)V

    .line 5764
    return-void
.end method

.method startFullDrag(Ljavafx/event/EventTarget;)V
    .locals 6

    .prologue
    .line 5784
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "source":Ljavafx/event/EventTarget;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 5785
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    invoke-static {v2}, Ljavafx/scene/Scene$DnDGesture;->access$8400(Ljavafx/scene/Scene$DnDGesture;)Ljavafx/scene/Scene$DragDetectedState;

    move-result-object v2

    sget-object v3, Ljavafx/scene/Scene$DragDetectedState;->PROCESSING:Ljavafx/scene/Scene$DragDetectedState;

    if-eq v2, v3, :cond_0

    .line 5786
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Cannot start full drag outside of DRAG_DETECTED event handler"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 5790
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    if-eqz v2, :cond_1

    .line 5791
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Scene;->dndGesture:Ljavafx/scene/Scene$DnDGesture;

    move-object v3, v1

    invoke-static {v2, v3}, Ljavafx/scene/Scene$DnDGesture;->access$8600(Ljavafx/scene/Scene$DnDGesture;Ljavafx/event/EventTarget;)V

    .line 5792
    return-void

    .line 5795
    :cond_1
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Cannot start full drag when mouse button is not pressed"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method test_pick(DD)Ljavafx/scene/Node;
    .locals 21

    .prologue
    .line 1910
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Scene;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    const/4 v7, 0x1

    sput-boolean v7, Ljavafx/scene/Scene;->inMousePick:Z

    .line 1911
    move-object v7, v1

    iget-object v7, v7, Ljavafx/scene/Scene;->mouseHandler:Ljavafx/scene/Scene$MouseHandler;

    new-instance v8, Lcom/sun/javafx/geom/PickRay;

    move-object/from16 v20, v8

    move-object/from16 v8, v20

    move-object/from16 v9, v20

    move-wide v10, v2

    move-wide v12, v4

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v16, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    const-wide/high16 v18, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    invoke-direct/range {v9 .. v19}, Lcom/sun/javafx/geom/PickRay;-><init>(DDDDD)V

    invoke-static {v7, v8}, Ljavafx/scene/Scene$MouseHandler;->access$1600(Ljavafx/scene/Scene$MouseHandler;Lcom/sun/javafx/geom/PickRay;)Ljavafx/scene/input/PickResult;

    move-result-object v7

    move-object v6, v7

    .line 1913
    .local v6, "result":Ljavafx/scene/input/PickResult;
    const/4 v7, 0x0

    sput-boolean v7, Ljavafx/scene/Scene;->inMousePick:Z

    .line 1914
    move-object v7, v6

    if-eqz v7, :cond_0

    .line 1915
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/scene/input/PickResult;->getIntersectedNode()Ljavafx/scene/Node;

    move-result-object v7

    move-object v1, v7

    .line 1917
    .end local v1    # "this":Ljavafx/scene/Scene;
    :goto_0
    return-object v1

    .restart local v1    # "this":Ljavafx/scene/Scene;
    :cond_0
    const/4 v7, 0x0

    move-object v1, v7

    goto :goto_0
.end method

.method traverse(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)Z
    .locals 6

    .prologue
    .line 2006
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 2007
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/SubScene;->traverse(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v3

    move v0, v3

    .line 2009
    .end local v0    # "this":Ljavafx/scene/Scene;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/Scene;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Scene;->traversalEngine:Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/traversal/TopMostTraversalEngine;->trav(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)Ljavafx/scene/Node;

    move-result-object v3

    if-eqz v3, :cond_1

    const/4 v3, 0x1

    :goto_1
    move v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method public final userAgentStylesheetProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1554
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->userAgentStylesheet:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1555
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Scene$12;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    const-string v6, "userAgentStylesheet"

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/Scene$12;-><init>(Ljavafx/scene/Scene;Ljava/lang/Object;Ljava/lang/String;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/Scene;->userAgentStylesheet:Ljavafx/beans/property/ObjectProperty;

    .line 1562
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Scene;->userAgentStylesheet:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 825
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene;->widthPropertyImpl()Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final windowProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/stage/Window;",
            ">;"
        }
    .end annotation

    .prologue
    .line 627
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene;->windowPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final xProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 777
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene;->xPropertyImpl()Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method

.method public final yProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;
    .locals 2

    .prologue
    .line 801
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Scene;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Scene;->yPropertyImpl()Ljavafx/beans/property/ReadOnlyDoubleWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyDoubleWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Scene;
    return-object v0
.end method
