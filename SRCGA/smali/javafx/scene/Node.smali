.class public abstract Ljavafx/scene/Node;
.super Ljava/lang/Object;
.source "Node.java"

# interfaces
.implements Ljavafx/event/EventTarget;
.implements Ljavafx/css/Styleable;


# annotations
.annotation runtime Lcom/sun/javafx/beans/IDProperty;
    value = "id"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/Node$AccessibilityProperties;,
        Ljavafx/scene/Node$LazyBoundsProperty;,
        Ljavafx/scene/Node$LazyTransformProperty;,
        Ljavafx/scene/Node$StyleableProperties;,
        Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;,
        Ljavafx/scene/Node$FocusedProperty;,
        Ljavafx/scene/Node$MiscProperties;,
        Ljavafx/scene/Node$EffectiveOrientationProperty;,
        Ljavafx/scene/Node$NodeTransformation;,
        Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;
    }
.end annotation


# static fields
.field private static final AUTOMATIC_ORIENTATION_LTR:B = 0x0t

.field private static final AUTOMATIC_ORIENTATION_MASK:B = 0x2t

.field private static final AUTOMATIC_ORIENTATION_RTL:B = 0x2t

.field public static final BASELINE_OFFSET_SAME_AS_HEIGHT:D = -Infinity

.field private static final DEFAULT_CACHE:Z = false

.field private static final DEFAULT_CACHE_HINT:Ljavafx/scene/CacheHint;

.field private static final DEFAULT_CLIP:Ljavafx/scene/Node;

.field private static final DEFAULT_CURSOR:Ljavafx/scene/Cursor;

.field private static final DEFAULT_DEPTH_TEST:Ljavafx/scene/DepthTest;

.field private static final DEFAULT_DISABLE:Z = false

.field private static final DEFAULT_EFFECT:Ljavafx/scene/effect/Effect;

.field private static final DEFAULT_INPUT_METHOD_REQUESTS:Ljavafx/scene/input/InputMethodRequests;

.field private static final DEFAULT_MOUSE_TRANSPARENT:Z = false

.field private static final DEFAULT_ROTATE:D = 0.0

.field private static final DEFAULT_ROTATION_AXIS:Ljavafx/geometry/Point3D;

.field private static final DEFAULT_SCALE_X:D = 1.0

.field private static final DEFAULT_SCALE_Y:D = 1.0

.field private static final DEFAULT_SCALE_Z:D = 1.0

.field private static final DEFAULT_TRANSLATE_X:D = 0.0

.field private static final DEFAULT_TRANSLATE_Y:D = 0.0

.field private static final DEFAULT_TRANSLATE_Z:D = 0.0

.field private static final DISABLED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final EFFECTIVE_ORIENTATION_LTR:B = 0x0t

.field private static final EFFECTIVE_ORIENTATION_MASK:B = 0x1t

.field private static final EFFECTIVE_ORIENTATION_RTL:B = 0x1t

.field private static final EPSILON_ABSOLUTE:D = 1.0E-5

.field private static final FOCUSED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final HOVER_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final PRESSED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final SHOW_MNEMONICS_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

.field private static final USER_DATA_KEY:Ljava/lang/Object;

.field private static final boundsAccessor:Lcom/sun/javafx/scene/BoundsAccessor;


# instance fields
.field private _geomBounds:Lcom/sun/javafx/geom/BaseBounds;

.field private _txBounds:Lcom/sun/javafx/geom/BaseBounds;

.field accessibilityProperties:Ljavafx/scene/Node$AccessibilityProperties;

.field accessible:Lcom/sun/glass/ui/Accessible;

.field private accessibleRole:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/AccessibleRole;",
            ">;"
        }
    .end annotation
.end field

.field private blendMode:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/BlendMode;",
            ">;"
        }
    .end annotation
.end field

.field boundsChanged:Z

.field private canReceiveFocus:Z

.field private clipParent:Ljavafx/scene/Node;

.field cssFlag:Lcom/sun/javafx/scene/CssFlags;

.field private derivedDepthTest:Z

.field private dirtyBits:I

.field private disabled:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

.field private effectiveNodeOrientationProperty:Ljavafx/scene/Node$EffectiveOrientationProperty;

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

.field private eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

.field private focusTraversable:Ljavafx/beans/property/BooleanProperty;

.field private focused:Ljavafx/scene/Node$FocusedProperty;

.field private geomBounds:Lcom/sun/javafx/geom/BaseBounds;

.field private geomBoundsInvalid:Z

.field private hover:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

.field private id:Ljavafx/beans/property/StringProperty;

.field private impl_showMnemonics:Ljavafx/beans/property/BooleanProperty;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field private internalEventDispatcher:Lcom/sun/javafx/scene/NodeEventDispatcher;

.field private labeledBy:Ljavafx/scene/Node;

.field private layoutBounds:Ljavafx/scene/Node$LazyBoundsProperty;

.field private layoutX:Ljavafx/beans/property/DoubleProperty;

.field private layoutY:Ljavafx/beans/property/DoubleProperty;

.field private localBounds:Lcom/sun/javafx/geom/BaseBounds;

.field private localBoundsInvalid:Z

.field private localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

.field private managed:Ljavafx/beans/property/BooleanProperty;

.field private miscProperties:Ljavafx/scene/Node$MiscProperties;

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

.field private nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

.field private opacity:Ljavafx/beans/property/DoubleProperty;

.field private parent:Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/Parent;",
            ">;"
        }
    .end annotation
.end field

.field private final parentDisabledChangedListener:Ljavafx/beans/InvalidationListener;

.field private final parentTreeVisibleChangedListener:Ljavafx/beans/InvalidationListener;

.field private peer:Lcom/sun/javafx/sg/prism/NGNode;

.field private pendingUpdateBounds:Z

.field private pickOnBounds:Ljavafx/beans/property/BooleanProperty;

.field private preprocessMouseEventDispatcher:Ljavafx/event/EventDispatcher;

.field private pressed:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

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

.field final pseudoClassStates:Ljavafx/collections/ObservableSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableSet",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;"
        }
    .end annotation
.end field

.field private resolvedNodeOrientation:B

.field private scene:Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire",
            "<",
            "Ljavafx/scene/Scene;",
            ">;"
        }
    .end annotation
.end field

.field private style:Ljavafx/beans/property/StringProperty;

.field private styleClass:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field styleHelper:Ljavafx/scene/CssStyleHelper;

.field private subScene:Ljavafx/scene/SubScene;

.field private transformDirty:Z

.field private treeVisible:Z

.field private treeVisibleRO:Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;

.field private txBounds:Lcom/sun/javafx/geom/BaseBounds;

.field private txBoundsInvalid:Z

.field private visible:Ljavafx/beans/property/BooleanProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 387
    const-string v0, "Node class loaded"

    invoke-static {v0}, Lcom/sun/javafx/perf/PerformanceTracker;->logEvent(Ljava/lang/String;)V

    .line 655
    new-instance v0, Ljava/lang/Object;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Ljavafx/scene/Node;->USER_DATA_KEY:Ljava/lang/Object;

    .line 5530
    sget-object v0, Ljavafx/scene/transform/Rotate;->Z_AXIS:Ljavafx/geometry/Point3D;

    sput-object v0, Ljavafx/scene/Node;->DEFAULT_ROTATION_AXIS:Ljavafx/geometry/Point3D;

    .line 6390
    sget-object v0, Ljavafx/scene/CacheHint;->DEFAULT:Ljavafx/scene/CacheHint;

    sput-object v0, Ljavafx/scene/Node;->DEFAULT_CACHE_HINT:Ljavafx/scene/CacheHint;

    .line 6391
    const/4 v0, 0x0

    sput-object v0, Ljavafx/scene/Node;->DEFAULT_CLIP:Ljavafx/scene/Node;

    .line 6392
    const/4 v0, 0x0

    sput-object v0, Ljavafx/scene/Node;->DEFAULT_CURSOR:Ljavafx/scene/Cursor;

    .line 6393
    sget-object v0, Ljavafx/scene/DepthTest;->INHERIT:Ljavafx/scene/DepthTest;

    sput-object v0, Ljavafx/scene/Node;->DEFAULT_DEPTH_TEST:Ljavafx/scene/DepthTest;

    .line 6395
    const/4 v0, 0x0

    sput-object v0, Ljavafx/scene/Node;->DEFAULT_EFFECT:Ljavafx/scene/effect/Effect;

    .line 6396
    const/4 v0, 0x0

    sput-object v0, Ljavafx/scene/Node;->DEFAULT_INPUT_METHOD_REQUESTS:Ljavafx/scene/input/InputMethodRequests;

    .line 9201
    const-string v0, "hover"

    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/Node;->HOVER_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 9202
    const-string v0, "pressed"

    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/Node;->PRESSED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 9203
    const-string v0, "disabled"

    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/Node;->DISABLED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 9204
    const-string v0, "focused"

    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/Node;->FOCUSED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 9205
    const-string v0, "show-mnemonics"

    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/Node;->SHOW_MNEMONICS_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    .line 9323
    invoke-static {}, Ljavafx/scene/Node$$Lambda$5;->lambdaFactory$()Lcom/sun/javafx/scene/BoundsAccessor;

    move-result-object v0

    sput-object v0, Ljavafx/scene/Node;->boundsAccessor:Lcom/sun/javafx/scene/BoundsAccessor;

    .line 9340
    new-instance v0, Ljavafx/scene/Node$18;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/Node$18;-><init>()V

    invoke-static {v0}, Lcom/sun/javafx/scene/NodeHelper;->setNodeAccessor(Lcom/sun/javafx/scene/NodeHelper$NodeAccessor;)V

    .line 9367
    return-void
.end method

.method protected constructor <init>()V
    .locals 9

    .prologue
    .line 2344
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 518
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/RectBounds;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, -0x40800000    # -1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    iput-object v2, v1, Ljavafx/scene/Node;->_geomBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 519
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/RectBounds;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/high16 v6, -0x40800000    # -1.0f

    const/high16 v7, -0x40800000    # -1.0f

    invoke-direct {v3, v4, v5, v6, v7}, Lcom/sun/javafx/geom/RectBounds;-><init>(FFFF)V

    iput-object v2, v1, Ljavafx/scene/Node;->_txBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 521
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/Node;->pendingUpdateBounds:Z

    .line 790
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/Node$$Lambda$2;->lambdaFactory$(Ljavafx/scene/Node;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/Node;->parentDisabledChangedListener:Ljavafx/beans/InvalidationListener;

    .line 792
    move-object v1, v0

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/Node$$Lambda$3;->lambdaFactory$(Ljavafx/scene/Node;)Ljavafx/beans/InvalidationListener;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/Node;->parentTreeVisibleChangedListener:Ljavafx/beans/InvalidationListener;

    .line 794
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/Node;->subScene:Ljavafx/scene/SubScene;

    .line 802
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;-><init>(Ljavafx/scene/Node;Ljavafx/scene/Node$1;)V

    iput-object v2, v1, Ljavafx/scene/Node;->scene:Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;

    .line 1020
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$3;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Node$3;-><init>(Ljavafx/scene/Node;)V

    iput-object v2, v1, Ljavafx/scene/Node;->styleClass:Ljavafx/collections/ObservableList;

    .line 1553
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/Node;->derivedDepthTest:Z

    .line 3220
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$12;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Node$12;-><init>(Ljavafx/scene/Node;)V

    iput-object v2, v1, Ljavafx/scene/Node;->layoutBounds:Ljavafx/scene/Node$LazyBoundsProperty;

    .line 3322
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    iput-object v2, v1, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 3328
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/Node;->transformDirty:Z

    .line 3336
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/RectBounds;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    iput-object v2, v1, Ljavafx/scene/Node;->txBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 3343
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/geom/RectBounds;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    iput-object v2, v1, Ljavafx/scene/Node;->geomBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 3351
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/Node;->localBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 3769
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/Node;->geomBoundsInvalid:Z

    .line 3770
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/Node;->localBoundsInvalid:Z

    .line 3771
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/Node;->txBoundsInvalid:Z

    .line 6113
    move-object v1, v0

    const/4 v2, 0x0

    iput-byte v2, v1, Ljavafx/scene/Node;->resolvedNodeOrientation:B

    .line 8088
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/Node;->canReceiveFocus:Z

    .line 8178
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/Node;->labeledBy:Ljavafx/scene/Node;

    .line 8818
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/CssFlags;->CLEAN:Lcom/sun/javafx/scene/CssFlags;

    iput-object v2, v1, Ljavafx/scene/Node;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    .line 8884
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/css/PseudoClassState;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Lcom/sun/javafx/css/PseudoClassState;-><init>()V

    iput-object v2, v1, Ljavafx/scene/Node;->pseudoClassStates:Ljavafx/collections/ObservableSet;

    .line 2348
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->setDirty()V

    .line 2349
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/Node;->updateTreeVisible(Z)V

    .line 2354
    return-void
.end method

.method static synthetic access$000(Ljavafx/scene/Node;)Ljavafx/beans/InvalidationListener;
    .locals 2

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->parentDisabledChangedListener:Ljavafx/beans/InvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node;
    return-object v0
.end method

.method static synthetic access$100(Ljavafx/scene/Node;)Ljavafx/beans/InvalidationListener;
    .locals 2

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->parentTreeVisibleChangedListener:Ljavafx/beans/InvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node;
    return-object v0
.end method

.method static synthetic access$1200()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Ljavafx/scene/Node;->DISABLED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$1300(Ljavafx/scene/Node;)V
    .locals 2

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->updateCanReceiveFocus()V

    return-void
.end method

.method static synthetic access$1400(Ljavafx/scene/Node;Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Scene;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Node;->focusSetDirty(Ljavafx/scene/Scene;)V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/Node;)Ljavafx/scene/Node$NodeTransformation;
    .locals 2

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node;
    return-object v0
.end method

.method static synthetic access$2100(Ljavafx/scene/Node;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 2

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node;
    return-object v0
.end method

.method static synthetic access$2900()Ljavafx/geometry/Point3D;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Ljavafx/scene/Node;->DEFAULT_ROTATION_AXIS:Ljavafx/geometry/Point3D;

    return-object v0
.end method

.method static synthetic access$3200()Ljavafx/scene/CacheHint;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Ljavafx/scene/Node;->DEFAULT_CACHE_HINT:Ljavafx/scene/CacheHint;

    return-object v0
.end method

.method static synthetic access$3300()Ljavafx/scene/Node;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Ljavafx/scene/Node;->DEFAULT_CLIP:Ljavafx/scene/Node;

    return-object v0
.end method

.method static synthetic access$3400(Ljavafx/scene/Node;)Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->clipParent:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node;
    return-object v0
.end method

.method static synthetic access$3402(Ljavafx/scene/Node;Ljavafx/scene/Node;)Ljavafx/scene/Node;
    .locals 7

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/Node;->clipParent:Ljavafx/scene/Node;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/Node;
    return-object v0
.end method

.method static synthetic access$3600()Ljavafx/scene/Cursor;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Ljavafx/scene/Node;->DEFAULT_CURSOR:Ljavafx/scene/Cursor;

    return-object v0
.end method

.method static synthetic access$3800()Ljavafx/scene/DepthTest;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Ljavafx/scene/Node;->DEFAULT_DEPTH_TEST:Ljavafx/scene/DepthTest;

    return-object v0
.end method

.method static synthetic access$3900()Ljavafx/scene/effect/Effect;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Ljavafx/scene/Node;->DEFAULT_EFFECT:Ljavafx/scene/effect/Effect;

    return-object v0
.end method

.method static synthetic access$4200()Ljavafx/scene/input/InputMethodRequests;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Ljavafx/scene/Node;->DEFAULT_INPUT_METHOD_REQUESTS:Ljavafx/scene/input/InputMethodRequests;

    return-object v0
.end method

.method static synthetic access$4300()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Ljavafx/scene/Node;->HOVER_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$4400()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Ljavafx/scene/Node;->PRESSED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$4500()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Ljavafx/scene/Node;->FOCUSED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$4800(Ljavafx/scene/Node;)Z
    .locals 2

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Node;->treeVisible:Z

    move v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node;
    return v0
.end method

.method static synthetic access$4900()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 384
    sget-object v0, Ljavafx/scene/Node;->SHOW_MNEMONICS_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/Node;)V
    .locals 2

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->updateDisabled()V

    return-void
.end method

.method static synthetic access$5000(Ljavafx/scene/Node;)Ljavafx/scene/Node$MiscProperties;
    .locals 2

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node;
    return-object v0
.end method

.method static synthetic access$5100(Ljavafx/scene/Node;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->focusTraversable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node;
    return-object v0
.end method

.method static synthetic access$5200(Ljavafx/scene/Node;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->opacity:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node;
    return-object v0
.end method

.method static synthetic access$5300(Ljavafx/scene/Node;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->blendMode:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node;
    return-object v0
.end method

.method static synthetic access$600(Ljavafx/scene/Node;Z)V
    .locals 4

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Node;->updateTreeVisible(Z)V

    return-void
.end method

.method static synthetic access$6100(Ljavafx/scene/Node;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->visible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/Node;
    return-object v0
.end method

.method static synthetic access$6300(Ljavafx/scene/Node;)V
    .locals 2

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->doCSSLayoutSyncForSnapshot()V

    return-void
.end method

.method static synthetic access$6402(Ljavafx/scene/Node;Ljavafx/scene/Node;)Ljavafx/scene/Node;
    .locals 7

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Ljavafx/scene/Node;->labeledBy:Ljavafx/scene/Node;

    move-object v0, v2

    .end local v0    # "x0":Ljavafx/scene/Node;
    return-object v0
.end method

.method static synthetic access$700(Ljavafx/scene/Node;)V
    .locals 2

    .prologue
    .line 384
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->invalidateLocalToSceneTransform()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/Node;Ljavafx/scene/SnapshotParameters;Ljavafx/scene/image/WritableImage;Ljavafx/util/Callback;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/Node;->lambda$snapshot$15(Ljavafx/scene/SnapshotParameters;Ljavafx/scene/image/WritableImage;Ljavafx/util/Callback;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/Node;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Node;->lambda$new$13(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/Node;Ljavafx/beans/Observable;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/Node;->lambda$new$14(Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/Node;Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Node;->lambda$buildEventDispatchChain$17(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-static {v3, v4, v5}, Ljavafx/scene/Node;->lambda$static$18(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v0, v3

    return-object v0
.end method

.method private addToSceneDirtyList()V
    .locals 4

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    move-object v1, v2

    .line 424
    .local v1, "s":Ljavafx/scene/Scene;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 425
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljavafx/scene/Scene;->addToDirtyList(Ljavafx/scene/Node;)V

    .line 426
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 427
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v2

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljavafx/scene/SubScene;->setDirty(Ljavafx/scene/Node;)V

    .line 430
    :cond_0
    return-void
.end method

.method static almostZero(D)Z
    .locals 6

    .prologue
    .line 5188
    move-wide v0, p0

    .local v0, "a":D
    move-wide v2, v0

    const-wide v4, 0x3ee4f8b588e368f1L    # 1.0E-5

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    move-wide v2, v0

    const-wide v4, -0x411b074a771c970fL    # -1.0E-5

    cmpl-double v2, v2, v4

    if-lez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "a":D
    return v0

    .restart local v0    # "a":D
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private calcAutomaticNodeOrientation()B
    .locals 6

    .prologue
    .line 6296
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node;->usesMirroring()Z

    move-result v4

    if-nez v4, :cond_0

    .line 6297
    const/4 v4, 0x0

    move v0, v4

    .line 6321
    .end local v0    # "this":Ljavafx/scene/Node;
    .local v1, "nodeOrientationValue":Ljavafx/geometry/NodeOrientation;
    :goto_0
    return v0

    .line 6300
    .end local v1    # "nodeOrientationValue":Ljavafx/geometry/NodeOrientation;
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node;->getNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v4

    move-object v1, v4

    .line 6301
    .restart local v1    # "nodeOrientationValue":Ljavafx/geometry/NodeOrientation;
    move-object v4, v1

    sget-object v5, Ljavafx/geometry/NodeOrientation;->INHERIT:Ljavafx/geometry/NodeOrientation;

    if-eq v4, v5, :cond_2

    .line 6302
    move-object v4, v1

    sget-object v5, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    if-ne v4, v5, :cond_1

    const/4 v4, 0x0

    :goto_1
    move v0, v4

    goto :goto_0

    :cond_1
    const/4 v4, 0x2

    goto :goto_1

    .line 6307
    :cond_2
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/Node;->getMirroringOrientationParent()Ljavafx/scene/Node;

    move-result-object v4

    move-object v2, v4

    .line 6308
    .local v2, "parentValue":Ljavafx/scene/Node;
    move-object v4, v2

    if-eqz v4, :cond_3

    .line 6310
    move-object v4, v2

    iget-byte v4, v4, Ljavafx/scene/Node;->resolvedNodeOrientation:B

    invoke-static {v4}, Ljavafx/scene/Node;->getAutomaticOrientation(B)B

    move-result v4

    move v0, v4

    goto :goto_0

    .line 6313
    :cond_3
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    move-object v3, v4

    .line 6314
    .local v3, "sceneValue":Ljavafx/scene/Scene;
    move-object v4, v3

    if-eqz v4, :cond_5

    .line 6315
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v4

    sget-object v5, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    if-ne v4, v5, :cond_4

    const/4 v4, 0x0

    :goto_2
    move v0, v4

    goto :goto_0

    :cond_4
    const/4 v4, 0x2

    goto :goto_2

    .line 6321
    :cond_5
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0
.end method

.method private calcEffectiveNodeOrientation()B
    .locals 6

    .prologue
    .line 6272
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node;->getNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v4

    move-object v1, v4

    .line 6273
    .local v1, "nodeOrientationValue":Ljavafx/geometry/NodeOrientation;
    move-object v4, v1

    sget-object v5, Ljavafx/geometry/NodeOrientation;->INHERIT:Ljavafx/geometry/NodeOrientation;

    if-eq v4, v5, :cond_1

    .line 6274
    move-object v4, v1

    sget-object v5, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    if-ne v4, v5, :cond_0

    const/4 v4, 0x0

    :goto_0
    move v0, v4

    .line 6292
    .end local v0    # "this":Ljavafx/scene/Node;
    :goto_1
    return v0

    .line 6274
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    const/4 v4, 0x1

    goto :goto_0

    .line 6279
    :cond_1
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/Node;->getOrientationParent()Ljavafx/scene/Node;

    move-result-object v4

    move-object v2, v4

    .line 6280
    .local v2, "parentValue":Ljavafx/scene/Node;
    move-object v4, v2

    if-eqz v4, :cond_2

    .line 6281
    move-object v4, v2

    iget-byte v4, v4, Ljavafx/scene/Node;->resolvedNodeOrientation:B

    invoke-static {v4}, Ljavafx/scene/Node;->getEffectiveOrientation(B)B

    move-result v4

    move v0, v4

    goto :goto_1

    .line 6284
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    move-object v3, v4

    .line 6285
    .local v3, "sceneValue":Ljavafx/scene/Scene;
    move-object v4, v3

    if-eqz v4, :cond_4

    .line 6286
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v4

    sget-object v5, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    if-ne v4, v5, :cond_3

    const/4 v4, 0x0

    :goto_2
    move v0, v4

    goto :goto_1

    :cond_3
    const/4 v4, 0x1

    goto :goto_2

    .line 6292
    :cond_4
    const/4 v4, 0x0

    move v0, v4

    goto :goto_1
.end method

.method private clearDirty()V
    .locals 3

    .prologue
    .line 465
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    const/4 v2, 0x0

    iput v2, v1, Ljavafx/scene/Node;->dirtyBits:I

    .line 466
    return-void
.end method

.method private computeLocalBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 26

    .prologue
    .line 3589
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/Node;
    move-object/from16 v4, p1

    .local v4, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v5, p2

    .local v5, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Node;->getEffect()Ljavafx/scene/effect/Effect;

    move-result-object v18

    if-eqz v18, :cond_1

    .line 3590
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Node;->getEffect()Ljavafx/scene/effect/Effect;

    move-result-object v18

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    move-object/from16 v21, v3

    sget-object v22, Ljavafx/scene/Node;->boundsAccessor:Lcom/sun/javafx/scene/BoundsAccessor;

    invoke-virtual/range {v18 .. v22}, Ljavafx/scene/effect/Effect;->impl_getBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;Lcom/sun/javafx/scene/BoundsAccessor;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    move-object/from16 v6, v18

    .line 3591
    .local v6, "b":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v18, v4

    move-object/from16 v19, v6

    invoke-virtual/range {v18 .. v19}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    move-object/from16 v4, v18

    .line 3597
    .end local v6    # "b":Lcom/sun/javafx/geom/BaseBounds;
    :goto_0
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Node;->getClip()Ljavafx/scene/Node;

    move-result-object v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v3

    move-object/from16 v0, v18

    instance-of v0, v0, Ljavafx/scene/shape/Shape3D;

    move/from16 v18, v0

    if-nez v18, :cond_0

    move-object/from16 v18, v3

    .line 3601
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Node;->getClip()Ljavafx/scene/Node;

    move-result-object v18

    move-object/from16 v0, v18

    instance-of v0, v0, Ljavafx/scene/shape/Shape3D;

    move/from16 v18, v0

    if-nez v18, :cond_0

    .line 3602
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v6, v18

    .line 3603
    .local v6, "x1":D
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v8, v18

    .line 3604
    .local v8, "y1":D
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v10, v18

    .line 3605
    .local v10, "x2":D
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v12, v18

    .line 3606
    .local v12, "y2":D
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v14, v18

    .line 3607
    .local v14, "z1":D
    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v16, v18

    .line 3608
    .local v16, "z2":D
    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Node;->getClip()Ljavafx/scene/Node;

    move-result-object v18

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->getTransformedBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    move-object/from16 v4, v18

    .line 3609
    move-object/from16 v18, v4

    move-wide/from16 v19, v6

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move-wide/from16 v20, v8

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move-wide/from16 v21, v14

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move-wide/from16 v22, v10

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-wide/from16 v23, v12

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    move-wide/from16 v24, v16

    move-wide/from16 v0, v24

    double-to-float v0, v0

    move/from16 v24, v0

    invoke-virtual/range {v18 .. v24}, Lcom/sun/javafx/geom/BaseBounds;->intersectWith(FFFFFF)V

    .line 3612
    .end local v6    # "x1":D
    .end local v8    # "y1":D
    .end local v10    # "x2":D
    .end local v12    # "y2":D
    .end local v14    # "z1":D
    .end local v16    # "z2":D
    :cond_0
    move-object/from16 v18, v4

    move-object/from16 v3, v18

    .end local v3    # "this":Ljavafx/scene/Node;
    return-object v3

    .line 3593
    .restart local v3    # "this":Ljavafx/scene/Node;
    :cond_1
    move-object/from16 v18, v3

    move-object/from16 v19, v4

    move-object/from16 v20, v5

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->getGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v18

    move-object/from16 v4, v18

    goto/16 :goto_0
.end method

.method private createInternalEventDispatcher()Lcom/sun/javafx/scene/NodeEventDispatcher;
    .locals 5

    .prologue
    .line 8321
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    new-instance v1, Lcom/sun/javafx/scene/NodeEventDispatcher;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/NodeEventDispatcher;-><init>(Ljava/lang/Object;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method private disabledPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    .locals 6

    .prologue
    .line 1654
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->disabled:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    .line 1655
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$8;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Node$8;-><init>(Ljavafx/scene/Node;)V

    iput-object v2, v1, Ljavafx/scene/Node;->disabled:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 1675
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->disabled:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method private doCSSLayoutSyncForSnapshot()V
    .locals 2

    .prologue
    .line 1820
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->doCSSPass()V

    .line 1821
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->doLayoutPass()V

    .line 1822
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->updateBounds()V

    .line 1823
    const/4 v1, 0x1

    invoke-static {v1}, Ljavafx/scene/Scene;->impl_setAllowPGAccess(Z)V

    .line 1824
    move-object v1, v0

    invoke-static {v1}, Ljavafx/scene/Node;->syncAll(Ljavafx/scene/Node;)V

    .line 1825
    const/4 v1, 0x0

    invoke-static {v1}, Ljavafx/scene/Scene;->impl_setAllowPGAccess(Z)V

    .line 1826
    return-void
.end method

.method private doCSSPass()V
    .locals 3

    .prologue
    .line 1773
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    sget-object v2, Lcom/sun/javafx/scene/CssFlags;->CLEAN:Lcom/sun/javafx/scene/CssFlags;

    if-eq v1, v2, :cond_0

    .line 1783
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->processCSS()V

    .line 1785
    :cond_0
    return-void
.end method

.method private doLayoutPass()V
    .locals 5

    .prologue
    .line 1809
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v3, v0

    instance-of v3, v3, Ljavafx/scene/Parent;

    if-eqz v3, :cond_0

    .line 1812
    move-object v3, v0

    check-cast v3, Ljavafx/scene/Parent;

    move-object v1, v3

    .line 1813
    .local v1, "p":Ljavafx/scene/Parent;
    const/4 v3, 0x0

    move v2, v3

    .local v2, "i":I
    :goto_0
    move v3, v2

    const/4 v4, 0x3

    if-ge v3, v4, :cond_0

    .line 1814
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Parent;->layout()V

    .line 1813
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1817
    .end local v1    # "p":Ljavafx/scene/Parent;
    .end local v2    # "i":I
    :cond_0
    return-void
.end method

.method private doSnapshot(Ljavafx/scene/SnapshotParameters;Ljavafx/scene/image/WritableImage;)Ljavafx/scene/image/WritableImage;
    .locals 30

    .prologue
    .line 1829
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object/from16 v1, p1

    .local v1, "params":Ljavafx/scene/SnapshotParameters;
    move-object/from16 v2, p2

    .local v2, "img":Ljavafx/scene/image/WritableImage;
    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v14

    if-eqz v14, :cond_1

    .line 1830
    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v14

    move-object v15, v0

    invoke-virtual {v14, v15}, Ljavafx/scene/Scene;->doCSSLayoutSyncForSnapshot(Ljavafx/scene/Node;)V

    .line 1835
    :goto_0
    sget-object v14, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v3, v14

    .line 1836
    .local v3, "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/SnapshotParameters;->getTransform()Ljavafx/scene/transform/Transform;

    move-result-object v14

    if-eqz v14, :cond_0

    .line 1837
    new-instance v14, Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v29, v14

    move-object/from16 v14, v29

    move-object/from16 v15, v29

    invoke-direct {v15}, Lcom/sun/javafx/geom/transform/Affine3D;-><init>()V

    move-object v4, v14

    .line 1838
    .local v4, "tempTx":Lcom/sun/javafx/geom/transform/Affine3D;
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/SnapshotParameters;->getTransform()Ljavafx/scene/transform/Transform;

    move-result-object v14

    move-object v15, v4

    invoke-virtual {v14, v15}, Ljavafx/scene/transform/Transform;->impl_apply(Lcom/sun/javafx/geom/transform/Affine3D;)V

    .line 1839
    move-object v14, v4

    move-object v3, v14

    .line 1845
    .end local v4    # "tempTx":Lcom/sun/javafx/geom/transform/Affine3D;
    :cond_0
    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/scene/SnapshotParameters;->getViewport()Ljavafx/geometry/Rectangle2D;

    move-result-object v14

    move-object v12, v14

    .line 1846
    .local v12, "viewport":Ljavafx/geometry/Rectangle2D;
    move-object v14, v12

    if-eqz v14, :cond_2

    .line 1848
    move-object v14, v12

    invoke-virtual {v14}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v14

    move-wide v4, v14

    .line 1849
    .local v4, "x":D
    move-object v14, v12

    invoke-virtual {v14}, Ljavafx/geometry/Rectangle2D;->getMinY()D

    move-result-wide v14

    move-wide v6, v14

    .line 1850
    .local v6, "y":D
    move-object v14, v12

    invoke-virtual {v14}, Ljavafx/geometry/Rectangle2D;->getWidth()D

    move-result-wide v14

    move-wide v8, v14

    .line 1851
    .local v8, "w":D
    move-object v14, v12

    invoke-virtual {v14}, Ljavafx/geometry/Rectangle2D;->getHeight()D

    move-result-wide v14

    move-wide v10, v14

    .line 1862
    .local v10, "h":D
    :goto_1
    move-object v14, v0

    invoke-virtual {v14}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v14

    move-wide v15, v4

    move-wide/from16 v17, v6

    move-wide/from16 v19, v8

    move-wide/from16 v21, v10

    move-object/from16 v23, v0

    move-object/from16 v24, v3

    move-object/from16 v25, v1

    .line 1863
    invoke-virtual/range {v25 .. v25}, Ljavafx/scene/SnapshotParameters;->isDepthBufferInternal()Z

    move-result v25

    move-object/from16 v26, v1

    .line 1864
    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/SnapshotParameters;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v26

    move-object/from16 v27, v1

    invoke-virtual/range {v27 .. v27}, Ljavafx/scene/SnapshotParameters;->getEffectiveCamera()Ljavafx/scene/Camera;

    move-result-object v27

    move-object/from16 v28, v2

    .line 1862
    invoke-static/range {v14 .. v28}, Ljavafx/scene/Scene;->doSnapshot(Ljavafx/scene/Scene;DDDDLjavafx/scene/Node;Lcom/sun/javafx/geom/transform/BaseTransform;ZLjavafx/scene/paint/Paint;Ljavafx/scene/Camera;Ljavafx/scene/image/WritableImage;)Ljavafx/scene/image/WritableImage;

    move-result-object v14

    move-object v13, v14

    .line 1866
    .local v13, "result":Ljavafx/scene/image/WritableImage;
    move-object v14, v13

    move-object v0, v14

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 1832
    .end local v3    # "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    .end local v4    # "x":D
    .end local v6    # "y":D
    .end local v8    # "w":D
    .end local v10    # "h":D
    .end local v12    # "viewport":Ljavafx/geometry/Rectangle2D;
    .end local v13    # "result":Ljavafx/scene/image/WritableImage;
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_1
    move-object v14, v0

    invoke-direct {v14}, Ljavafx/scene/Node;->doCSSLayoutSyncForSnapshot()V

    goto :goto_0

    .line 1855
    .restart local v3    # "transform":Lcom/sun/javafx/geom/transform/BaseTransform;
    .restart local v12    # "viewport":Ljavafx/geometry/Rectangle2D;
    :cond_2
    invoke-static {}, Lcom/sun/javafx/util/TempState;->getInstance()Lcom/sun/javafx/util/TempState;

    move-result-object v14

    iget-object v14, v14, Lcom/sun/javafx/util/TempState;->bounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object v13, v14

    .line 1856
    .local v13, "tempBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v14, v0

    move-object v15, v13

    move-object/from16 v16, v3

    invoke-virtual/range {v14 .. v16}, Ljavafx/scene/Node;->getTransformedBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v14

    move-object v13, v14

    .line 1857
    move-object v14, v13

    invoke-virtual {v14}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v14

    float-to-double v14, v14

    move-wide v4, v14

    .line 1858
    .restart local v4    # "x":D
    move-object v14, v13

    invoke-virtual {v14}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v14

    float-to-double v14, v14

    move-wide v6, v14

    .line 1859
    .restart local v6    # "y":D
    move-object v14, v13

    invoke-virtual {v14}, Lcom/sun/javafx/geom/BaseBounds;->getWidth()F

    move-result v14

    float-to-double v14, v14

    move-wide v8, v14

    .line 1860
    .restart local v8    # "w":D
    move-object v14, v13

    invoke-virtual {v14}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v14

    float-to-double v14, v14

    move-wide v10, v14

    .restart local v10    # "h":D
    goto :goto_1
.end method

.method private focusSetDirty(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 7860
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "s":Ljavafx/scene/Scene;
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v0

    move-object v3, v1

    .line 7861
    invoke-virtual {v3}, Ljavafx/scene/Scene;->getFocusOwner()Ljavafx/scene/Node;

    move-result-object v3

    if-eq v2, v3, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->isFocusTraversable()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 7862
    :cond_0
    move-object v2, v1

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Ljavafx/scene/Scene;->setFocusDirty(Z)V

    .line 7864
    :cond_1
    return-void
.end method

.method private focusedPropertyImpl()Ljavafx/scene/Node$FocusedProperty;
    .locals 6

    .prologue
    .line 7784
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->focused:Ljavafx/scene/Node$FocusedProperty;

    if-nez v1, :cond_0

    .line 7785
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$FocusedProperty;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Node$FocusedProperty;-><init>(Ljavafx/scene/Node;)V

    iput-object v2, v1, Ljavafx/scene/Node;->focused:Ljavafx/scene/Node$FocusedProperty;

    .line 7787
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->focused:Ljavafx/scene/Node$FocusedProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method private getAccessibilityProperties()Ljavafx/scene/Node$AccessibilityProperties;
    .locals 7

    .prologue
    .line 9481
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->accessibilityProperties:Ljavafx/scene/Node$AccessibilityProperties;

    if-nez v1, :cond_0

    .line 9482
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$AccessibilityProperties;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Node$AccessibilityProperties;-><init>(Ljavafx/scene/Node;Ljavafx/scene/Node$1;)V

    iput-object v2, v1, Ljavafx/scene/Node;->accessibilityProperties:Ljavafx/scene/Node$AccessibilityProperties;

    .line 9484
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->accessibilityProperties:Ljavafx/scene/Node$AccessibilityProperties;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method private static getAutomaticOrientation(B)B
    .locals 3

    .prologue
    .line 6348
    move v0, p0

    .local v0, "resolvedNodeOrientation":B
    move v1, v0

    const/4 v2, 0x2

    and-int/lit8 v1, v1, 0x2

    int-to-byte v1, v1

    move v0, v1

    .end local v0    # "resolvedNodeOrientation":B
    return v0
.end method

.method public static getClassCssMetaData()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 8738
    # getter for: Ljavafx/scene/Node$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/Node$StyleableProperties;->access$6200()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private static getEffectiveOrientation(B)B
    .locals 3

    .prologue
    .line 6343
    move v0, p0

    .local v0, "resolvedNodeOrientation":B
    move v1, v0

    const/4 v2, 0x1

    and-int/lit8 v1, v1, 0x1

    int-to-byte v1, v1

    move v0, v1

    .end local v0    # "resolvedNodeOrientation":B
    return v0
.end method

.method private getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;
    .locals 7

    .prologue
    .line 6087
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    .line 6088
    move-object v1, v0

    new-instance v2, Lcom/sun/javafx/scene/EventHandlerProperties;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    .line 6090
    invoke-direct {v4}, Ljavafx/scene/Node;->getInternalEventDispatcher()Lcom/sun/javafx/scene/NodeEventDispatcher;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/scene/NodeEventDispatcher;->getEventHandlerManager()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v4

    move-object v5, v0

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/EventHandlerProperties;-><init>(Lcom/sun/javafx/event/EventHandlerManager;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 6094
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method private getInternalEventDispatcher()Lcom/sun/javafx/scene/NodeEventDispatcher;
    .locals 2

    .prologue
    .line 8306
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->initializeInternalEventDispatcher()V

    .line 8307
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->internalEventDispatcher:Lcom/sun/javafx/scene/NodeEventDispatcher;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method private getMirroringOrientationParent()Ljavafx/scene/Node;
    .locals 4

    .prologue
    .line 6241
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v3

    move-object v1, v3

    .line 6242
    .local v1, "parentValue":Ljavafx/scene/Node;
    :goto_0
    move-object v3, v1

    if-eqz v3, :cond_1

    .line 6243
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->usesMirroring()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 6244
    move-object v3, v1

    move-object v0, v3

    .line 6254
    .end local v0    # "this":Ljavafx/scene/Node;
    :goto_1
    return-object v0

    .line 6246
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v3

    move-object v1, v3

    goto :goto_0

    .line 6249
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v3

    move-object v2, v3

    .line 6250
    .local v2, "subSceneValue":Ljavafx/scene/Node;
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 6251
    move-object v3, v2

    move-object v0, v3

    goto :goto_1

    .line 6254
    :cond_2
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method private getMiscProperties()Ljavafx/scene/Node$MiscProperties;
    .locals 7

    .prologue
    .line 6382
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    if-nez v1, :cond_0

    .line 6383
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$MiscProperties;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Node$MiscProperties;-><init>(Ljavafx/scene/Node;Ljavafx/scene/Node$1;)V

    iput-object v2, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    .line 6386
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method private getNodeTransformation()Ljavafx/scene/Node$NodeTransformation;
    .locals 7

    .prologue
    .line 5496
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    if-nez v1, :cond_0

    .line 5497
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$NodeTransformation;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Node$NodeTransformation;-><init>(Ljavafx/scene/Node;Ljavafx/scene/Node$1;)V

    iput-object v2, v1, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    .line 5500
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method private getOrientationParent()Ljavafx/scene/Node;
    .locals 4

    .prologue
    .line 6258
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v3

    move-object v1, v3

    .line 6259
    .local v1, "parentValue":Ljavafx/scene/Node;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 6260
    move-object v3, v1

    move-object v0, v3

    .line 6268
    .end local v0    # "this":Ljavafx/scene/Node;
    :goto_0
    return-object v0

    .line 6263
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v3

    move-object v2, v3

    .line 6264
    .local v2, "subSceneValue":Ljavafx/scene/Node;
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 6265
    move-object v3, v2

    move-object v0, v3

    goto :goto_0

    .line 6268
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_0
.end method

.method private hoverPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    .locals 6

    .prologue
    .line 6901
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->hover:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    .line 6902
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$14;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Node$14;-><init>(Ljavafx/scene/Node;)V

    iput-object v2, v1, Ljavafx/scene/Node;->hover:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 6924
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->hover:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method private impl_computeAreaInScreen()D
    .locals 26

    .prologue
    .line 2992
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/Node;
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v16

    move-object/from16 v3, v16

    .line 2993
    .local v3, "tmpScene":Ljavafx/scene/Scene;
    move-object/from16 v16, v3

    if-eqz v16, :cond_9

    .line 2994
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Node;->getBoundsInLocal()Ljavafx/geometry/Bounds;

    move-result-object v16

    move-object/from16 v4, v16

    .line 2995
    .local v4, "bounds":Ljavafx/geometry/Bounds;
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Scene;->getEffectiveCamera()Ljavafx/scene/Camera;

    move-result-object v16

    move-object/from16 v5, v16

    .line 2996
    .local v5, "camera":Ljavafx/scene/Camera;
    move-object/from16 v16, v5

    move-object/from16 v0, v16

    instance-of v0, v0, Ljavafx/scene/PerspectiveCamera;

    move/from16 v16, v0

    if-eqz v16, :cond_1

    const/16 v16, 0x1

    :goto_0
    move/from16 v6, v16

    .line 2997
    .local v6, "isPerspective":Z
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Node;->getLocalToSceneTransform()Ljavafx/scene/transform/Transform;

    move-result-object v16

    move-object/from16 v7, v16

    .line 2998
    .local v7, "localToSceneTx":Ljavafx/scene/transform/Transform;
    invoke-static {}, Lcom/sun/javafx/util/TempState;->getInstance()Lcom/sun/javafx/util/TempState;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/util/TempState;->tempTx:Lcom/sun/javafx/geom/transform/Affine3D;

    move-object/from16 v16, v0

    move-object/from16 v8, v16

    .line 2999
    .local v8, "tempTx":Lcom/sun/javafx/geom/transform/Affine3D;
    new-instance v16, Lcom/sun/javafx/geom/BoxBounds;

    move-object/from16 v25, v16

    move-object/from16 v16, v25

    move-object/from16 v17, v25

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v18

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    move-object/from16 v19, v4

    .line 3000
    invoke-virtual/range {v19 .. v19}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v19

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move-object/from16 v20, v4

    .line 3001
    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v20

    move-wide/from16 v0, v20

    double-to-float v0, v0

    move/from16 v20, v0

    move-object/from16 v21, v4

    .line 3002
    invoke-virtual/range {v21 .. v21}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v21

    move-wide/from16 v0, v21

    double-to-float v0, v0

    move/from16 v21, v0

    move-object/from16 v22, v4

    .line 3003
    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v22

    move-wide/from16 v0, v22

    double-to-float v0, v0

    move/from16 v22, v0

    move-object/from16 v23, v4

    .line 3004
    invoke-virtual/range {v23 .. v23}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v23

    move-wide/from16 v0, v23

    double-to-float v0, v0

    move/from16 v23, v0

    invoke-direct/range {v17 .. v23}, Lcom/sun/javafx/geom/BoxBounds;-><init>(FFFFFF)V

    move-object/from16 v9, v16

    .line 3009
    .local v9, "localBounds":Lcom/sun/javafx/geom/BaseBounds;
    move/from16 v16, v6

    if-eqz v16, :cond_3

    .line 3010
    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Camera;->getLocalToSceneTransform()Ljavafx/scene/transform/Transform;

    move-result-object v16

    move-object/from16 v10, v16

    .line 3014
    .local v10, "cameraL2STx":Ljavafx/scene/transform/Transform;
    move-object/from16 v16, v10

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v16

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_6

    move-object/from16 v16, v10

    .line 3015
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_6

    move-object/from16 v16, v10

    .line 3016
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_6

    move-object/from16 v16, v10

    .line 3017
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_6

    move-object/from16 v16, v10

    .line 3018
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v16

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_6

    move-object/from16 v16, v10

    .line 3019
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_6

    move-object/from16 v16, v10

    .line 3020
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_6

    move-object/from16 v16, v10

    .line 3021
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_6

    move-object/from16 v16, v10

    .line 3022
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v16

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_6

    .line 3029
    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMxx()D

    move-result-wide v16

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_2

    move-object/from16 v16, v7

    .line 3030
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMxy()D

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_2

    move-object/from16 v16, v7

    .line 3031
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMxz()D

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_2

    move-object/from16 v16, v7

    .line 3032
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMyx()D

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_2

    move-object/from16 v16, v7

    .line 3033
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMyy()D

    move-result-wide v16

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_2

    move-object/from16 v16, v7

    .line 3034
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMyz()D

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_2

    move-object/from16 v16, v7

    .line 3035
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMzx()D

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_2

    move-object/from16 v16, v7

    .line 3036
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMzy()D

    move-result-wide v16

    const-wide/16 v18, 0x0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_2

    move-object/from16 v16, v7

    .line 3037
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/transform/Transform;->getMzz()D

    move-result-wide v16

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    cmpl-double v16, v16, v18

    if-nez v16, :cond_2

    .line 3039
    invoke-static {}, Lcom/sun/javafx/util/TempState;->getInstance()Lcom/sun/javafx/util/TempState;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/util/TempState;->vec3d:Lcom/sun/javafx/geom/Vec3d;

    move-object/from16 v16, v0

    move-object/from16 v15, v16

    .line 3040
    .local v15, "tempV3D":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v16, v15

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v21

    invoke-virtual/range {v16 .. v22}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 3041
    move-object/from16 v16, v2

    move-object/from16 v17, v15

    invoke-virtual/range {v16 .. v17}, Ljavafx/scene/Node;->localToScene(Lcom/sun/javafx/geom/Vec3d;)V

    .line 3042
    move-object/from16 v16, v15

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v16, v0

    move-wide/from16 v11, v16

    .line 3044
    .local v11, "minZ":D
    move-object/from16 v16, v15

    const-wide/16 v17, 0x0

    const-wide/16 v19, 0x0

    move-object/from16 v21, v4

    invoke-virtual/range {v21 .. v21}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v21

    invoke-virtual/range {v16 .. v22}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 3045
    move-object/from16 v16, v2

    move-object/from16 v17, v15

    invoke-virtual/range {v16 .. v17}, Ljavafx/scene/Node;->localToScene(Lcom/sun/javafx/geom/Vec3d;)V

    .line 3046
    move-object/from16 v16, v15

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v16, v0

    move-wide/from16 v13, v16

    .line 3053
    .end local v15    # "tempV3D":Lcom/sun/javafx/geom/Vec3d;
    .local v13, "maxZ":D
    :goto_1
    move-wide/from16 v16, v11

    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Camera;->getFarClipInScene()D

    move-result-wide v18

    cmpl-double v16, v16, v18

    if-gtz v16, :cond_0

    move-wide/from16 v16, v13

    move-object/from16 v18, v5

    .line 3054
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Camera;->getNearClipInScene()D

    move-result-wide v18

    cmpg-double v16, v16, v18

    if-gez v16, :cond_3

    .line 3055
    :cond_0
    const-wide/16 v16, 0x0

    move-wide/from16 v2, v16

    .line 3101
    .end local v2    # "this":Ljavafx/scene/Node;
    .end local v4    # "bounds":Ljavafx/geometry/Bounds;
    .end local v5    # "camera":Ljavafx/scene/Camera;
    .end local v6    # "isPerspective":Z
    .end local v7    # "localToSceneTx":Ljavafx/scene/transform/Transform;
    .end local v8    # "tempTx":Lcom/sun/javafx/geom/transform/Affine3D;
    .end local v9    # "localBounds":Lcom/sun/javafx/geom/BaseBounds;
    .end local v10    # "cameraL2STx":Ljavafx/scene/transform/Transform;
    .end local v11    # "minZ":D
    .end local v13    # "maxZ":D
    :goto_2
    return-wide v2

    .line 2996
    .restart local v2    # "this":Ljavafx/scene/Node;
    .restart local v4    # "bounds":Ljavafx/geometry/Bounds;
    .restart local v5    # "camera":Ljavafx/scene/Camera;
    :cond_1
    const/16 v16, 0x0

    goto/16 :goto_0

    .line 3048
    .restart local v6    # "isPerspective":Z
    .restart local v7    # "localToSceneTx":Ljavafx/scene/transform/Transform;
    .restart local v8    # "tempTx":Lcom/sun/javafx/geom/transform/Affine3D;
    .restart local v9    # "localBounds":Lcom/sun/javafx/geom/BaseBounds;
    .restart local v10    # "cameraL2STx":Ljavafx/scene/transform/Transform;
    :cond_2
    move-object/from16 v16, v2

    move-object/from16 v17, v4

    invoke-virtual/range {v16 .. v17}, Ljavafx/scene/Node;->localToScene(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v16

    move-object/from16 v15, v16

    .line 3049
    .local v15, "nodeInSceneBounds":Ljavafx/geometry/Bounds;
    move-object/from16 v16, v15

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    move-wide/from16 v11, v16

    .line 3050
    .restart local v11    # "minZ":D
    move-object/from16 v16, v15

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    move-wide/from16 v13, v16

    .restart local v13    # "maxZ":D
    goto :goto_1

    .line 3058
    .line 3078
    .end local v10    # "cameraL2STx":Ljavafx/scene/transform/Transform;
    .end local v11    # "minZ":D
    .end local v13    # "maxZ":D
    .end local v15    # "nodeInSceneBounds":Ljavafx/geometry/Bounds;
    :cond_3
    invoke-static {}, Lcom/sun/javafx/util/TempState;->getInstance()Lcom/sun/javafx/util/TempState;

    move-result-object v16

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/util/TempState;->projViewTx:Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-object/from16 v16, v0

    move-object/from16 v10, v16

    .line 3079
    .local v10, "projViewTx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object/from16 v16, v10

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/Camera;->getProjViewTransform()Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->set(Lcom/sun/javafx/geom/transform/GeneralTransform3D;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v16

    .line 3083
    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/transform/Affine3D;->setToIdentity()V

    .line 3084
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    invoke-virtual/range {v16 .. v17}, Ljavafx/scene/transform/Transform;->impl_apply(Lcom/sun/javafx/geom/transform/Affine3D;)V

    .line 3087
    move-object/from16 v16, v10

    move-object/from16 v17, v8

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->mul(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/GeneralTransform3D;

    move-result-object v16

    move-object/from16 v11, v16

    .line 3090
    .local v11, "tx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    move-object/from16 v16, v11

    move-object/from16 v17, v9

    move-object/from16 v18, v9

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/geom/transform/GeneralTransform3D;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v16

    move-object/from16 v9, v16

    .line 3091
    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/BaseBounds;->getWidth()F

    move-result v16

    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v17

    mul-float v16, v16, v17

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v12, v16

    .line 3095
    .local v12, "area":D
    move/from16 v16, v6

    if-eqz v16, :cond_5

    .line 3096
    move-object/from16 v16, v9

    const/high16 v17, -0x40800000    # -1.0f

    const/high16 v18, -0x40800000    # -1.0f

    const/16 v19, 0x0

    const/high16 v20, 0x3f800000    # 1.0f

    const/high16 v21, 0x3f800000    # 1.0f

    const/high16 v22, 0x3f800000    # 1.0f

    invoke-virtual/range {v16 .. v22}, Lcom/sun/javafx/geom/BaseBounds;->intersectWith(FFFFFF)V

    .line 3097
    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/BaseBounds;->getWidth()F

    move-result v16

    const/16 v17, 0x0

    cmpg-float v16, v16, v17

    if-ltz v16, :cond_4

    move-object/from16 v16, v9

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v16

    const/16 v17, 0x0

    cmpg-float v16, v16, v17

    if-gez v16, :cond_8

    :cond_4
    const-wide/16 v16, 0x0

    :goto_3
    move-wide/from16 v12, v16

    .line 3099
    :cond_5
    move-wide/from16 v16, v12

    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Camera;->getViewWidth()D

    move-result-wide v18

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    move-object/from16 v20, v5

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Camera;->getViewHeight()D

    move-result-wide v20

    mul-double v18, v18, v20

    const-wide/high16 v20, 0x4000000000000000L    # 2.0

    div-double v18, v18, v20

    mul-double v16, v16, v18

    move-wide/from16 v2, v16

    goto/16 :goto_2

    .line 3059
    .end local v11    # "tx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    .end local v12    # "area":D
    .local v10, "cameraL2STx":Ljavafx/scene/transform/Transform;
    :cond_6
    new-instance v16, Lcom/sun/javafx/geom/BoxBounds;

    move-object/from16 v25, v16

    move-object/from16 v16, v25

    move-object/from16 v17, v25

    invoke-direct/range {v17 .. v17}, Lcom/sun/javafx/geom/BoxBounds;-><init>()V

    move-object/from16 v11, v16

    .line 3063
    .local v11, "nodeInCameraBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/transform/Affine3D;->setToIdentity()V

    .line 3064
    move-object/from16 v16, v7

    move-object/from16 v17, v8

    invoke-virtual/range {v16 .. v17}, Ljavafx/scene/transform/Transform;->impl_apply(Lcom/sun/javafx/geom/transform/Affine3D;)V

    .line 3067
    move-object/from16 v16, v8

    move-object/from16 v17, v5

    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/Camera;->getSceneToLocalTransform()Lcom/sun/javafx/geom/transform/Affine3D;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/geom/transform/Affine3D;->preConcatenate(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 3068
    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v11

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/geom/transform/Affine3D;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v16

    .line 3071
    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Camera;->getFarClip()D

    move-result-wide v18

    cmpl-double v16, v16, v18

    if-gtz v16, :cond_7

    move-object/from16 v16, v11

    .line 3072
    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Camera;->getNearClip()D

    move-result-wide v18

    cmpg-double v16, v16, v18

    if-gez v16, :cond_3

    .line 3073
    :cond_7
    const-wide/16 v16, 0x0

    move-wide/from16 v2, v16

    goto/16 :goto_2

    .line 3097
    .local v10, "projViewTx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    .local v11, "tx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    .restart local v12    # "area":D
    :cond_8
    move-wide/from16 v16, v12

    goto :goto_3

    .line 3101
    .end local v4    # "bounds":Ljavafx/geometry/Bounds;
    .end local v5    # "camera":Ljavafx/scene/Camera;
    .end local v6    # "isPerspective":Z
    .end local v7    # "localToSceneTx":Ljavafx/scene/transform/Transform;
    .end local v8    # "tempTx":Lcom/sun/javafx/geom/transform/Affine3D;
    .end local v9    # "localBounds":Lcom/sun/javafx/geom/BaseBounds;
    .end local v10    # "projViewTx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    .end local v11    # "tx":Lcom/sun/javafx/geom/transform/GeneralTransform3D;
    .end local v12    # "area":D
    :cond_9
    const-wide/16 v16, 0x0

    move-wide/from16 v2, v16

    goto/16 :goto_2
.end method

.method public static impl_getMatchingStyles(Ljavafx/css/CssMetaData;Ljavafx/css/Styleable;)Ljava/util/List;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/CssMetaData;",
            "Ljavafx/css/Styleable;",
            ")",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Style;",
            ">;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8763
    move-object v0, p0

    .local v0, "cssMetaData":Ljavafx/css/CssMetaData;
    move-object v1, p1

    .local v1, "styleable":Ljavafx/css/Styleable;
    move-object v2, v1

    move-object v3, v0

    invoke-static {v2, v3}, Ljavafx/scene/CssStyleHelper;->getMatchingStyles(Ljavafx/css/Styleable;Ljavafx/css/CssMetaData;)Ljava/util/List;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "cssMetaData":Ljavafx/css/CssMetaData;
    return-object v0
.end method

.method private initializeInternalEventDispatcher()V
    .locals 8

    .prologue
    .line 8311
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->internalEventDispatcher:Lcom/sun/javafx/scene/NodeEventDispatcher;

    if-nez v1, :cond_0

    .line 8312
    move-object v1, v0

    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Node;->createInternalEventDispatcher()Lcom/sun/javafx/scene/NodeEventDispatcher;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/Node;->internalEventDispatcher:Lcom/sun/javafx/scene/NodeEventDispatcher;

    .line 8313
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "eventDispatcher"

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Node;->internalEventDispatcher:Lcom/sun/javafx/scene/NodeEventDispatcher;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/scene/Node;->eventDispatcher:Ljavafx/beans/property/ObjectProperty;

    .line 8318
    :cond_0
    return-void
.end method

.method private invalidateBoundsInLocal()V
    .locals 2

    .prologue
    .line 3185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    if-eqz v1, :cond_0

    .line 3186
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->invalidateBoundsInLocal()V

    .line 3188
    :cond_0
    return-void
.end method

.method private invalidateBoundsInParent()V
    .locals 2

    .prologue
    .line 3150
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    if-eqz v1, :cond_0

    .line 3151
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->invalidateBoundsInParent()V

    .line 3153
    :cond_0
    return-void
.end method

.method private invalidateLocalToParentTransform()V
    .locals 2

    .prologue
    .line 5453
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    if-eqz v1, :cond_0

    .line 5454
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    invoke-virtual {v1}, Ljavafx/scene/Node$NodeTransformation;->invalidateLocalToParentTransform()V

    .line 5456
    :cond_0
    return-void
.end method

.method private invalidateLocalToSceneTransform()V
    .locals 2

    .prologue
    .line 5484
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    if-eqz v1, :cond_0

    .line 5485
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    invoke-virtual {v1}, Ljavafx/scene/Node$NodeTransformation;->invalidateLocalToSceneTransform()V

    .line 5487
    :cond_0
    return-void
.end method

.method private invalidatedScenes(Ljavafx/scene/Scene;Ljavafx/scene/SubScene;Z)V
    .locals 12

    .prologue
    .line 836
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "oldScene":Ljavafx/scene/Scene;
    move-object v2, p2

    .local v2, "oldSubScene":Ljavafx/scene/SubScene;
    move v3, p3

    .local v3, "reapplyCSS":Z
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/Node;->sceneProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Scene;

    move-object v4, v7

    .line 837
    .local v4, "newScene":Ljavafx/scene/Scene;
    move-object v7, v1

    move-object v8, v4

    if-eq v7, v8, :cond_a

    const/4 v7, 0x1

    :goto_0
    move v5, v7

    .line 838
    .local v5, "sceneChanged":Z
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Node;->subScene:Ljavafx/scene/SubScene;

    move-object v6, v7

    .line 840
    .local v6, "newSubScene":Ljavafx/scene/SubScene;
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/Node;->getClip()Ljavafx/scene/Node;

    move-result-object v7

    if-eqz v7, :cond_0

    .line 841
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/Node;->getClip()Ljavafx/scene/Node;

    move-result-object v7

    move-object v8, v4

    move-object v9, v6

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Ljavafx/scene/Node;->setScenes(Ljavafx/scene/Scene;Ljavafx/scene/SubScene;Z)V

    .line 843
    :cond_0
    move v7, v5

    if-eqz v7, :cond_2

    .line 844
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/Node;->updateCanReceiveFocus()V

    .line 845
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/Node;->isFocusTraversable()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 846
    move-object v7, v4

    if-eqz v7, :cond_1

    .line 847
    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/scene/Scene;->initializeInternalEventDispatcher()V

    .line 850
    :cond_1
    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Ljavafx/scene/Node;->focusSetDirty(Ljavafx/scene/Scene;)V

    .line 851
    move-object v7, v0

    move-object v8, v4

    invoke-direct {v7, v8}, Ljavafx/scene/Node;->focusSetDirty(Ljavafx/scene/Scene;)V

    .line 853
    :cond_2
    move-object v7, v0

    move-object v8, v4

    move-object v9, v6

    move-object v10, v1

    move-object v11, v2

    invoke-virtual {v7, v8, v9, v10, v11}, Ljavafx/scene/Node;->scenesChanged(Ljavafx/scene/Scene;Ljavafx/scene/SubScene;Ljavafx/scene/Scene;Ljavafx/scene/SubScene;)V

    .line 854
    move v7, v5

    if-eqz v7, :cond_3

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/Node;->impl_reapplyCSS()V

    .line 856
    :cond_3
    move v7, v5

    if-eqz v7, :cond_4

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/Node;->impl_isDirtyEmpty()Z

    move-result v7

    if-nez v7, :cond_4

    .line 866
    move-object v7, v0

    invoke-direct {v7}, Ljavafx/scene/Node;->addToSceneDirtyList()V

    .line 869
    :cond_4
    move-object v7, v4

    if-nez v7, :cond_5

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Node;->peer:Lcom/sun/javafx/sg/prism/NGNode;

    if-eqz v7, :cond_5

    .line 870
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Node;->peer:Lcom/sun/javafx/sg/prism/NGNode;

    invoke-virtual {v7}, Lcom/sun/javafx/sg/prism/NGNode;->release()V

    .line 873
    :cond_5
    move-object v7, v1

    if-eqz v7, :cond_6

    .line 874
    move-object v7, v1

    move-object v8, v0

    invoke-virtual {v7, v8}, Ljavafx/scene/Scene;->clearNodeMnemonics(Ljavafx/scene/Node;)V

    .line 876
    :cond_6
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v7

    if-nez v7, :cond_7

    .line 878
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/Node;->parentResolvedOrientationInvalidated()V

    .line 881
    :cond_7
    move v7, v5

    if-eqz v7, :cond_8

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Node;->scene:Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;

    invoke-virtual {v7}, Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;->fireSuperValueChangedEvent()V

    .line 885
    :cond_8
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Node;->accessible:Lcom/sun/glass/ui/Accessible;

    if-eqz v7, :cond_9

    .line 900
    move-object v7, v1

    if-eqz v7, :cond_b

    move-object v7, v1

    move-object v8, v4

    if-eq v7, v8, :cond_b

    move-object v7, v4

    if-nez v7, :cond_b

    .line 902
    move-object v7, v1

    move-object v8, v0

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/Node;->accessible:Lcom/sun/glass/ui/Accessible;

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/Scene;->addAccessible(Ljavafx/scene/Node;Lcom/sun/glass/ui/Accessible;)V

    .line 909
    :goto_1
    move-object v7, v0

    const/4 v8, 0x0

    iput-object v8, v7, Ljavafx/scene/Node;->accessible:Lcom/sun/glass/ui/Accessible;

    .line 911
    :cond_9
    return-void

    .line 837
    .end local v5    # "sceneChanged":Z
    .end local v6    # "newSubScene":Ljavafx/scene/SubScene;
    :cond_a
    const/4 v7, 0x0

    goto/16 :goto_0

    .line 904
    .restart local v5    # "sceneChanged":Z
    .restart local v6    # "newSubScene":Ljavafx/scene/SubScene;
    :cond_b
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Node;->accessible:Lcom/sun/glass/ui/Accessible;

    invoke-virtual {v7}, Lcom/sun/glass/ui/Accessible;->dispose()V

    goto :goto_1
.end method

.method private synthetic lambda$buildEventDispatchChain$17(Ljavafx/event/Event;Ljavafx/event/EventDispatchChain;)Ljavafx/event/Event;
    .locals 5

    .prologue
    .line 8343
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v2, p2

    .local v2, "tail1":Ljavafx/event/EventDispatchChain;
    move-object v3, v2

    move-object v4, v1

    invoke-interface {v3, v4}, Ljavafx/event/EventDispatchChain;->dispatchEvent(Ljavafx/event/Event;)Ljavafx/event/Event;

    move-result-object v3

    move-object v1, v3

    .line 8344
    move-object v3, v1

    instance-of v3, v3, Ljavafx/scene/input/MouseEvent;

    if-eqz v3, :cond_0

    .line 8345
    move-object v3, v0

    move-object v4, v1

    check-cast v4, Ljavafx/scene/input/MouseEvent;

    invoke-direct {v3, v4}, Ljavafx/scene/Node;->preprocessMouseEvent(Ljavafx/scene/input/MouseEvent;)V

    .line 8348
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method private synthetic lambda$new$13(Ljavafx/beans/Observable;)V
    .locals 3

    .prologue
    .line 790
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Node;->updateDisabled()V

    return-void
.end method

.method private synthetic lambda$new$14(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 792
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "valueModel":Ljavafx/beans/Observable;
    move-object v2, v0

    const/4 v3, 0x1

    invoke-direct {v2, v3}, Ljavafx/scene/Node;->updateTreeVisible(Z)V

    return-void
.end method

.method private synthetic lambda$snapshot$15(Ljavafx/scene/SnapshotParameters;Ljavafx/scene/image/WritableImage;Ljavafx/util/Callback;)V
    .locals 13

    .prologue
    .line 2044
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "theParams":Ljavafx/scene/SnapshotParameters;
    move-object v2, p2

    .local v2, "theImage":Ljavafx/scene/image/WritableImage;
    move-object/from16 v3, p3

    .local v3, "theCallback":Ljavafx/util/Callback;
    move-object v7, v0

    move-object v8, v1

    move-object v9, v2

    invoke-direct {v7, v8, v9}, Ljavafx/scene/Node;->doSnapshot(Ljavafx/scene/SnapshotParameters;Ljavafx/scene/image/WritableImage;)Ljavafx/scene/image/WritableImage;

    move-result-object v7

    move-object v4, v7

    .line 2045
    .local v4, "img":Ljavafx/scene/image/WritableImage;
    new-instance v7, Ljavafx/scene/SnapshotResult;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v4

    move-object v10, v0

    move-object v11, v1

    invoke-direct {v8, v9, v10, v11}, Ljavafx/scene/SnapshotResult;-><init>(Ljavafx/scene/image/WritableImage;Ljava/lang/Object;Ljavafx/scene/SnapshotParameters;)V

    move-object v5, v7

    .line 2048
    .local v5, "result":Ljavafx/scene/SnapshotResult;
    move-object v7, v3

    move-object v8, v5

    :try_start_0
    invoke-interface {v7, v8}, Ljavafx/util/Callback;->call(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/Void;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-object v6, v7

    .line 2052
    .line 2053
    :goto_0
    return-void

    .line 2049
    :catch_0
    move-exception v7

    move-object v6, v7

    .line 2050
    .local v6, "th":Ljava/lang/Throwable;
    sget-object v7, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v8, "Exception in snapshot callback"

    invoke-virtual {v7, v8}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2051
    move-object v7, v6

    sget-object v8, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v7, v8}, Ljava/lang/Throwable;->printStackTrace(Ljava/io/PrintStream;)V

    goto :goto_0
.end method

.method private static synthetic lambda$static$18(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;Ljavafx/scene/Node;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 6

    .prologue
    .line 9323
    move-object v0, p0

    .local v0, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, p2

    .local v2, "node":Ljavafx/scene/Node;
    move-object v3, v2

    move-object v4, v0

    move-object v5, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->getGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "bounds":Lcom/sun/javafx/geom/BaseBounds;
    return-object v0
.end method

.method private parentPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectWrapper",
            "<",
            "Ljavafx/scene/Parent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 732
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->parent:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    .line 733
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Node$1;-><init>(Ljavafx/scene/Node;)V

    iput-object v2, v1, Ljavafx/scene/Node;->parent:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    .line 787
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->parent:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method private preprocessMouseEvent(Ljavafx/scene/input/MouseEvent;)V
    .locals 6

    .prologue
    .line 7935
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/MouseEvent;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getEventType()Ljavafx/event/EventType;

    move-result-object v4

    move-object v2, v4

    .line 7936
    .local v2, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<*>;"
    move-object v4, v2

    sget-object v5, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    if-ne v4, v5, :cond_1

    .line 7937
    move-object v4, v0

    move-object v3, v4

    .local v3, "n":Ljavafx/scene/Node;
    :goto_0
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 7938
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/input/MouseEvent;->isPrimaryButtonDown()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljavafx/scene/Node;->setPressed(Z)V

    .line 7937
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v4

    move-object v3, v4

    goto :goto_0

    .line 7940
    .line 7966
    .end local v3    # "n":Ljavafx/scene/Node;
    :cond_0
    :goto_1
    return-void

    .line 7942
    :cond_1
    move-object v4, v2

    sget-object v5, Ljavafx/scene/input/MouseEvent;->MOUSE_RELEASED:Ljavafx/event/EventType;

    if-ne v4, v5, :cond_3

    .line 7943
    move-object v4, v0

    move-object v3, v4

    .restart local v3    # "n":Ljavafx/scene/Node;
    :goto_2
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 7944
    move-object v4, v3

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/input/MouseEvent;->isPrimaryButtonDown()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljavafx/scene/Node;->setPressed(Z)V

    .line 7943
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v4

    move-object v3, v4

    goto :goto_2

    .line 7946
    :cond_2
    goto :goto_1

    .line 7949
    .end local v3    # "n":Ljavafx/scene/Node;
    :cond_3
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/MouseEvent;->getTarget()Ljavafx/event/EventTarget;

    move-result-object v4

    move-object v5, v0

    if-ne v4, v5, :cond_7

    .line 7954
    move-object v4, v2

    sget-object v5, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED:Ljavafx/event/EventType;

    if-eq v4, v5, :cond_4

    move-object v4, v2

    sget-object v5, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED_TARGET:Ljavafx/event/EventType;

    if-ne v4, v5, :cond_5

    .line 7956
    :cond_4
    move-object v4, v0

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljavafx/scene/Node;->setHover(Z)V

    .line 7957
    goto :goto_1

    .line 7960
    :cond_5
    move-object v4, v2

    sget-object v5, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    if-eq v4, v5, :cond_6

    move-object v4, v2

    sget-object v5, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED_TARGET:Ljavafx/event/EventType;

    if-ne v4, v5, :cond_7

    .line 7962
    :cond_6
    move-object v4, v0

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/Node;->setHover(Z)V

    .line 7963
    goto :goto_1

    .line 7966
    :cond_7
    goto :goto_1
.end method

.method private pressedPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    .locals 6

    .prologue
    .line 6949
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->pressed:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    .line 6950
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$15;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Node$15;-><init>(Ljavafx/scene/Node;)V

    iput-object v2, v1, Ljavafx/scene/Node;->pressed:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 6972
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->pressed:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method private reapplyCss()V
    .locals 9

    .prologue
    .line 8978
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    move-object v1, v7

    .line 8981
    .local v1, "oldStyleHelper":Ljavafx/scene/CssStyleHelper;
    move-object v7, v0

    sget-object v8, Lcom/sun/javafx/scene/CssFlags;->REAPPLY:Lcom/sun/javafx/scene/CssFlags;

    iput-object v8, v7, Ljavafx/scene/Node;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    .line 8983
    move-object v7, v0

    move-object v8, v0

    invoke-static {v8}, Ljavafx/scene/CssStyleHelper;->createStyleHelper(Ljavafx/scene/Node;)Ljavafx/scene/CssStyleHelper;

    move-result-object v8

    iput-object v8, v7, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    .line 8986
    move-object v7, v0

    instance-of v7, v7, Ljavafx/scene/Parent;

    if-eqz v7, :cond_3

    .line 8990
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    if-eqz v7, :cond_0

    move-object v7, v1

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    if-ne v7, v8, :cond_0

    move-object v7, v0

    .line 9001
    invoke-virtual {v7}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v7

    if-eqz v7, :cond_0

    move-object v7, v0

    .line 9005
    invoke-virtual {v7}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v7

    iget-object v7, v7, Ljavafx/scene/Parent;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    sget-object v8, Lcom/sun/javafx/scene/CssFlags;->CLEAN:Lcom/sun/javafx/scene/CssFlags;

    if-eq v7, v8, :cond_1

    :cond_0
    const/4 v7, 0x1

    :goto_0
    move v2, v7

    .line 9007
    .local v2, "visitChildren":Z
    move v7, v2

    if-eqz v7, :cond_2

    .line 9009
    move-object v7, v0

    check-cast v7, Ljavafx/scene/Parent;

    invoke-virtual {v7}, Ljavafx/scene/Parent;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v3, v7

    .line 9010
    .local v3, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    const/4 v7, 0x0

    move v4, v7

    .local v4, "n":I
    move-object v7, v3

    invoke-interface {v7}, Ljava/util/List;->size()I

    move-result v7

    move v5, v7

    .local v5, "nMax":I
    :goto_1
    move v7, v4

    move v8, v5

    if-ge v7, v8, :cond_2

    .line 9011
    move-object v7, v3

    move v8, v4

    invoke-interface {v7, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Node;

    move-object v6, v7

    .line 9012
    .local v6, "child":Ljavafx/scene/Node;
    move-object v7, v6

    invoke-direct {v7}, Ljavafx/scene/Node;->reapplyCss()V

    .line 9010
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 9005
    .end local v2    # "visitChildren":Z
    .end local v3    # "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    .end local v4    # "n":I
    .end local v5    # "nMax":I
    .end local v6    # "child":Ljavafx/scene/Node;
    :cond_1
    const/4 v7, 0x0

    goto :goto_0

    .line 9016
    .line 9033
    :cond_2
    :goto_2
    move-object v7, v0

    sget-object v8, Lcom/sun/javafx/scene/CssFlags;->UPDATE:Lcom/sun/javafx/scene/CssFlags;

    iput-object v8, v7, Ljavafx/scene/Node;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    .line 9035
    :goto_3
    return-void

    .line 9016
    :cond_3
    move-object v7, v0

    instance-of v7, v7, Ljavafx/scene/SubScene;

    if-eqz v7, :cond_5

    .line 9019
    move-object v7, v0

    check-cast v7, Ljavafx/scene/SubScene;

    invoke-virtual {v7}, Ljavafx/scene/SubScene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v7

    move-object v2, v7

    .line 9020
    .local v2, "subSceneRoot":Ljavafx/scene/Node;
    move-object v7, v2

    if-eqz v7, :cond_4

    .line 9021
    move-object v7, v2

    invoke-direct {v7}, Ljavafx/scene/Node;->reapplyCss()V

    .line 9024
    :cond_4
    goto :goto_2

    .end local v2    # "subSceneRoot":Ljavafx/scene/Node;
    :cond_5
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    if-nez v7, :cond_2

    .line 9029
    move-object v7, v0

    sget-object v8, Lcom/sun/javafx/scene/CssFlags;->CLEAN:Lcom/sun/javafx/scene/CssFlags;

    iput-object v8, v7, Ljavafx/scene/Node;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    .line 9030
    goto :goto_3
.end method

.method private requestCssStateTransition()V
    .locals 3

    .prologue
    .line 8831
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v1

    if-nez v1, :cond_0

    .line 8839
    :goto_0
    return-void

    .line 8835
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    sget-object v2, Lcom/sun/javafx/scene/CssFlags;->CLEAN:Lcom/sun/javafx/scene/CssFlags;

    if-eq v1, v2, :cond_1

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    sget-object v2, Lcom/sun/javafx/scene/CssFlags;->DIRTY_BRANCH:Lcom/sun/javafx/scene/CssFlags;

    if-ne v1, v2, :cond_2

    .line 8836
    :cond_1
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/CssFlags;->UPDATE:Lcom/sun/javafx/scene/CssFlags;

    iput-object v2, v1, Ljavafx/scene/Node;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    .line 8837
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->notifyParentsOfInvalidatedCSS()V

    .line 8839
    :cond_2
    goto :goto_0
.end method

.method private sceneToLocal0(DDD)Ljavafx/geometry/Point3D;
    .locals 19
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 4186
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    invoke-static {}, Lcom/sun/javafx/util/TempState;->getInstance()Lcom/sun/javafx/util/TempState;

    move-result-object v9

    iget-object v9, v9, Lcom/sun/javafx/util/TempState;->vec3d:Lcom/sun/javafx/geom/Vec3d;

    move-object v8, v9

    .line 4187
    .local v8, "tempV3D":Lcom/sun/javafx/geom/Vec3d;
    move-object v9, v8

    move-wide v10, v2

    move-wide v12, v4

    move-wide v14, v6

    invoke-virtual/range {v9 .. v15}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 4188
    move-object v9, v1

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljavafx/scene/Node;->sceneToLocal(Lcom/sun/javafx/geom/Vec3d;)V

    .line 4189
    new-instance v9, Ljavafx/geometry/Point3D;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v8

    iget-wide v11, v11, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-object v13, v8

    iget-wide v13, v13, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-object v15, v8

    iget-wide v15, v15, Lcom/sun/javafx/geom/Vec3d;->z:D

    invoke-direct/range {v10 .. v16}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v9

    .end local v1    # "this":Ljavafx/scene/Node;
    return-object v1
.end method

.method private setCanReceiveFocus(Z)V
    .locals 4

    .prologue
    .line 8091
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/Node;->canReceiveFocus:Z

    .line 8092
    return-void
.end method

.method private setDirty()V
    .locals 3

    .prologue
    .line 458
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    const/4 v2, -0x1

    iput v2, v1, Ljavafx/scene/Node;->dirtyBits:I

    .line 459
    return-void
.end method

.method private static syncAll(Ljavafx/scene/Node;)V
    .locals 7

    .prologue
    .line 1791
    move-object v0, p0

    .local v0, "node":Ljavafx/scene/Node;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/Node;->impl_syncPeer()V

    .line 1792
    move-object v5, v0

    instance-of v5, v5, Ljavafx/scene/Parent;

    if-eqz v5, :cond_1

    .line 1793
    move-object v5, v0

    check-cast v5, Ljavafx/scene/Parent;

    move-object v1, v5

    .line 1794
    .local v1, "p":Ljavafx/scene/Parent;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/Parent;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->size()I

    move-result v5

    move v2, v5

    .line 1796
    .local v2, "childrenCount":I
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    :goto_0
    move v5, v3

    move v6, v2

    if-ge v5, v6, :cond_1

    .line 1797
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/Parent;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move v6, v3

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Node;

    move-object v4, v5

    .line 1798
    .local v4, "n":Ljavafx/scene/Node;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 1799
    move-object v5, v4

    invoke-static {v5}, Ljavafx/scene/Node;->syncAll(Ljavafx/scene/Node;)V

    .line 1796
    :cond_0
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 1803
    .end local v1    # "p":Ljavafx/scene/Parent;
    .end local v2    # "childrenCount":I
    .end local v3    # "i":I
    .end local v4    # "n":Ljavafx/scene/Node;
    :cond_1
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/Node;->getClip()Ljavafx/scene/Node;

    move-result-object v5

    if-eqz v5, :cond_2

    .line 1804
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/Node;->getClip()Ljavafx/scene/Node;

    move-result-object v5

    invoke-static {v5}, Ljavafx/scene/Node;->syncAll(Ljavafx/scene/Node;)V

    .line 1806
    :cond_2
    return-void
.end method

.method private transformsProperty()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/transform/Transform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5208
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getNodeTransformation()Ljavafx/scene/Node$NodeTransformation;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$NodeTransformation;->getTransforms()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method private updateCanReceiveFocus()V
    .locals 3

    .prologue
    .line 8099
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    if-eqz v2, :cond_0

    move-object v2, v0

    .line 8100
    invoke-virtual {v2}, Ljavafx/scene/Node;->isDisabled()Z

    move-result v2

    if-nez v2, :cond_0

    move-object v2, v0

    .line 8101
    invoke-virtual {v2}, Ljavafx/scene/Node;->impl_isTreeVisible()Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    .line 8099
    :goto_0
    invoke-direct {v1, v2}, Ljavafx/scene/Node;->setCanReceiveFocus(Z)V

    .line 8102
    return-void

    .line 8101
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateDisabled()V
    .locals 4

    .prologue
    .line 1679
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->isDisable()Z

    move-result v2

    move v1, v2

    .line 1680
    .local v1, "isDisabled":Z
    move v2, v1

    if-nez v2, :cond_0

    .line 1681
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    if-eqz v2, :cond_2

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/Parent;->isDisabled()Z

    move-result v2

    .line 1682
    :goto_0
    move v1, v2

    .line 1684
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->setDisabled(Z)V

    .line 1685
    move-object v2, v0

    instance-of v2, v2, Ljavafx/scene/SubScene;

    if-eqz v2, :cond_1

    .line 1686
    move-object v2, v0

    check-cast v2, Ljavafx/scene/SubScene;

    invoke-virtual {v2}, Ljavafx/scene/SubScene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/Parent;->setDisabled(Z)V

    .line 1688
    :cond_1
    return-void

    .line 1681
    :cond_2
    move-object v2, v0

    .line 1682
    invoke-virtual {v2}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v2

    if-eqz v2, :cond_3

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/SubScene;->isDisabled()Z

    move-result v2

    if-eqz v2, :cond_3

    const/4 v2, 0x1

    goto :goto_0

    :cond_3
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private updateLocalBounds()V
    .locals 6

    .prologue
    .line 3621
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Node;->localBoundsInvalid:Z

    if-eqz v1, :cond_1

    .line 3622
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->getClip()Ljavafx/scene/Node;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->getEffect()Ljavafx/scene/effect/Effect;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 3623
    :cond_0
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node;->localBounds:Lcom/sun/javafx/geom/BaseBounds;

    if-nez v3, :cond_2

    new-instance v3, Lcom/sun/javafx/geom/RectBounds;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Lcom/sun/javafx/geom/RectBounds;-><init>()V

    :goto_0
    sget-object v4, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-direct {v2, v3, v4}, Ljavafx/scene/Node;->computeLocalBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/Node;->localBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 3629
    :goto_1
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/Node;->localBoundsInvalid:Z

    .line 3631
    :cond_1
    return-void

    .line 3623
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node;->localBounds:Lcom/sun/javafx/geom/BaseBounds;

    goto :goto_0

    .line 3627
    :cond_3
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/Node;->localBounds:Lcom/sun/javafx/geom/BaseBounds;

    goto :goto_1
.end method

.method private updateTreeVisible(Z)V
    .locals 6

    .prologue
    .line 7984
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "parentChanged":Z
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node;->isVisible()Z

    move-result v4

    move v2, v4

    .line 7985
    .local v2, "isTreeVisible":Z
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v4

    if-eqz v4, :cond_3

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v4

    .line 7987
    :goto_0
    move-object v3, v4

    .line 7988
    .local v3, "parentNode":Ljavafx/scene/Node;
    move v4, v2

    if-eqz v4, :cond_1

    .line 7989
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Node;->impl_isTreeVisible()Z

    move-result v4

    if-eqz v4, :cond_6

    :cond_0
    const/4 v4, 0x1

    :goto_1
    move v2, v4

    .line 7994
    :cond_1
    move v4, v1

    if-eqz v4, :cond_2

    move-object v4, v3

    if-eqz v4, :cond_2

    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Node;->impl_isTreeVisible()Z

    move-result v4

    if-eqz v4, :cond_2

    move-object v4, v0

    sget-object v5, Lcom/sun/javafx/scene/DirtyBits;->NODE_VISIBLE:Lcom/sun/javafx/scene/DirtyBits;

    .line 7995
    invoke-virtual {v4, v5}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 7996
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/Node;->addToSceneDirtyList()V

    .line 7998
    :cond_2
    move-object v4, v0

    move v5, v2

    invoke-virtual {v4, v5}, Ljavafx/scene/Node;->setTreeVisible(Z)V

    .line 7999
    return-void

    .line 7985
    .end local v3    # "parentNode":Ljavafx/scene/Node;
    :cond_3
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node;->clipParent:Ljavafx/scene/Node;

    if-eqz v4, :cond_4

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node;->clipParent:Ljavafx/scene/Node;

    goto :goto_0

    :cond_4
    move-object v4, v0

    .line 7987
    invoke-virtual {v4}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v4

    if-eqz v4, :cond_5

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v4

    goto :goto_0

    :cond_5
    const/4 v4, 0x0

    goto :goto_0

    .line 7989
    .restart local v3    # "parentNode":Ljavafx/scene/Node;
    :cond_6
    const/4 v4, 0x0

    goto :goto_1
.end method


# virtual methods
.method public final accessibleHelpProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 9476
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getAccessibilityProperties()Ljavafx/scene/Node$AccessibilityProperties;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$AccessibilityProperties;->getAccessibleHelp()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final accessibleRoleDescriptionProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 9424
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getAccessibilityProperties()Ljavafx/scene/Node$AccessibilityProperties;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$AccessibilityProperties;->getAccessibleRoleDescription()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final accessibleRoleProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/AccessibleRole;",
            ">;"
        }
    .end annotation

    .prologue
    .line 9393
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->accessibleRole:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 9394
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "accessibleRole"

    sget-object v6, Ljavafx/scene/AccessibleRole;->NODE:Ljavafx/scene/AccessibleRole;

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v2, v1, Ljavafx/scene/Node;->accessibleRole:Ljavafx/beans/property/ObjectProperty;

    .line 9396
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->accessibleRole:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final accessibleTextProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 9451
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getAccessibilityProperties()Ljavafx/scene/Node$AccessibilityProperties;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$AccessibilityProperties;->getAccessibleText()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
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
    .line 8264
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventFilter":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Node;->getInternalEventDispatcher()Lcom/sun/javafx/scene/NodeEventDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/scene/NodeEventDispatcher;->getEventHandlerManager()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 8265
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->addEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 8266
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
    .line 8226
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Node;->getInternalEventDispatcher()Lcom/sun/javafx/scene/NodeEventDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/scene/NodeEventDispatcher;->getEventHandlerManager()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 8227
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 8228
    return-void
.end method

.method public final applyCss()V
    .locals 6

    .prologue
    .line 9114
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    if-nez v4, :cond_0

    .line 9115
    .line 9155
    :goto_0
    return-void

    .line 9119
    :cond_0
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    sget-object v5, Lcom/sun/javafx/scene/CssFlags;->REAPPLY:Lcom/sun/javafx/scene/CssFlags;

    if-eq v4, v5, :cond_1

    move-object v4, v0

    sget-object v5, Lcom/sun/javafx/scene/CssFlags;->UPDATE:Lcom/sun/javafx/scene/CssFlags;

    iput-object v5, v4, Ljavafx/scene/Node;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    .line 9129
    :cond_1
    move-object v4, v0

    move-object v1, v4

    .line 9131
    .local v1, "topMost":Ljavafx/scene/Node;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v4

    sget-object v5, Lcom/sun/javafx/scene/DirtyBits;->NODE_CSS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v4, v5}, Ljavafx/scene/Parent;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v4

    move v2, v4

    .line 9132
    .local v2, "dirtyRoot":Z
    move v4, v2

    if-eqz v4, :cond_5

    .line 9134
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v4

    move-object v3, v4

    .line 9135
    .local v3, "_parent":Ljavafx/scene/Node;
    :goto_1
    move-object v4, v3

    if-eqz v4, :cond_4

    .line 9136
    move-object v4, v3

    iget-object v4, v4, Ljavafx/scene/Node;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    sget-object v5, Lcom/sun/javafx/scene/CssFlags;->UPDATE:Lcom/sun/javafx/scene/CssFlags;

    if-eq v4, v5, :cond_2

    move-object v4, v3

    iget-object v4, v4, Ljavafx/scene/Node;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    sget-object v5, Lcom/sun/javafx/scene/CssFlags;->REAPPLY:Lcom/sun/javafx/scene/CssFlags;

    if-ne v4, v5, :cond_3

    .line 9137
    :cond_2
    move-object v4, v3

    move-object v1, v4

    .line 9139
    :cond_3
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v4

    move-object v3, v4

    goto :goto_1

    .line 9148
    :cond_4
    move-object v4, v1

    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v5

    if-ne v4, v5, :cond_5

    .line 9149
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v4

    sget-object v5, Lcom/sun/javafx/scene/DirtyBits;->NODE_CSS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v4, v5}, Ljavafx/scene/Parent;->impl_clearDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 9153
    .end local v3    # "_parent":Ljavafx/scene/Node;
    :cond_5
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Node;->processCSS()V

    .line 9155
    goto :goto_0
.end method

.method public final autosize()V
    .locals 14

    .prologue
    .line 2882
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/Node;->isResizable()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 2883
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v6

    move-object v1, v6

    .line 2885
    .local v1, "contentBias":Ljavafx/geometry/Orientation;
    move-object v6, v1

    if-nez v6, :cond_1

    .line 2886
    move-object v6, v0

    move-object v7, v0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v7

    move-object v9, v0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v9

    move-object v11, v0

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v11

    invoke-virtual/range {v6 .. v12}, Ljavafx/scene/Node;->boundedSize(DDD)D

    move-result-wide v6

    move-wide v2, v6

    .line 2887
    .local v2, "w":D
    move-object v6, v0

    move-object v7, v0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v7

    move-object v9, v0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v9

    move-object v11, v0

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v11

    invoke-virtual/range {v6 .. v12}, Ljavafx/scene/Node;->boundedSize(DDD)D

    move-result-wide v6

    move-wide v4, v6

    .line 2895
    .local v4, "h":D
    :goto_0
    move-object v6, v0

    move-wide v7, v2

    move-wide v9, v4

    invoke-virtual {v6, v7, v8, v9, v10}, Ljavafx/scene/Node;->resize(DD)V

    .line 2897
    .end local v1    # "contentBias":Ljavafx/geometry/Orientation;
    .end local v2    # "w":D
    .end local v4    # "h":D
    :cond_0
    return-void

    .line 2888
    .restart local v1    # "contentBias":Ljavafx/geometry/Orientation;
    :cond_1
    move-object v6, v1

    sget-object v7, Ljavafx/geometry/Orientation;->HORIZONTAL:Ljavafx/geometry/Orientation;

    if-ne v6, v7, :cond_2

    .line 2889
    move-object v6, v0

    move-object v7, v0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v7

    move-object v9, v0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v9

    move-object v11, v0

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v11

    invoke-virtual/range {v6 .. v12}, Ljavafx/scene/Node;->boundedSize(DDD)D

    move-result-wide v6

    move-wide v2, v6

    .line 2890
    .restart local v2    # "w":D
    move-object v6, v0

    move-object v7, v0

    move-wide v8, v2

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v7

    move-object v9, v0

    move-wide v10, v2

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v9

    move-object v11, v0

    move-wide v12, v2

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v11

    invoke-virtual/range {v6 .. v12}, Ljavafx/scene/Node;->boundedSize(DDD)D

    move-result-wide v6

    move-wide v4, v6

    .restart local v4    # "h":D
    goto :goto_0

    .line 2892
    .end local v2    # "w":D
    .end local v4    # "h":D
    :cond_2
    move-object v6, v0

    move-object v7, v0

    const-wide/high16 v8, -0x4010000000000000L    # -1.0

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v7

    move-object v9, v0

    const-wide/high16 v10, -0x4010000000000000L    # -1.0

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v9

    move-object v11, v0

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/Node;->maxHeight(D)D

    move-result-wide v11

    invoke-virtual/range {v6 .. v12}, Ljavafx/scene/Node;->boundedSize(DDD)D

    move-result-wide v6

    move-wide v4, v6

    .line 2893
    .restart local v4    # "h":D
    move-object v6, v0

    move-object v7, v0

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v7

    move-object v9, v0

    move-wide v10, v4

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v9

    move-object v11, v0

    move-wide v12, v4

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/Node;->maxWidth(D)D

    move-result-wide v11

    invoke-virtual/range {v6 .. v12}, Ljavafx/scene/Node;->boundedSize(DDD)D

    move-result-wide v6

    move-wide v2, v6

    .restart local v2    # "w":D
    goto :goto_0
.end method

.method public final blendModeProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/BlendMode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1293
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->blendMode:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 1294
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$7;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Node$7;-><init>(Ljavafx/scene/Node;Ljavafx/scene/effect/BlendMode;)V

    iput-object v2, v1, Ljavafx/scene/Node;->blendMode:Ljavafx/beans/property/ObjectProperty;

    .line 1315
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->blendMode:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method boundedSize(DDD)D
    .locals 15

    .prologue
    .line 2903
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-wide/from16 v2, p1

    .local v2, "value":D
    move-wide/from16 v4, p3

    .local v4, "min":D
    move-wide/from16 v6, p5

    .local v6, "max":D
    move-wide v8, v2

    move-wide v10, v4

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->max(DD)D

    move-result-wide v8

    move-wide v10, v4

    move-wide v12, v6

    invoke-static {v10, v11, v12, v13}, Ljava/lang/Math;->max(DD)D

    move-result-wide v10

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->min(DD)D

    move-result-wide v8

    move-wide v1, v8

    .end local v1    # "this":Ljavafx/scene/Node;
    return-wide v1
.end method

.method public final boundsInLocalProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/geometry/Bounds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3181
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getMiscProperties()Ljavafx/scene/Node$MiscProperties;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->boundsInLocalProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final boundsInParentProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/geometry/Bounds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getMiscProperties()Ljavafx/scene/Node$MiscProperties;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->boundsInParentProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;
    .locals 6

    .prologue
    .line 8341
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "tail":Ljavafx/event/EventDispatchChain;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node;->preprocessMouseEventDispatcher:Ljavafx/event/EventDispatcher;

    if-nez v4, :cond_0

    .line 8342
    move-object v4, v0

    move-object v5, v0

    invoke-static {v5}, Ljavafx/scene/Node$$Lambda$4;->lambdaFactory$(Ljavafx/scene/Node;)Ljavafx/event/EventDispatcher;

    move-result-object v5

    iput-object v5, v4, Ljavafx/scene/Node;->preprocessMouseEventDispatcher:Ljavafx/event/EventDispatcher;

    .line 8352
    :cond_0
    move-object v4, v1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Node;->preprocessMouseEventDispatcher:Ljavafx/event/EventDispatcher;

    invoke-interface {v4, v5}, Ljavafx/event/EventDispatchChain;->prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v4

    move-object v1, v4

    .line 8355
    move-object v4, v0

    move-object v2, v4

    .line 8357
    .local v2, "curNode":Ljavafx/scene/Node;
    :cond_1
    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/Node;->eventDispatcher:Ljavafx/beans/property/ObjectProperty;

    if-eqz v4, :cond_2

    .line 8358
    move-object v4, v2

    iget-object v4, v4, Ljavafx/scene/Node;->eventDispatcher:Ljavafx/beans/property/ObjectProperty;

    .line 8359
    invoke-virtual {v4}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/event/EventDispatcher;

    move-object v3, v4

    .line 8360
    .local v3, "eventDispatcherValue":Ljavafx/event/EventDispatcher;
    move-object v4, v3

    if-eqz v4, :cond_2

    .line 8361
    move-object v4, v1

    move-object v5, v3

    invoke-interface {v4, v5}, Ljavafx/event/EventDispatchChain;->prepend(Ljavafx/event/EventDispatcher;)Ljavafx/event/EventDispatchChain;

    move-result-object v4

    move-object v1, v4

    .line 8364
    .end local v3    # "eventDispatcherValue":Ljavafx/event/EventDispatcher;
    :cond_2
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v4

    move-object v3, v4

    .line 8365
    .local v3, "curParent":Ljavafx/scene/Node;
    move-object v4, v3

    if-eqz v4, :cond_4

    move-object v4, v3

    :goto_0
    move-object v2, v4

    .line 8366
    move-object v4, v2

    if-nez v4, :cond_1

    .line 8368
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    if-eqz v4, :cond_3

    .line 8370
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    move-object v5, v1

    invoke-virtual {v4, v5}, Ljavafx/scene/Scene;->buildEventDispatchChain(Ljavafx/event/EventDispatchChain;)Ljavafx/event/EventDispatchChain;

    move-result-object v4

    move-object v1, v4

    .line 8373
    :cond_3
    move-object v4, v1

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 8365
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_4
    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v4

    goto :goto_0
.end method

.method public final cacheHintProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/CacheHint;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1450
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getMiscProperties()Ljavafx/scene/Node$MiscProperties;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->cacheHintProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final cacheProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 1390
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getMiscProperties()Ljavafx/scene/Node$MiscProperties;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->cacheProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final clipProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1356
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getMiscProperties()Ljavafx/scene/Node$MiscProperties;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->clipProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public computeAreaInScreen()D
    .locals 3

    .prologue
    .line 2974
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->impl_computeAreaInScreen()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-wide v0
.end method

.method computeDerivedDepthTest()V
    .locals 4

    .prologue
    .line 1534
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getDepthTest()Ljavafx/scene/DepthTest;

    move-result-object v2

    sget-object v3, Ljavafx/scene/DepthTest;->INHERIT:Ljavafx/scene/DepthTest;

    if-ne v2, v3, :cond_2

    .line 1535
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    if-eqz v2, :cond_1

    .line 1536
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/Parent;->isDerivedDepthTest()Z

    move-result v2

    move v1, v2

    .line 1546
    .local v1, "newDDT":Z
    :goto_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->isDerivedDepthTest()Z

    move-result v2

    move v3, v1

    if-eq v2, v3, :cond_0

    .line 1547
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_DEPTH_TEST:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 1548
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->setDerivedDepthTest(Z)V

    .line 1550
    :cond_0
    return-void

    .line 1538
    .end local v1    # "newDDT":Z
    :cond_1
    const/4 v2, 0x1

    move v1, v2

    .restart local v1    # "newDDT":Z
    goto :goto_0

    .line 1540
    .end local v1    # "newDDT":Z
    :cond_2
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getDepthTest()Ljavafx/scene/DepthTest;

    move-result-object v2

    sget-object v3, Ljavafx/scene/DepthTest;->ENABLE:Ljavafx/scene/DepthTest;

    if-ne v2, v3, :cond_3

    .line 1541
    const/4 v2, 0x1

    move v1, v2

    .restart local v1    # "newDDT":Z
    goto :goto_0

    .line 1543
    .end local v1    # "newDDT":Z
    :cond_3
    const/4 v2, 0x0

    move v1, v2

    .restart local v1    # "newDDT":Z
    goto :goto_0
.end method

.method public contains(DD)Z
    .locals 11

    .prologue
    .line 3860
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-wide v1, p1

    .local v1, "localX":D
    move-wide v3, p3

    .local v3, "localY":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Ljavafx/scene/Node;->containsBounds(DD)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 3861
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/Node;->isPickOnBounds()Z

    move-result v5

    if-nez v5, :cond_0

    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-virtual {v5, v6, v7, v8, v9}, Ljavafx/scene/Node;->impl_computeContains(DD)Z

    move-result v5

    if-eqz v5, :cond_1

    :cond_0
    const/4 v5, 0x1

    :goto_0
    move v0, v5

    .line 3863
    .end local v0    # "this":Ljavafx/scene/Node;
    :goto_1
    return v0

    .line 3861
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 3863
    :cond_2
    const/4 v5, 0x0

    move v0, v5

    goto :goto_1
.end method

.method public contains(Ljavafx/geometry/Point2D;)Z
    .locals 8

    .prologue
    .line 3914
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, p1

    .local v2, "localPoint":Ljavafx/geometry/Point2D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/Node;->contains(DD)Z

    move-result v3

    move v1, v3

    .end local v1    # "this":Ljavafx/scene/Node;
    return v1
.end method

.method protected containsBounds(DD)Z
    .locals 15
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3878
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-wide/from16 v2, p1

    .local v2, "localX":D
    move-wide/from16 v4, p3

    .local v4, "localY":D
    invoke-static {}, Lcom/sun/javafx/util/TempState;->getInstance()Lcom/sun/javafx/util/TempState;

    move-result-object v9

    move-object v6, v9

    .line 3879
    .local v6, "tempState":Lcom/sun/javafx/util/TempState;
    move-object v9, v6

    iget-object v9, v9, Lcom/sun/javafx/util/TempState;->bounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object v7, v9

    .line 3884
    .local v7, "tempBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v9, v1

    move-object v10, v7

    sget-object v11, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/Node;->getLocalBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v9

    move-object v7, v9

    .line 3886
    move-object v9, v7

    move-wide v10, v2

    double-to-float v10, v10

    move-wide v11, v4

    double-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Lcom/sun/javafx/geom/BaseBounds;->contains(FF)Z

    move-result v9

    if-eqz v9, :cond_1

    .line 3890
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/Node;->getClip()Ljavafx/scene/Node;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 3891
    move-object v9, v6

    iget-object v9, v9, Lcom/sun/javafx/util/TempState;->point:Lcom/sun/javafx/geom/Point2D;

    move-wide v10, v2

    double-to-float v10, v10

    iput v10, v9, Lcom/sun/javafx/geom/Point2D;->x:F

    .line 3892
    move-object v9, v6

    iget-object v9, v9, Lcom/sun/javafx/util/TempState;->point:Lcom/sun/javafx/geom/Point2D;

    move-wide v10, v4

    double-to-float v10, v10

    iput v10, v9, Lcom/sun/javafx/geom/Point2D;->y:F

    .line 3894
    move-object v9, v1

    :try_start_0
    invoke-virtual {v9}, Ljavafx/scene/Node;->getClip()Ljavafx/scene/Node;

    move-result-object v9

    move-object v10, v6

    iget-object v10, v10, Lcom/sun/javafx/util/TempState;->point:Lcom/sun/javafx/geom/Point2D;

    invoke-virtual {v9, v10}, Ljavafx/scene/Node;->parentToLocal(Lcom/sun/javafx/geom/Point2D;)V
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3897
    .line 3898
    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/Node;->getClip()Ljavafx/scene/Node;

    move-result-object v9

    move-object v10, v6

    iget-object v10, v10, Lcom/sun/javafx/util/TempState;->point:Lcom/sun/javafx/geom/Point2D;

    iget v10, v10, Lcom/sun/javafx/geom/Point2D;->x:F

    float-to-double v10, v10

    move-object v12, v6

    iget-object v12, v12, Lcom/sun/javafx/util/TempState;->point:Lcom/sun/javafx/geom/Point2D;

    iget v12, v12, Lcom/sun/javafx/geom/Point2D;->y:F

    float-to-double v12, v12

    invoke-virtual {v9, v10, v11, v12, v13}, Ljavafx/scene/Node;->contains(DD)Z

    move-result v9

    if-nez v9, :cond_0

    .line 3899
    const/4 v9, 0x0

    move v1, v9

    .line 3904
    .end local v1    # "this":Ljavafx/scene/Node;
    :goto_0
    return v1

    .line 3895
    .restart local v1    # "this":Ljavafx/scene/Node;
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 3896
    .local v8, "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    const/4 v9, 0x0

    move v1, v9

    goto :goto_0

    .line 3902
    .end local v8    # "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    :cond_0
    const/4 v9, 0x1

    move v1, v9

    goto :goto_0

    .line 3904
    :cond_1
    const/4 v9, 0x0

    move v1, v9

    goto :goto_0
.end method

.method public final cursorProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 1202
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getMiscProperties()Ljavafx/scene/Node$MiscProperties;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->cursorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final depthTestProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/DepthTest;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1521
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getMiscProperties()Ljavafx/scene/Node$MiscProperties;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->depthTestProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final disableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 1585
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getMiscProperties()Ljavafx/scene/Node$MiscProperties;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->disableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final disabledProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 1650
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->disabledPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final effectProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/effect/Effect;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1479
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getMiscProperties()Ljavafx/scene/Node$MiscProperties;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->effectProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
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
    .line 6179
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->effectiveNodeOrientationProperty:Ljavafx/scene/Node$EffectiveOrientationProperty;

    if-nez v1, :cond_0

    .line 6180
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$EffectiveOrientationProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Node$EffectiveOrientationProperty;-><init>(Ljavafx/scene/Node;Ljavafx/scene/Node$1;)V

    iput-object v2, v1, Ljavafx/scene/Node;->effectiveNodeOrientationProperty:Ljavafx/scene/Node$EffectiveOrientationProperty;

    .line 6184
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->effectiveNodeOrientationProperty:Ljavafx/scene/Node$EffectiveOrientationProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
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
    .line 8206
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->initializeInternalEventDispatcher()V

    .line 8207
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventDispatcher:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 27

    .prologue
    .line 9564
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object/from16 v2, p1

    .local v2, "action":Ljavafx/scene/AccessibleAction;
    move-object/from16 v3, p2

    .local v3, "parameters":[Ljava/lang/Object;
    sget-object v7, Ljavafx/scene/Node$20;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v8

    aget v7, v7, v8

    packed-switch v7, :pswitch_data_0

    .line 9582
    :cond_0
    :goto_0
    return-void

    .line 9566
    :pswitch_0
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/Node;->isFocusTraversable()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 9567
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/Node;->requestFocus()V

    goto :goto_0

    .line 9571
    :pswitch_1
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/Node;->getBoundsInLocal()Ljavafx/geometry/Bounds;

    move-result-object v7

    move-object v4, v7

    .line 9572
    .local v4, "b":Ljavafx/geometry/Bounds;
    move-object v7, v1

    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    move-object v10, v4

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Ljavafx/scene/Node;->localToScreen(DD)Ljavafx/geometry/Point2D;

    move-result-object v7

    move-object v5, v7

    .line 9573
    .local v5, "pt":Ljavafx/geometry/Point2D;
    new-instance v7, Ljavafx/scene/input/ContextMenuEvent;

    move-object/from16 v26, v7

    move-object/from16 v7, v26

    move-object/from16 v8, v26

    sget-object v9, Ljavafx/scene/input/ContextMenuEvent;->CONTEXT_MENU_REQUESTED:Ljavafx/event/EventType;

    move-object v10, v4

    .line 9575
    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v10

    move-object v12, v4

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v12

    move-object v14, v5

    invoke-virtual {v14}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v14

    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v16

    const/16 v18, 0x0

    new-instance v19, Ljavafx/scene/input/PickResult;

    move-object/from16 v26, v19

    move-object/from16 v19, v26

    move-object/from16 v20, v26

    move-object/from16 v21, v1

    move-object/from16 v22, v4

    .line 9576
    invoke-virtual/range {v22 .. v22}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v22

    move-object/from16 v24, v4

    invoke-virtual/range {v24 .. v24}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v24

    invoke-direct/range {v20 .. v25}, Ljavafx/scene/input/PickResult;-><init>(Ljavafx/event/EventTarget;DD)V

    invoke-direct/range {v8 .. v19}, Ljavafx/scene/input/ContextMenuEvent;-><init>(Ljavafx/event/EventType;DDDDZLjavafx/scene/input/PickResult;)V

    move-object v6, v7

    .line 9577
    .local v6, "event":Ljavafx/scene/input/ContextMenuEvent;
    move-object v7, v1

    move-object v8, v6

    invoke-static {v7, v8}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 9578
    goto :goto_0

    .line 9564
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final fireEvent(Ljavafx/event/Event;)V
    .locals 6

    .prologue
    .line 8395
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/Event;
    move-object v4, v1

    instance-of v4, v4, Ljavafx/scene/input/InputEvent;

    if-eqz v4, :cond_1

    .line 8396
    invoke-static {}, Lcom/sun/javafx/util/Logging;->getInputLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v4

    move-object v2, v4

    .line 8397
    .local v2, "logger":Lsun/util/logging/PlatformLogger;
    move-object v4, v2

    sget-object v5, Lsun/util/logging/PlatformLogger$Level;->FINE:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 8398
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/event/Event;->getEventType()Ljavafx/event/EventType;

    move-result-object v4

    move-object v3, v4

    .line 8399
    .local v3, "eventType":Ljavafx/event/EventType;
    move-object v4, v3

    sget-object v5, Ljavafx/scene/input/MouseEvent;->MOUSE_ENTERED:Ljavafx/event/EventType;

    if-eq v4, v5, :cond_0

    move-object v4, v3

    sget-object v5, Ljavafx/scene/input/MouseEvent;->MOUSE_EXITED:Ljavafx/event/EventType;

    if-ne v4, v5, :cond_2

    .line 8401
    :cond_0
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    .line 8411
    .end local v2    # "logger":Lsun/util/logging/PlatformLogger;
    .end local v3    # "eventType":Ljavafx/event/EventType;
    :cond_1
    :goto_0
    move-object v4, v0

    move-object v5, v1

    invoke-static {v4, v5}, Ljavafx/event/Event;->fireEvent(Ljavafx/event/EventTarget;Ljavafx/event/Event;)V

    .line 8412
    return-void

    .line 8402
    .restart local v2    # "logger":Lsun/util/logging/PlatformLogger;
    .restart local v3    # "eventType":Ljavafx/event/EventType;
    :cond_2
    move-object v4, v3

    sget-object v5, Ljavafx/scene/input/MouseEvent;->MOUSE_MOVED:Ljavafx/event/EventType;

    if-eq v4, v5, :cond_3

    move-object v4, v3

    sget-object v5, Ljavafx/scene/input/MouseEvent;->MOUSE_DRAGGED:Ljavafx/event/EventType;

    if-ne v4, v5, :cond_4

    .line 8404
    :cond_3
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->finest(Ljava/lang/String;)V

    goto :goto_0

    .line 8406
    :cond_4
    move-object v4, v2

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/event/Event;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Lsun/util/logging/PlatformLogger;->fine(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public final focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 7816
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->focusTraversable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 7817
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$16;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Node$16;-><init>(Ljavafx/scene/Node;Z)V

    iput-object v2, v1, Ljavafx/scene/Node;->focusTraversable:Ljavafx/beans/property/BooleanProperty;

    .line 7846
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->focusTraversable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final focusedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 7780
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->focusedPropertyImpl()Ljavafx/scene/Node$FocusedProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method getAccessible()Lcom/sun/glass/ui/Accessible;
    .locals 7

    .prologue
    .line 9608
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node;->accessible:Lcom/sun/glass/ui/Accessible;

    if-nez v2, :cond_0

    .line 9609
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    move-object v1, v2

    .line 9618
    .local v1, "scene":Ljavafx/scene/Scene;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 9619
    move-object v2, v0

    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljavafx/scene/Scene;->removeAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/Node;->accessible:Lcom/sun/glass/ui/Accessible;

    .line 9622
    .end local v1    # "scene":Ljavafx/scene/Scene;
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node;->accessible:Lcom/sun/glass/ui/Accessible;

    if-nez v2, :cond_1

    .line 9623
    move-object v2, v0

    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/glass/ui/Application;->createAccessible()Lcom/sun/glass/ui/Accessible;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/Node;->accessible:Lcom/sun/glass/ui/Accessible;

    .line 9624
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node;->accessible:Lcom/sun/glass/ui/Accessible;

    new-instance v3, Ljavafx/scene/Node$19;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/scene/Node$19;-><init>(Ljavafx/scene/Node;)V

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Accessible;->setEventHandler(Lcom/sun/glass/ui/Accessible$EventHandler;)V

    .line 9657
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node;->accessible:Lcom/sun/glass/ui/Accessible;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final getAccessibleHelp()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9459
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->accessibilityProperties:Ljavafx/scene/Node$AccessibilityProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move-object v0, v1

    .line 9461
    .end local v0    # "this":Ljavafx/scene/Node;
    :goto_0
    return-object v0

    .line 9460
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->accessibilityProperties:Ljavafx/scene/Node$AccessibilityProperties;

    iget-object v1, v1, Ljavafx/scene/Node$AccessibilityProperties;->accessibleHelp:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0

    .line 9461
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->accessibleHelpProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method public final getAccessibleRole()Ljavafx/scene/AccessibleRole;
    .locals 2

    .prologue
    .line 9388
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->accessibleRole:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/AccessibleRole;->NODE:Ljavafx/scene/AccessibleRole;

    move-object v0, v1

    .line 9389
    .end local v0    # "this":Ljavafx/scene/Node;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->accessibleRoleProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/AccessibleRole;

    move-object v0, v1

    goto :goto_0
.end method

.method public final getAccessibleRoleDescription()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9404
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->accessibilityProperties:Ljavafx/scene/Node$AccessibilityProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move-object v0, v1

    .line 9406
    .end local v0    # "this":Ljavafx/scene/Node;
    :goto_0
    return-object v0

    .line 9405
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->accessibilityProperties:Ljavafx/scene/Node$AccessibilityProperties;

    iget-object v1, v1, Ljavafx/scene/Node$AccessibilityProperties;->accessibleRoleDescription:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0

    .line 9406
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->accessibleRoleDescriptionProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method public final getAccessibleText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 9432
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->accessibilityProperties:Ljavafx/scene/Node$AccessibilityProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    move-object v0, v1

    .line 9434
    .end local v0    # "this":Ljavafx/scene/Node;
    :goto_0
    return-object v0

    .line 9433
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->accessibilityProperties:Ljavafx/scene/Node$AccessibilityProperties;

    iget-object v1, v1, Ljavafx/scene/Node$AccessibilityProperties;->accessibleText:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_1

    const/4 v1, 0x0

    move-object v0, v1

    goto :goto_0

    .line 9434
    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->accessibleTextProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    goto :goto_0
.end method

.method public getBaselineOffset()D
    .locals 4

    .prologue
    .line 2961
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->isResizable()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 2962
    const-wide/high16 v2, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move-wide v1, v2

    .line 2964
    .end local v1    # "this":Ljavafx/scene/Node;
    :goto_0
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v2

    move-wide v1, v2

    goto :goto_0
.end method

.method public final getBlendMode()Ljavafx/scene/effect/BlendMode;
    .locals 2

    .prologue
    .line 1289
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->blendMode:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->blendMode:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/effect/BlendMode;

    goto :goto_0
.end method

.method public final getBoundsInLocal()Ljavafx/geometry/Bounds;
    .locals 2

    .prologue
    .line 3156
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->boundsInLocalProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Bounds;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final getBoundsInParent()Ljavafx/geometry/Bounds;
    .locals 2

    .prologue
    .line 3111
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->boundsInParentProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Bounds;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method final getCSSFlags()Lcom/sun/javafx/scene/CssFlags;
    .locals 2

    .prologue
    .line 8823
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final getCacheHint()Ljavafx/scene/CacheHint;
    .locals 2

    .prologue
    .line 1398
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/Node;->DEFAULT_CACHE_HINT:Ljavafx/scene/CacheHint;

    .line 1399
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 1398
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    .line 1399
    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->getCacheHint()Ljavafx/scene/CacheHint;

    move-result-object v1

    goto :goto_0
.end method

.method public final getClip()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 1323
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/Node;->DEFAULT_CLIP:Ljavafx/scene/Node;

    .line 1324
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 1323
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    .line 1324
    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->getClip()Ljavafx/scene/Node;

    move-result-object v1

    goto :goto_0
.end method

.method final getClipParent()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 2255
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->clipParent:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public getContentBias()Ljavafx/geometry/Orientation;
    .locals 2

    .prologue
    .line 2650
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public getCssMetaData()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Ljavafx/css/CssMetaData",
            "<+",
            "Ljavafx/css/Styleable;",
            "*>;>;"
        }
    .end annotation

    .prologue
    .line 8752
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    invoke-static {}, Ljavafx/scene/Node;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method getCurrentLocalToSceneTransformState()Ljavafx/scene/transform/Transform;
    .locals 2

    .prologue
    .line 5515
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    .line 5516
    invoke-static {v1}, Ljavafx/scene/Node$NodeTransformation;->access$1800(Ljavafx/scene/Node$NodeTransformation;)Ljavafx/scene/Node$LazyTransformProperty;

    move-result-object v1

    if-nez v1, :cond_1

    .line 5517
    :cond_0
    const/4 v1, 0x0

    move-object v0, v1

    .line 5520
    .end local v0    # "this":Ljavafx/scene/Node;
    :goto_0
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    invoke-static {v1}, Ljavafx/scene/Node$NodeTransformation;->access$1800(Ljavafx/scene/Node$NodeTransformation;)Ljavafx/scene/Node$LazyTransformProperty;

    move-result-object v1

    invoke-static {v1}, Ljavafx/scene/Node$LazyTransformProperty;->access$1900(Ljavafx/scene/Node$LazyTransformProperty;)Ljavafx/scene/transform/Transform;

    move-result-object v1

    move-object v0, v1

    goto :goto_0
.end method

.method public final getCursor()Ljavafx/scene/Cursor;
    .locals 2

    .prologue
    .line 1189
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/Node;->DEFAULT_CURSOR:Ljavafx/scene/Cursor;

    .line 1190
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 1189
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    .line 1190
    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->getCursor()Ljavafx/scene/Cursor;

    move-result-object v1

    goto :goto_0
.end method

.method public final getDepthTest()Ljavafx/scene/DepthTest;
    .locals 2

    .prologue
    .line 1487
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/Node;->DEFAULT_DEPTH_TEST:Ljavafx/scene/DepthTest;

    .line 1488
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 1487
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    .line 1488
    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->getDepthTest()Ljavafx/scene/DepthTest;

    move-result-object v1

    goto :goto_0
.end method

.method public final getEffect()Ljavafx/scene/effect/Effect;
    .locals 2

    .prologue
    .line 1458
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/Node;->DEFAULT_EFFECT:Ljavafx/scene/effect/Effect;

    .line 1459
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 1458
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    .line 1459
    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->getEffect()Ljavafx/scene/effect/Effect;

    move-result-object v1

    goto :goto_0
.end method

.method public final getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;
    .locals 2

    .prologue
    .line 6166
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-byte v1, v1, Ljavafx/scene/Node;->resolvedNodeOrientation:B

    invoke-static {v1}, Ljavafx/scene/Node;->getEffectiveOrientation(B)B

    move-result v1

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/NodeOrientation;->LEFT_TO_RIGHT:Ljavafx/geometry/NodeOrientation;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    sget-object v1, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    goto :goto_0
.end method

.method public final getEventDispatcher()Ljavafx/event/EventDispatcher;
    .locals 2

    .prologue
    .line 8202
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->eventDispatcherProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/event/EventDispatcher;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method getGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 22

    .prologue
    .line 3527
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/Node;
    move-object/from16 v4, p1

    .local v4, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v5, p2

    .local v5, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v12, v5

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 3530
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/Node;->updateGeomBounds()V

    .line 3531
    move-object v12, v4

    move-object v13, v3

    iget-object v13, v13, Ljavafx/scene/Node;->geomBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v12, v13}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v12

    move-object v4, v12

    .line 3532
    move-object v12, v5

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v12

    if-nez v12, :cond_0

    .line 3533
    move-object v12, v5

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v12

    move-wide v6, v12

    .line 3534
    .local v6, "translateX":D
    move-object v12, v5

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v12

    move-wide v8, v12

    .line 3535
    .local v8, "translateY":D
    move-object v12, v5

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v12

    move-wide v10, v12

    .line 3536
    .local v10, "translateZ":D
    move-object v12, v4

    move-object v13, v4

    invoke-virtual {v13}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v13

    float-to-double v13, v13

    move-wide v15, v6

    add-double/2addr v13, v15

    double-to-float v13, v13

    move-object v14, v4

    .line 3537
    invoke-virtual {v14}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v14

    float-to-double v14, v14

    move-wide/from16 v16, v8

    add-double v14, v14, v16

    double-to-float v14, v14

    move-object v15, v4

    .line 3538
    invoke-virtual {v15}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v15

    float-to-double v15, v15

    move-wide/from16 v17, v10

    add-double v15, v15, v17

    double-to-float v15, v15

    move-object/from16 v16, v4

    .line 3539
    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v6

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v4

    .line 3540
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v19, v8

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v4

    .line 3541
    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v10

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    .line 3536
    invoke-virtual/range {v12 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v12

    move-object v4, v12

    .line 3543
    .end local v6    # "translateX":D
    .end local v8    # "translateY":D
    .end local v10    # "translateZ":D
    :cond_0
    move-object v12, v4

    move-object v3, v12

    .line 3558
    .end local v3    # "this":Ljavafx/scene/Node;
    :goto_0
    return-object v3

    .line 3544
    .restart local v3    # "this":Ljavafx/scene/Node;
    :cond_1
    move-object v12, v5

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v12

    if-eqz v12, :cond_2

    move-object v12, v5

    .line 3545
    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->getType()I

    move-result v12

    const/16 v13, -0x4c

    and-int/lit8 v12, v12, -0x4c

    if-eqz v12, :cond_2

    .line 3549
    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/Node;->impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v12

    move-object v3, v12

    goto :goto_0

    .line 3557
    :cond_2
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/Node;->updateGeomBounds()V

    .line 3558
    move-object v12, v5

    move-object v13, v3

    iget-object v13, v13, Ljavafx/scene/Node;->geomBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object v14, v4

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v12

    move-object v3, v12

    goto :goto_0
.end method

.method public final getId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 981
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->id:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->id:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getInputMethodRequests()Ljavafx/scene/input/InputMethodRequests;
    .locals 2

    .prologue
    .line 7672
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/Node;->DEFAULT_INPUT_METHOD_REQUESTS:Ljavafx/scene/input/InputMethodRequests;

    .line 7674
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7672
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    .line 7674
    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->getInputMethodRequests()Ljavafx/scene/input/InputMethodRequests;

    move-result-object v1

    goto :goto_0
.end method

.method public final getLayoutBounds()Ljavafx/geometry/Bounds;
    .locals 2

    .prologue
    .line 3238
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->layoutBoundsProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/geometry/Bounds;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final getLayoutX()D
    .locals 4

    .prologue
    .line 2467
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->layoutX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/Node;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->layoutX:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getLayoutY()D
    .locals 4

    .prologue
    .line 2539
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->layoutY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/Node;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->layoutY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method getLocalBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 22

    .prologue
    .line 3477
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/Node;
    move-object/from16 v4, p1

    .local v4, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v5, p2

    .local v5, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/Node;->getEffect()Ljavafx/scene/effect/Effect;

    move-result-object v12

    if-nez v12, :cond_0

    move-object v12, v3

    invoke-virtual {v12}, Ljavafx/scene/Node;->getClip()Ljavafx/scene/Node;

    move-result-object v12

    if-nez v12, :cond_0

    .line 3478
    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    invoke-virtual {v12, v13, v14}, Ljavafx/scene/Node;->getGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v12

    move-object v3, v12

    .line 3512
    .end local v3    # "this":Ljavafx/scene/Node;
    :goto_0
    return-object v3

    .line 3481
    .restart local v3    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v12, v5

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v12

    if-eqz v12, :cond_2

    .line 3484
    move-object v12, v3

    invoke-direct {v12}, Ljavafx/scene/Node;->updateLocalBounds()V

    .line 3485
    move-object v12, v4

    move-object v13, v3

    iget-object v13, v13, Ljavafx/scene/Node;->localBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v12, v13}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v12

    move-object v4, v12

    .line 3486
    move-object v12, v5

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v12

    if-nez v12, :cond_1

    .line 3487
    move-object v12, v5

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v12

    move-wide v6, v12

    .line 3488
    .local v6, "translateX":D
    move-object v12, v5

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v12

    move-wide v8, v12

    .line 3489
    .local v8, "translateY":D
    move-object v12, v5

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v12

    move-wide v10, v12

    .line 3490
    .local v10, "translateZ":D
    move-object v12, v4

    move-object v13, v4

    invoke-virtual {v13}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v13

    float-to-double v13, v13

    move-wide v15, v6

    add-double/2addr v13, v15

    double-to-float v13, v13

    move-object v14, v4

    .line 3491
    invoke-virtual {v14}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v14

    float-to-double v14, v14

    move-wide/from16 v16, v8

    add-double v14, v14, v16

    double-to-float v14, v14

    move-object v15, v4

    .line 3492
    invoke-virtual {v15}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v15

    float-to-double v15, v15

    move-wide/from16 v17, v10

    add-double v15, v15, v17

    double-to-float v15, v15

    move-object/from16 v16, v4

    .line 3493
    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v16

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v6

    add-double v16, v16, v18

    move-wide/from16 v0, v16

    double-to-float v0, v0

    move/from16 v16, v0

    move-object/from16 v17, v4

    .line 3494
    invoke-virtual/range {v17 .. v17}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v17

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v19, v8

    add-double v17, v17, v19

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move-object/from16 v18, v4

    .line 3495
    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v18

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    move-wide/from16 v20, v10

    add-double v18, v18, v20

    move-wide/from16 v0, v18

    double-to-float v0, v0

    move/from16 v18, v0

    .line 3490
    invoke-virtual/range {v12 .. v18}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v12

    move-object v4, v12

    .line 3497
    .end local v6    # "translateX":D
    .end local v8    # "translateY":D
    .end local v10    # "translateZ":D
    :cond_1
    move-object v12, v4

    move-object v3, v12

    goto/16 :goto_0

    .line 3498
    :cond_2
    move-object v12, v5

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v12

    if-eqz v12, :cond_3

    move-object v12, v5

    .line 3499
    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->getType()I

    move-result v12

    const/16 v13, -0x4c

    and-int/lit8 v12, v12, -0x4c

    if-eqz v12, :cond_3

    .line 3503
    move-object v12, v3

    move-object v13, v4

    move-object v14, v5

    invoke-direct {v12, v13, v14}, Ljavafx/scene/Node;->computeLocalBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v12

    move-object v3, v12

    goto/16 :goto_0

    .line 3511
    :cond_3
    move-object v12, v3

    invoke-direct {v12}, Ljavafx/scene/Node;->updateLocalBounds()V

    .line 3512
    move-object v12, v5

    move-object v13, v3

    iget-object v13, v13, Ljavafx/scene/Node;->localBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object v14, v4

    invoke-virtual {v12, v13, v14}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v12

    move-object v3, v12

    goto/16 :goto_0
.end method

.method getLocalToParentTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 4

    .prologue
    .line 4667
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->updateLocalToParentTransform()V

    .line 4668
    move-object v2, v1

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v2, v3}, Lcom/sun/javafx/geom/transform/BaseTransform;->setTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 4669
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final getLocalToParentTransform()Ljavafx/scene/transform/Transform;
    .locals 2

    .prologue
    .line 5459
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->localToParentTransformProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/transform/Transform;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final getLocalToSceneTransform()Ljavafx/scene/transform/Transform;
    .locals 2

    .prologue
    .line 5490
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->localToSceneTransformProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/transform/Transform;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final getNodeOrientation()Ljavafx/geometry/NodeOrientation;
    .locals 2

    .prologue
    .line 6121
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->nodeOrientation:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/geometry/NodeOrientation;->INHERIT:Ljavafx/geometry/NodeOrientation;

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->nodeOrientation:Ljavafx/beans/property/ObjectProperty;

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
    .line 6981
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 6982
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 6981
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 6982
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onContextMenuRequested()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7132
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7133
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7132
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7133
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnDragDetected()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 2172
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2173
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 2172
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 2173
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnDragDone()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 2151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2152
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 2151
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 2152
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnDragDropped()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 2071
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2072
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 2071
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 2072
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnDragEntered()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 2090
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2091
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 2090
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 2091
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnDragExited()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 2109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 2110
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 2109
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 2110
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnDragOver()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7648
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7649
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7648
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7649
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnInputMethodTextChanged()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7578
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7579
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7578
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7579
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnKeyPressed()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7599
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7600
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7599
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7600
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnKeyReleased()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7620
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7621
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7620
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7621
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnKeyTyped()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7001
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7002
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7001
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7002
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnMouseClicked()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7191
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7192
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7191
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7192
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnMouseDragEntered()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7211
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7212
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7211
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7212
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnMouseDragExited()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7152
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7151
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7152
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnMouseDragOver()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7171
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7172
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7171
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7172
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnMouseDragReleased()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7020
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7021
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7020
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7021
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnMouseDragged()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7039
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7040
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7039
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7040
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnMouseEntered()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7057
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7058
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7057
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7058
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnMouseExited()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7075
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7076
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7075
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7076
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnMouseMoved()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7094
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7095
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7094
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7095
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnMousePressed()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7113
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7114
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7113
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7114
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnMouseReleased()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7313
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7314
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7313
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7314
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnRotate()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7332
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7333
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7332
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7333
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnRotationFinished()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7294
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7295
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7294
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7295
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnRotationStarted()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7257
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7258
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7257
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7258
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnScroll()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7275
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7276
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7275
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7276
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnScrollFinished()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7238
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7239
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7238
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7239
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnScrollStarted()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7428
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7429
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7428
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7429
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnSwipeDown()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7448
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7449
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7448
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7449
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnSwipeLeft()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7468
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7469
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7468
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7469
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnSwipeRight()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7408
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7409
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7408
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7409
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnSwipeUp()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7514
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7515
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7514
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7515
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnTouchMoved()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7495
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7496
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7495
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7496
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnTouchPressed()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7533
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7534
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7533
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7534
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnTouchReleased()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7552
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7553
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7552
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7553
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnTouchStationary()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7370
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7371
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7370
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7371
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnZoom()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7389
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7390
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7389
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7390
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnZoomFinished()Ljavafx/event/EventHandler;

    move-result-object v1

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
    .line 7351
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 7352
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7351
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->eventHandlerProperties:Lcom/sun/javafx/scene/EventHandlerProperties;

    .line 7352
    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->getOnZoomStarted()Ljavafx/event/EventHandler;

    move-result-object v1

    goto :goto_0
.end method

.method public final getOpacity()D
    .locals 4

    .prologue
    .line 1240
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->opacity:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/Node;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->opacity:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getParent()Ljavafx/scene/Parent;
    .locals 2

    .prologue
    .line 724
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->parent:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->parent:Ljavafx/beans/property/ReadOnlyObjectWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Parent;

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
    .line 667
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->properties:Ljavafx/collections/ObservableMap;

    if-nez v1, :cond_0

    .line 668
    move-object v1, v0

    new-instance v2, Ljava/util/HashMap;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    invoke-static {v2}, Ljavafx/collections/FXCollections;->observableMap(Ljava/util/Map;)Ljavafx/collections/ObservableMap;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/Node;->properties:Ljavafx/collections/ObservableMap;

    .line 670
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->properties:Ljavafx/collections/ObservableMap;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final getPseudoClassStates()Ljavafx/collections/ObservableSet;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableSet",
            "<",
            "Ljavafx/css/PseudoClass;",
            ">;"
        }
    .end annotation

    .prologue
    .line 8891
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->pseudoClassStates:Ljavafx/collections/ObservableSet;

    invoke-static {v1}, Ljavafx/collections/FXCollections;->unmodifiableObservableSet(Ljavafx/collections/ObservableSet;)Ljavafx/collections/ObservableSet;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final getRotate()D
    .locals 4

    .prologue
    .line 5386
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    .line 5387
    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/Node;
    return-wide v1

    .line 5386
    .restart local v1    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    .line 5387
    invoke-virtual {v2}, Ljavafx/scene/Node$NodeTransformation;->getRotate()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getRotationAxis()Ljavafx/geometry/Point3D;
    .locals 2

    .prologue
    .line 5424
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    if-nez v1, :cond_0

    sget-object v1, Ljavafx/scene/Node;->DEFAULT_ROTATION_AXIS:Ljavafx/geometry/Point3D;

    .line 5426
    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 5424
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    .line 5426
    invoke-virtual {v1}, Ljavafx/scene/Node$NodeTransformation;->getRotationAxis()Ljavafx/geometry/Point3D;

    move-result-object v1

    goto :goto_0
.end method

.method public final getScaleX()D
    .locals 4

    .prologue
    .line 5300
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 5301
    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/Node;
    return-wide v1

    .line 5300
    .restart local v1    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    .line 5301
    invoke-virtual {v2}, Ljavafx/scene/Node$NodeTransformation;->getScaleX()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getScaleY()D
    .locals 4

    .prologue
    .line 5327
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 5328
    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/Node;
    return-wide v1

    .line 5327
    .restart local v1    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    .line 5328
    invoke-virtual {v2}, Ljavafx/scene/Node$NodeTransformation;->getScaleY()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getScaleZ()D
    .locals 4

    .prologue
    .line 5354
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    if-nez v2, :cond_0

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 5355
    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/Node;
    return-wide v1

    .line 5354
    .restart local v1    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    .line 5355
    invoke-virtual {v2}, Ljavafx/scene/Node$NodeTransformation;->getScaleZ()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getScene()Ljavafx/scene/Scene;
    .locals 2

    .prologue
    .line 932
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->scene:Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;

    invoke-virtual {v1}, Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Scene;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final getStyle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1090
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->style:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    const-string v1, ""

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->style:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method public final getStyleClass()Ljavafx/collections/ObservableList;
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
    .line 1047
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->styleClass:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public getStyleableParent()Ljavafx/css/Styleable;
    .locals 2

    .prologue
    .line 8451
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method final getSubScene()Ljavafx/scene/SubScene;
    .locals 2

    .prologue
    .line 928
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->subScene:Ljavafx/scene/SubScene;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method getTransformedBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .locals 56

    .prologue
    .line 3422
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/Node;
    move-object/from16 v4, p1

    .local v4, "bounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v5, p2

    .local v5, "tx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v31, v3

    invoke-virtual/range {v31 .. v31}, Ljavafx/scene/Node;->updateLocalToParentTransform()V

    .line 3423
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->isTranslateOrIdentity()Z

    move-result v31

    if-eqz v31, :cond_1

    .line 3424
    move-object/from16 v31, v3

    invoke-virtual/range {v31 .. v31}, Ljavafx/scene/Node;->updateTxBounds()V

    .line 3425
    move-object/from16 v31, v4

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Ljavafx/scene/Node;->txBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(Lcom/sun/javafx/geom/BaseBounds;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v31

    move-object/from16 v4, v31

    .line 3426
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v31

    if-nez v31, :cond_0

    .line 3427
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v31

    move-wide/from16 v6, v31

    .line 3428
    .local v6, "translateX":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v31

    move-wide/from16 v8, v31

    .line 3429
    .local v8, "translateY":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v31

    move-wide/from16 v10, v31

    .line 3430
    .local v10, "translateZ":D
    move-object/from16 v31, v4

    move-object/from16 v32, v4

    .line 3431
    invoke-virtual/range {v32 .. v32}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v32

    move/from16 v0, v32

    float-to-double v0, v0

    move-wide/from16 v32, v0

    move-wide/from16 v34, v6

    add-double v32, v32, v34

    move-wide/from16 v0, v32

    double-to-float v0, v0

    move/from16 v32, v0

    move-object/from16 v33, v4

    .line 3432
    invoke-virtual/range {v33 .. v33}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v33

    move/from16 v0, v33

    float-to-double v0, v0

    move-wide/from16 v33, v0

    move-wide/from16 v35, v8

    add-double v33, v33, v35

    move-wide/from16 v0, v33

    double-to-float v0, v0

    move/from16 v33, v0

    move-object/from16 v34, v4

    .line 3433
    invoke-virtual/range {v34 .. v34}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v34

    move/from16 v0, v34

    float-to-double v0, v0

    move-wide/from16 v34, v0

    move-wide/from16 v36, v10

    add-double v34, v34, v36

    move-wide/from16 v0, v34

    double-to-float v0, v0

    move/from16 v34, v0

    move-object/from16 v35, v4

    .line 3434
    invoke-virtual/range {v35 .. v35}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v35

    move/from16 v0, v35

    float-to-double v0, v0

    move-wide/from16 v35, v0

    move-wide/from16 v37, v6

    add-double v35, v35, v37

    move-wide/from16 v0, v35

    double-to-float v0, v0

    move/from16 v35, v0

    move-object/from16 v36, v4

    .line 3435
    invoke-virtual/range {v36 .. v36}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v36

    move/from16 v0, v36

    float-to-double v0, v0

    move-wide/from16 v36, v0

    move-wide/from16 v38, v8

    add-double v36, v36, v38

    move-wide/from16 v0, v36

    double-to-float v0, v0

    move/from16 v36, v0

    move-object/from16 v37, v4

    .line 3436
    invoke-virtual/range {v37 .. v37}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v37

    move/from16 v0, v37

    float-to-double v0, v0

    move-wide/from16 v37, v0

    move-wide/from16 v39, v10

    add-double v37, v37, v39

    move-wide/from16 v0, v37

    double-to-float v0, v0

    move/from16 v37, v0

    .line 3430
    invoke-virtual/range {v31 .. v37}, Lcom/sun/javafx/geom/BaseBounds;->deriveWithNewBounds(FFFFFF)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v31

    move-object/from16 v4, v31

    .line 3438
    .end local v6    # "translateX":D
    .end local v8    # "translateY":D
    .end local v10    # "translateZ":D
    :cond_0
    move-object/from16 v31, v4

    move-object/from16 v3, v31

    .line 3461
    .end local v3    # "this":Ljavafx/scene/Node;
    :goto_0
    return-object v3

    .line 3439
    .restart local v3    # "this":Ljavafx/scene/Node;
    :cond_1
    move-object/from16 v31, v3

    move-object/from16 v0, v31

    iget-object v0, v0, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v31, v0

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->isIdentity()Z

    move-result v31

    if-eqz v31, :cond_2

    .line 3440
    move-object/from16 v31, v3

    move-object/from16 v32, v4

    move-object/from16 v33, v5

    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/Node;->getLocalBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v31

    move-object/from16 v3, v31

    goto :goto_0

    .line 3442
    :cond_2
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxx()D

    move-result-wide v31

    move-wide/from16 v6, v31

    .line 3443
    .local v6, "mxx":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxy()D

    move-result-wide v31

    move-wide/from16 v8, v31

    .line 3444
    .local v8, "mxy":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxz()D

    move-result-wide v31

    move-wide/from16 v10, v31

    .line 3445
    .local v10, "mxz":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMxt()D

    move-result-wide v31

    move-wide/from16 v12, v31

    .line 3446
    .local v12, "mxt":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyx()D

    move-result-wide v31

    move-wide/from16 v14, v31

    .line 3447
    .local v14, "myx":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyy()D

    move-result-wide v31

    move-wide/from16 v16, v31

    .line 3448
    .local v16, "myy":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyz()D

    move-result-wide v31

    move-wide/from16 v18, v31

    .line 3449
    .local v18, "myz":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMyt()D

    move-result-wide v31

    move-wide/from16 v20, v31

    .line 3450
    .local v20, "myt":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzx()D

    move-result-wide v31

    move-wide/from16 v22, v31

    .line 3451
    .local v22, "mzx":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzy()D

    move-result-wide v31

    move-wide/from16 v24, v31

    .line 3452
    .local v24, "mzy":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzz()D

    move-result-wide v31

    move-wide/from16 v26, v31

    .line 3453
    .local v26, "mzz":D
    move-object/from16 v31, v5

    invoke-virtual/range {v31 .. v31}, Lcom/sun/javafx/geom/transform/BaseTransform;->getMzt()D

    move-result-wide v31

    move-wide/from16 v28, v31

    .line 3454
    .local v28, "mzt":D
    move-object/from16 v31, v5

    move-object/from16 v32, v3

    move-object/from16 v0, v32

    iget-object v0, v0, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v32, v0

    invoke-virtual/range {v31 .. v32}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithConcatenation(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v31

    move-object/from16 v30, v31

    .line 3455
    .local v30, "boundsTx":Lcom/sun/javafx/geom/transform/BaseTransform;
    move-object/from16 v31, v3

    move-object/from16 v32, v4

    move-object/from16 v33, v30

    invoke-virtual/range {v31 .. v33}, Ljavafx/scene/Node;->getLocalBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v31

    move-object/from16 v4, v31

    .line 3456
    move-object/from16 v31, v30

    move-object/from16 v32, v5

    move-object/from16 v0, v31

    move-object/from16 v1, v32

    if-ne v0, v1, :cond_3

    .line 3457
    move-object/from16 v31, v5

    move-wide/from16 v32, v6

    move-wide/from16 v34, v8

    move-wide/from16 v36, v10

    move-wide/from16 v38, v12

    move-wide/from16 v40, v14

    move-wide/from16 v42, v16

    move-wide/from16 v44, v18

    move-wide/from16 v46, v20

    move-wide/from16 v48, v22

    move-wide/from16 v50, v24

    move-wide/from16 v52, v26

    move-wide/from16 v54, v28

    invoke-virtual/range {v31 .. v55}, Lcom/sun/javafx/geom/transform/BaseTransform;->restoreTransform(DDDDDDDDDDDD)V

    .line 3461
    :cond_3
    move-object/from16 v31, v4

    move-object/from16 v3, v31

    goto/16 :goto_0
.end method

.method public final getTransforms()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/transform/Transform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5204
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->transformsProperty()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final getTranslateX()D
    .locals 4

    .prologue
    .line 5216
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    .line 5218
    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/Node;
    return-wide v1

    .line 5216
    .restart local v1    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    .line 5218
    invoke-virtual {v2}, Ljavafx/scene/Node$NodeTransformation;->getTranslateX()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getTranslateY()D
    .locals 4

    .prologue
    .line 5243
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    .line 5245
    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/Node;
    return-wide v1

    .line 5243
    .restart local v1    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    .line 5245
    invoke-virtual {v2}, Ljavafx/scene/Node$NodeTransformation;->getTranslateY()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getTranslateZ()D
    .locals 4

    .prologue
    .line 5270
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    .line 5272
    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/scene/Node;
    return-wide v1

    .line 5270
    .restart local v1    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    .line 5272
    invoke-virtual {v2}, Ljavafx/scene/Node$NodeTransformation;->getTranslateZ()D

    move-result-wide v2

    goto :goto_0
.end method

.method public getTypeSelector()Ljava/lang/String;
    .locals 8

    .prologue
    .line 8429
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    move-object v1, v6

    .line 8430
    .local v1, "clazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v6

    move-object v2, v6

    .line 8433
    .local v2, "pkg":Ljava/lang/Package;
    const/4 v6, 0x0

    move v3, v6

    .line 8434
    .local v3, "plen":I
    move-object v6, v2

    if-eqz v6, :cond_0

    .line 8435
    move-object v6, v2

    invoke-virtual {v6}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v3, v6

    .line 8438
    :cond_0
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    move v4, v6

    .line 8439
    .local v4, "clen":I
    const/4 v6, 0x0

    move v7, v3

    if-ge v6, v7, :cond_1

    move v6, v3

    move v7, v4

    if-ge v6, v7, :cond_1

    move v6, v3

    const/4 v7, 0x1

    add-int/lit8 v6, v6, 0x1

    :goto_0
    move v5, v6

    .line 8441
    .local v5, "pos":I
    move-object v6, v1

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move v7, v5

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 8439
    .end local v5    # "pos":I
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_1
    const/4 v6, 0x0

    goto :goto_0
.end method

.method public getUserData()Ljava/lang/Object;
    .locals 3

    .prologue
    .line 702
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v1

    sget-object v2, Ljavafx/scene/Node;->USER_DATA_KEY:Ljava/lang/Object;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method final hasMirroring()Z
    .locals 6

    .prologue
    .line 6328
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v4, v0

    invoke-direct {v4}, Ljavafx/scene/Node;->getOrientationParent()Ljavafx/scene/Node;

    move-result-object v4

    move-object v1, v4

    .line 6330
    .local v1, "parentValue":Ljavafx/scene/Node;
    move-object v4, v0

    iget-byte v4, v4, Ljavafx/scene/Node;->resolvedNodeOrientation:B

    .line 6331
    invoke-static {v4}, Ljavafx/scene/Node;->getAutomaticOrientation(B)B

    move-result v4

    move v2, v4

    .line 6332
    .local v2, "thisOrientation":B
    move-object v4, v1

    if-eqz v4, :cond_0

    move-object v4, v1

    iget-byte v4, v4, Ljavafx/scene/Node;->resolvedNodeOrientation:B

    .line 6334
    invoke-static {v4}, Ljavafx/scene/Node;->getAutomaticOrientation(B)B

    move-result v4

    :goto_0
    move v3, v4

    .line 6338
    .local v3, "parentOrientation":B
    move v4, v2

    move v5, v3

    if-eq v4, v5, :cond_1

    const/4 v4, 0x1

    :goto_1
    move v0, v4

    .end local v0    # "this":Ljavafx/scene/Node;
    return v0

    .line 6334
    .end local v3    # "parentOrientation":B
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 6338
    .restart local v3    # "parentOrientation":B
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public hasProperties()Z
    .locals 2

    .prologue
    .line 678
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->properties:Ljavafx/collections/ObservableMap;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->properties:Ljavafx/collections/ObservableMap;

    invoke-interface {v1}, Ljavafx/collections/ObservableMap;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final hoverProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 6897
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->hoverPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final idProperty()Ljavafx/beans/property/StringProperty;
    .locals 6

    .prologue
    .line 985
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->id:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    .line 986
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Node$2;-><init>(Ljavafx/scene/Node;)V

    iput-object v2, v1, Ljavafx/scene/Node;->id:Ljavafx/beans/property/StringProperty;

    .line 1007
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->id:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method protected final impl_clearDirty(Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 11
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 451
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, p1

    .local v2, "dirtyBit":Lcom/sun/javafx/scene/DirtyBits;
    move-object v3, v1

    move-object v10, v3

    move-object v3, v10

    move-object v4, v10

    iget v4, v4, Ljavafx/scene/Node;->dirtyBits:I

    int-to-long v4, v4

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/scene/DirtyBits;->getMask()J

    move-result-wide v6

    const-wide/16 v8, -0x1

    xor-long/2addr v6, v8

    and-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Ljavafx/scene/Node;->dirtyBits:I

    .line 452
    return-void
.end method

.method protected abstract impl_computeContains(DD)Z
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public abstract impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected impl_computeIntersects(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;)Z
    .locals 23
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4965
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/Node;
    move-object/from16 v4, p1

    .local v4, "pickRay":Lcom/sun/javafx/geom/PickRay;
    move-object/from16 v5, p2

    .local v5, "pickResult":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v16

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v16, v0

    move-wide/from16 v6, v16

    .line 4966
    .local v6, "origZ":D
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v16

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v16, v0

    move-wide/from16 v8, v16

    .line 4968
    .local v8, "dirZ":D
    move-wide/from16 v16, v8

    invoke-static/range {v16 .. v17}, Ljavafx/scene/Node;->almostZero(D)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 4969
    const/16 v16, 0x0

    move/from16 v3, v16

    .line 4984
    .end local v3    # "this":Ljavafx/scene/Node;
    :goto_0
    return v3

    .line 4971
    .restart local v3    # "this":Ljavafx/scene/Node;
    :cond_0
    move-wide/from16 v16, v6

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v8

    div-double v16, v16, v18

    move-wide/from16 v10, v16

    .line 4972
    .local v10, "t":D
    move-wide/from16 v16, v10

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/PickRay;->getNearClip()D

    move-result-wide v18

    cmpg-double v16, v16, v18

    if-ltz v16, :cond_1

    move-wide/from16 v16, v10

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/PickRay;->getFarClip()D

    move-result-wide v18

    cmpl-double v16, v16, v18

    if-lez v16, :cond_2

    .line 4973
    :cond_1
    const/16 v16, 0x0

    move/from16 v3, v16

    goto :goto_0

    .line 4975
    :cond_2
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v16

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v18

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v10

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v12, v16

    .line 4976
    .local v12, "x":D
    move-object/from16 v16, v4

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v16

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v4

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v18

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v18, v0

    move-wide/from16 v20, v10

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move-wide/from16 v14, v16

    .line 4978
    .local v14, "y":D
    move-object/from16 v16, v3

    move-wide/from16 v17, v12

    move-wide/from16 v0, v17

    double-to-float v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    move-wide/from16 v19, v14

    move-wide/from16 v0, v19

    double-to-float v0, v0

    move/from16 v19, v0

    move/from16 v0, v19

    float-to-double v0, v0

    move-wide/from16 v19, v0

    invoke-virtual/range {v16 .. v20}, Ljavafx/scene/Node;->contains(DD)Z

    move-result v16

    if-eqz v16, :cond_4

    .line 4979
    move-object/from16 v16, v5

    if-eqz v16, :cond_3

    .line 4980
    move-object/from16 v16, v5

    move-object/from16 v17, v3

    move-wide/from16 v18, v10

    move-object/from16 v20, v4

    move-wide/from16 v21, v10

    invoke-static/range {v20 .. v22}, Lcom/sun/javafx/scene/input/PickResultChooser;->computePoint(Lcom/sun/javafx/geom/PickRay;D)Ljavafx/geometry/Point3D;

    move-result-object v20

    invoke-virtual/range {v16 .. v20}, Lcom/sun/javafx/scene/input/PickResultChooser;->offer(Ljavafx/scene/Node;DLjavafx/geometry/Point3D;)Z

    move-result v16

    .line 4982
    :cond_3
    const/16 v16, 0x1

    move/from16 v3, v16

    goto/16 :goto_0

    .line 4984
    :cond_4
    const/16 v16, 0x0

    move/from16 v3, v16

    goto/16 :goto_0
.end method

.method protected impl_computeLayoutBounds()Ljavafx/geometry/Bounds;
    .locals 17
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3373
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    invoke-static {}, Lcom/sun/javafx/util/TempState;->getInstance()Lcom/sun/javafx/util/TempState;

    move-result-object v2

    iget-object v2, v2, Lcom/sun/javafx/util/TempState;->bounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object v1, v2

    .line 3374
    .local v1, "tempBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v2, v0

    move-object v3, v1

    sget-object v4, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Node;->getGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v2

    move-object v1, v2

    .line 3376
    new-instance v2, Ljavafx/geometry/BoundingBox;

    move-object/from16 v16, v2

    move-object/from16 v2, v16

    move-object/from16 v3, v16

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v4

    float-to-double v4, v4

    move-object v6, v1

    .line 3377
    invoke-virtual {v6}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v6

    float-to-double v6, v6

    move-object v8, v1

    .line 3378
    invoke-virtual {v8}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v8

    float-to-double v8, v8

    move-object v10, v1

    .line 3379
    invoke-virtual {v10}, Lcom/sun/javafx/geom/BaseBounds;->getWidth()F

    move-result v10

    float-to-double v10, v10

    move-object v12, v1

    .line 3380
    invoke-virtual {v12}, Lcom/sun/javafx/geom/BaseBounds;->getHeight()F

    move-result v12

    float-to-double v12, v12

    move-object v14, v1

    .line 3381
    invoke-virtual {v14}, Lcom/sun/javafx/geom/BaseBounds;->getDepth()F

    move-result v14

    float-to-double v14, v14

    invoke-direct/range {v3 .. v15}, Ljavafx/geometry/BoundingBox;-><init>(DDDDDD)V

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method protected abstract impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method protected impl_cssGetCursorInitialValue()Ljavafx/scene/Cursor;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8472
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method protected impl_cssGetFocusTraversableInitialValue()Ljava/lang/Boolean;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8462
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public impl_findStyles(Ljava/util/Map;)Ljava/util/Map;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljavafx/css/StyleableProperty",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Style;",
            ">;>;)",
            "Ljava/util/Map",
            "<",
            "Ljavafx/css/StyleableProperty",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Style;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8809
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "styleMap":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/css/StyleableProperty<*>;Ljava/util/List<Lcom/sun/javafx/css/Style;>;>;"
    move-object v3, v1

    move-object v4, v0

    invoke-static {v3, v4}, Ljavafx/scene/CssStyleHelper;->getMatchingStyles(Ljava/util/Map;Ljavafx/scene/Node;)Ljava/util/Map;

    move-result-object v3

    move-object v2, v3

    .line 8810
    .local v2, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/css/StyleableProperty<*>;Ljava/util/List<Lcom/sun/javafx/css/Style;>;>;"
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v2

    :goto_0
    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    invoke-static {}, Ljava/util/Collections;->emptyMap()Ljava/util/Map;

    move-result-object v3

    goto :goto_0
.end method

.method protected impl_geomChanged()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3752
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Node;->geomBoundsInvalid:Z

    if-eqz v1, :cond_0

    .line 3758
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->impl_notifyLayoutBoundsChanged()V

    .line 3759
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->transformedBoundsChanged()V

    .line 3760
    .line 3767
    :goto_0
    return-void

    .line 3762
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->geomBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v1}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v1

    .line 3763
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/Node;->geomBoundsInvalid:Z

    .line 3764
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_BOUNDS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/Node;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 3765
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->impl_notifyLayoutBoundsChanged()V

    .line 3766
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->localBoundsChanged()V

    .line 3767
    goto :goto_0
.end method

.method public final impl_getLeafTransform()Lcom/sun/javafx/geom/transform/BaseTransform;
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4679
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-static {}, Lcom/sun/javafx/util/TempState;->getInstance()Lcom/sun/javafx/util/TempState;

    move-result-object v2

    iget-object v2, v2, Lcom/sun/javafx/util/TempState;->leafTx:Lcom/sun/javafx/geom/transform/Affine3D;

    invoke-virtual {v1, v2}, Ljavafx/scene/Node;->getLocalToParentTransform(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<P:",
            "Lcom/sun/javafx/sg/prism/NGNode;",
            ">()TP;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 2304
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    invoke-static {}, Lcom/sun/javafx/util/Utils;->assertionEnabled()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2306
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v1

    if-eqz v1, :cond_0

    invoke-static {}, Ljavafx/scene/Scene;->isPGAccessAllowed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 2307
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v1}, Ljava/io/PrintStream;->println()V

    .line 2308
    sget-object v1, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v2, "*** unexpected PG access"

    invoke-virtual {v1, v2}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 2309
    invoke-static {}, Ljava/lang/Thread;->dumpStack()V

    .line 2313
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->peer:Lcom/sun/javafx/sg/prism/NGNode;

    if-nez v1, :cond_1

    .line 2317
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->impl_createPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/Node;->peer:Lcom/sun/javafx/sg/prism/NGNode;

    .line 2322
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->peer:Lcom/sun/javafx/sg/prism/NGNode;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final impl_getPivotX()D
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4705
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v2

    move-object v1, v2

    .line 4706
    .local v1, "bounds":Ljavafx/geometry/Bounds;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    move-wide v0, v2

    .end local v0    # "this":Ljavafx/scene/Node;
    return-wide v0
.end method

.method public final impl_getPivotY()D
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4715
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v2

    move-object v1, v2

    .line 4716
    .local v1, "bounds":Ljavafx/geometry/Bounds;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    move-wide v0, v2

    .end local v0    # "this":Ljavafx/scene/Node;
    return-wide v0
.end method

.method public final impl_getPivotZ()D
    .locals 8
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4725
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v2

    move-object v1, v2

    .line 4726
    .local v1, "bounds":Ljavafx/geometry/Bounds;
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v2

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/geometry/Bounds;->getDepth()D

    move-result-wide v4

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    add-double/2addr v2, v4

    move-wide v0, v2

    .end local v0    # "this":Ljavafx/scene/Node;
    return-wide v0
.end method

.method public final impl_getStyleMap()Ljavafx/collections/ObservableMap;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljavafx/css/StyleableProperty",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Style;",
            ">;>;"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8773
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v3, v0

    .line 8774
    invoke-virtual {v3}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v3

    const-string v4, "STYLEMAP"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/collections/ObservableMap;

    move-object v1, v3

    .line 8775
    .local v1, "map":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<Ljavafx/css/StyleableProperty<*>;Ljava/util/List<Lcom/sun/javafx/css/Style;>;>;"
    move-object v3, v1

    move-object v4, v0

    invoke-static {v3, v4}, Ljavafx/scene/CssStyleHelper;->getMatchingStyles(Ljava/util/Map;Ljavafx/scene/Node;)Ljava/util/Map;

    move-result-object v3

    move-object v2, v3

    .line 8776
    .local v2, "ret":Ljava/util/Map;, "Ljava/util/Map<Ljavafx/css/StyleableProperty<*>;Ljava/util/List<Lcom/sun/javafx/css/Style;>;>;"
    move-object v3, v2

    if-eqz v3, :cond_1

    .line 8777
    move-object v3, v2

    instance-of v3, v3, Ljavafx/collections/ObservableMap;

    if-eqz v3, :cond_0

    move-object v3, v2

    check-cast v3, Ljavafx/collections/ObservableMap;

    move-object v0, v3

    .line 8780
    .end local v0    # "this":Ljavafx/scene/Node;
    :goto_0
    return-object v0

    .line 8778
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v3, v2

    invoke-static {v3}, Ljavafx/collections/FXCollections;->observableMap(Ljava/util/Map;)Ljavafx/collections/ObservableMap;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 8780
    :cond_1
    invoke-static {}, Ljavafx/collections/FXCollections;->emptyObservableMap()Ljavafx/collections/ObservableMap;

    move-result-object v3

    move-object v0, v3

    goto :goto_0
.end method

.method public impl_hasTransforms()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5509
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    .line 5510
    invoke-virtual {v1}, Ljavafx/scene/Node$NodeTransformation;->hasTransforms()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected final impl_intersects(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;)Z
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4939
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, p1

    .local v2, "pickRay":Lcom/sun/javafx/geom/PickRay;
    move-object v3, p2

    .local v3, "pickResult":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object v6, v1

    move-object v7, v2

    invoke-virtual {v6, v7}, Ljavafx/scene/Node;->impl_intersectsBounds(Lcom/sun/javafx/geom/PickRay;)D

    move-result-wide v6

    move-wide v4, v6

    .line 4940
    .local v4, "boundsDistance":D
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_2

    .line 4941
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Node;->isPickOnBounds()Z

    move-result v6

    if-eqz v6, :cond_1

    .line 4942
    move-object v6, v3

    if-eqz v6, :cond_0

    .line 4943
    move-object v6, v3

    move-object v7, v1

    move-wide v8, v4

    move-object v10, v2

    move-wide v11, v4

    invoke-static {v10, v11, v12}, Lcom/sun/javafx/scene/input/PickResultChooser;->computePoint(Lcom/sun/javafx/geom/PickRay;D)Ljavafx/geometry/Point3D;

    move-result-object v10

    invoke-virtual {v6, v7, v8, v9, v10}, Lcom/sun/javafx/scene/input/PickResultChooser;->offer(Ljavafx/scene/Node;DLjavafx/geometry/Point3D;)Z

    move-result v6

    .line 4945
    :cond_0
    const/4 v6, 0x1

    move v1, v6

    .line 4950
    .end local v1    # "this":Ljavafx/scene/Node;
    :goto_0
    return v1

    .line 4947
    .restart local v1    # "this":Ljavafx/scene/Node;
    :cond_1
    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    invoke-virtual {v6, v7, v8}, Ljavafx/scene/Node;->impl_computeIntersects(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;)Z

    move-result v6

    move v1, v6

    goto :goto_0

    .line 4950
    :cond_2
    const/4 v6, 0x0

    move v1, v6

    goto :goto_0
.end method

.method protected final impl_intersectsBounds(Lcom/sun/javafx/geom/PickRay;)D
    .locals 53
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 5002
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/Node;
    move-object/from16 v4, p1

    .local v4, "pickRay":Lcom/sun/javafx/geom/PickRay;
    move-object/from16 v44, v4

    invoke-virtual/range {v44 .. v44}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v44

    move-object/from16 v5, v44

    .line 5005
    .local v5, "dir":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v44, v4

    invoke-virtual/range {v44 .. v44}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v44

    move-object/from16 v10, v44

    .line 5006
    .local v10, "origin":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v44, v10

    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v44, v0

    move-wide/from16 v11, v44

    .line 5007
    .local v11, "originX":D
    move-object/from16 v44, v10

    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v44, v0

    move-wide/from16 v13, v44

    .line 5008
    .local v13, "originY":D
    move-object/from16 v44, v10

    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v44, v0

    move-wide/from16 v15, v44

    .line 5010
    .local v15, "originZ":D
    invoke-static {}, Lcom/sun/javafx/util/TempState;->getInstance()Lcom/sun/javafx/util/TempState;

    move-result-object v44

    move-object/from16 v17, v44

    .line 5011
    .local v17, "tempState":Lcom/sun/javafx/util/TempState;
    move-object/from16 v44, v17

    move-object/from16 v0, v44

    iget-object v0, v0, Lcom/sun/javafx/util/TempState;->bounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object/from16 v44, v0

    move-object/from16 v18, v44

    .line 5013
    .local v18, "tempBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object/from16 v44, v3

    move-object/from16 v45, v18

    sget-object v46, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual/range {v44 .. v46}, Ljavafx/scene/Node;->getLocalBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v44

    move-object/from16 v18, v44

    .line 5016
    move-object/from16 v44, v5

    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmpl-double v44, v44, v46

    if-nez v44, :cond_7

    move-object/from16 v44, v5

    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmpl-double v44, v44, v46

    if-nez v44, :cond_7

    .line 5019
    move-object/from16 v44, v5

    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmpl-double v44, v44, v46

    if-nez v44, :cond_0

    .line 5020
    const-wide/high16 v44, 0x7ff8000000000000L    # NaN

    move-wide/from16 v3, v44

    .line 5178
    .end local v3    # "this":Ljavafx/scene/Node;
    :goto_0
    return-wide v3

    .line 5023
    .restart local v3    # "this":Ljavafx/scene/Node;
    :cond_0
    move-wide/from16 v44, v11

    move-object/from16 v46, v18

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v46

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    cmpg-double v44, v44, v46

    if-ltz v44, :cond_1

    move-wide/from16 v44, v11

    move-object/from16 v46, v18

    .line 5024
    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v46

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    cmpl-double v44, v44, v46

    if-gtz v44, :cond_1

    move-wide/from16 v44, v13

    move-object/from16 v46, v18

    .line 5025
    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v46

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    cmpg-double v44, v44, v46

    if-ltz v44, :cond_1

    move-wide/from16 v44, v13

    move-object/from16 v46, v18

    .line 5026
    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v46

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    cmpl-double v44, v44, v46

    if-lez v44, :cond_2

    .line 5027
    :cond_1
    const-wide/high16 v44, 0x7ff8000000000000L    # NaN

    move-wide/from16 v3, v44

    goto :goto_0

    .line 5030
    :cond_2
    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    move-object/from16 v46, v5

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v46, v0

    div-double v44, v44, v46

    move-wide/from16 v19, v44

    .line 5031
    .local v19, "invDirZ":D
    move-wide/from16 v44, v19

    const-wide/16 v46, 0x0

    cmpg-double v44, v44, v46

    if-gez v44, :cond_4

    const/16 v44, 0x1

    :goto_1
    move/from16 v21, v44

    .line 5033
    .local v21, "signZ":Z
    move-object/from16 v44, v18

    invoke-virtual/range {v44 .. v44}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v44

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v22, v44

    .line 5034
    .local v22, "minZ":D
    move-object/from16 v44, v18

    invoke-virtual/range {v44 .. v44}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v44

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v24, v44

    .line 5035
    .local v24, "maxZ":D
    move/from16 v44, v21

    if-eqz v44, :cond_5

    move-wide/from16 v44, v24

    :goto_2
    move-wide/from16 v46, v15

    sub-double v44, v44, v46

    move-wide/from16 v46, v19

    mul-double v44, v44, v46

    move-wide/from16 v6, v44

    .line 5036
    .local v6, "tmin":D
    move/from16 v44, v21

    if-eqz v44, :cond_6

    move-wide/from16 v44, v22

    :goto_3
    move-wide/from16 v46, v15

    sub-double v44, v44, v46

    move-wide/from16 v46, v19

    mul-double v44, v44, v46

    move-wide/from16 v8, v44

    .line 5132
    .end local v19    # "invDirZ":D
    .end local v21    # "signZ":Z
    .end local v22    # "minZ":D
    .end local v24    # "maxZ":D
    .local v8, "tmax":D
    :cond_3
    :goto_4
    move-object/from16 v44, v3

    invoke-virtual/range {v44 .. v44}, Ljavafx/scene/Node;->getClip()Ljavafx/scene/Node;

    move-result-object v44

    move-object/from16 v19, v44

    .line 5133
    .local v19, "clip":Ljavafx/scene/Node;
    move-object/from16 v44, v19

    if-eqz v44, :cond_26

    move-object/from16 v44, v3

    move-object/from16 v0, v44

    instance-of v0, v0, Ljavafx/scene/shape/Shape3D;

    move/from16 v44, v0

    if-nez v44, :cond_26

    move-object/from16 v44, v19

    move-object/from16 v0, v44

    instance-of v0, v0, Ljavafx/scene/shape/Shape3D;

    move/from16 v44, v0

    if-nez v44, :cond_26

    .line 5138
    move-object/from16 v44, v5

    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v44, v0

    move-wide/from16 v20, v44

    .line 5139
    .local v20, "dirX":D
    move-object/from16 v44, v5

    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v44, v0

    move-wide/from16 v22, v44

    .line 5140
    .local v22, "dirY":D
    move-object/from16 v44, v5

    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v44, v0

    move-wide/from16 v24, v44

    .line 5142
    .local v24, "dirZ":D
    move-object/from16 v44, v19

    invoke-virtual/range {v44 .. v44}, Ljavafx/scene/Node;->updateLocalToParentTransform()V

    .line 5144
    const/16 v44, 0x1

    move/from16 v26, v44

    .line 5146
    .local v26, "hitClip":Z
    move-object/from16 v44, v19

    :try_start_0
    move-object/from16 v0, v44

    iget-object v0, v0, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v44, v0

    move-object/from16 v45, v10

    move-object/from16 v46, v10

    invoke-virtual/range {v44 .. v46}, Lcom/sun/javafx/geom/transform/BaseTransform;->inverseTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v44

    .line 5147
    move-object/from16 v44, v19

    move-object/from16 v0, v44

    iget-object v0, v0, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v44, v0

    move-object/from16 v45, v5

    move-object/from16 v46, v5

    invoke-virtual/range {v44 .. v46}, Lcom/sun/javafx/geom/transform/BaseTransform;->inverseDeltaTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v44

    .line 5150
    .line 5151
    :goto_5
    move/from16 v44, v26

    if-eqz v44, :cond_25

    move-object/from16 v44, v19

    move-object/from16 v45, v4

    const/16 v46, 0x0

    invoke-virtual/range {v44 .. v46}, Ljavafx/scene/Node;->impl_intersects(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;)Z

    move-result v44

    if-eqz v44, :cond_25

    const/16 v44, 0x1

    :goto_6
    move/from16 v26, v44

    .line 5152
    move-object/from16 v44, v4

    move-wide/from16 v45, v11

    move-wide/from16 v47, v13

    move-wide/from16 v49, v15

    invoke-virtual/range {v44 .. v50}, Lcom/sun/javafx/geom/PickRay;->setOrigin(DDD)V

    .line 5153
    move-object/from16 v44, v4

    move-wide/from16 v45, v20

    move-wide/from16 v47, v22

    move-wide/from16 v49, v24

    invoke-virtual/range {v44 .. v50}, Lcom/sun/javafx/geom/PickRay;->setDirection(DDD)V

    .line 5155
    move/from16 v44, v26

    if-nez v44, :cond_26

    .line 5156
    const-wide/high16 v44, 0x7ff8000000000000L    # NaN

    move-wide/from16 v3, v44

    goto/16 :goto_0

    .line 5031
    .end local v6    # "tmin":D
    .end local v8    # "tmax":D
    .end local v20    # "dirX":D
    .end local v22    # "dirY":D
    .end local v24    # "dirZ":D
    .end local v26    # "hitClip":Z
    .local v19, "invDirZ":D
    :cond_4
    const/16 v44, 0x0

    goto/16 :goto_1

    .line 5035
    .restart local v21    # "signZ":Z
    .local v22, "minZ":D
    .local v24, "maxZ":D
    :cond_5
    move-wide/from16 v44, v22

    goto/16 :goto_2

    .line 5036
    .restart local v6    # "tmin":D
    :cond_6
    move-wide/from16 v44, v24

    goto/16 :goto_3

    .line 5038
    .end local v6    # "tmin":D
    .end local v19    # "invDirZ":D
    .end local v21    # "signZ":Z
    .end local v22    # "minZ":D
    .end local v24    # "maxZ":D
    :cond_7
    move-object/from16 v44, v18

    invoke-virtual/range {v44 .. v44}, Lcom/sun/javafx/geom/BaseBounds;->getDepth()F

    move-result v44

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmpl-double v44, v44, v46

    if-nez v44, :cond_b

    .line 5041
    move-object/from16 v44, v5

    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v44, v0

    invoke-static/range {v44 .. v45}, Ljavafx/scene/Node;->almostZero(D)Z

    move-result v44

    if-eqz v44, :cond_8

    .line 5042
    const-wide/high16 v44, 0x7ff8000000000000L    # NaN

    move-wide/from16 v3, v44

    goto/16 :goto_0

    .line 5045
    :cond_8
    move-object/from16 v44, v18

    invoke-virtual/range {v44 .. v44}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v44

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v46, v15

    sub-double v44, v44, v46

    move-object/from16 v46, v5

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v46, v0

    div-double v44, v44, v46

    move-wide/from16 v19, v44

    .line 5046
    .local v19, "t":D
    move-wide/from16 v44, v11

    move-object/from16 v46, v5

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v46, v0

    move-wide/from16 v48, v19

    mul-double v46, v46, v48

    add-double v44, v44, v46

    move-wide/from16 v21, v44

    .line 5047
    .local v21, "x":D
    move-wide/from16 v44, v13

    move-object/from16 v46, v5

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v46, v0

    move-wide/from16 v48, v19

    mul-double v46, v46, v48

    add-double v44, v44, v46

    move-wide/from16 v23, v44

    .line 5049
    .local v23, "y":D
    move-wide/from16 v44, v21

    move-object/from16 v46, v18

    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v46

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    cmpg-double v44, v44, v46

    if-ltz v44, :cond_9

    move-wide/from16 v44, v21

    move-object/from16 v46, v18

    .line 5050
    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v46

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    cmpl-double v44, v44, v46

    if-gtz v44, :cond_9

    move-wide/from16 v44, v23

    move-object/from16 v46, v18

    .line 5051
    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v46

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    cmpg-double v44, v44, v46

    if-ltz v44, :cond_9

    move-wide/from16 v44, v23

    move-object/from16 v46, v18

    .line 5052
    invoke-virtual/range {v46 .. v46}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v46

    move/from16 v0, v46

    float-to-double v0, v0

    move-wide/from16 v46, v0

    cmpl-double v44, v44, v46

    if-lez v44, :cond_a

    .line 5053
    :cond_9
    const-wide/high16 v44, 0x7ff8000000000000L    # NaN

    move-wide/from16 v3, v44

    goto/16 :goto_0

    .line 5056
    :cond_a
    move-wide/from16 v44, v19

    move-wide/from16 v51, v44

    move-wide/from16 v44, v51

    move-wide/from16 v46, v51

    move-wide/from16 v8, v46

    .restart local v8    # "tmax":D
    move-wide/from16 v6, v44

    .line 5058
    .restart local v6    # "tmin":D
    goto/16 :goto_4

    .line 5060
    .end local v6    # "tmin":D
    .end local v8    # "tmax":D
    .end local v19    # "t":D
    .end local v21    # "x":D
    .end local v23    # "y":D
    :cond_b
    move-object/from16 v44, v5

    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmpl-double v44, v44, v46

    if-nez v44, :cond_d

    const-wide/high16 v44, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_7
    move-wide/from16 v19, v44

    .line 5061
    .local v19, "invDirX":D
    move-object/from16 v44, v5

    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmpl-double v44, v44, v46

    if-nez v44, :cond_e

    const-wide/high16 v44, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_8
    move-wide/from16 v21, v44

    .line 5062
    .local v21, "invDirY":D
    move-object/from16 v44, v5

    move-object/from16 v0, v44

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v44, v0

    const-wide/16 v46, 0x0

    cmpl-double v44, v44, v46

    if-nez v44, :cond_f

    const-wide/high16 v44, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    :goto_9
    move-wide/from16 v23, v44

    .line 5063
    .local v23, "invDirZ":D
    move-wide/from16 v44, v19

    const-wide/16 v46, 0x0

    cmpg-double v44, v44, v46

    if-gez v44, :cond_10

    const/16 v44, 0x1

    :goto_a
    move/from16 v25, v44

    .line 5064
    .local v25, "signX":Z
    move-wide/from16 v44, v21

    const-wide/16 v46, 0x0

    cmpg-double v44, v44, v46

    if-gez v44, :cond_11

    const/16 v44, 0x1

    :goto_b
    move/from16 v26, v44

    .line 5065
    .local v26, "signY":Z
    move-wide/from16 v44, v23

    const-wide/16 v46, 0x0

    cmpg-double v44, v44, v46

    if-gez v44, :cond_12

    const/16 v44, 0x1

    :goto_c
    move/from16 v27, v44

    .line 5066
    .local v27, "signZ":Z
    move-object/from16 v44, v18

    invoke-virtual/range {v44 .. v44}, Lcom/sun/javafx/geom/BaseBounds;->getMinX()F

    move-result v44

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v28, v44

    .line 5067
    .local v28, "minX":D
    move-object/from16 v44, v18

    invoke-virtual/range {v44 .. v44}, Lcom/sun/javafx/geom/BaseBounds;->getMinY()F

    move-result v44

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v30, v44

    .line 5068
    .local v30, "minY":D
    move-object/from16 v44, v18

    invoke-virtual/range {v44 .. v44}, Lcom/sun/javafx/geom/BaseBounds;->getMaxX()F

    move-result v44

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v32, v44

    .line 5069
    .local v32, "maxX":D
    move-object/from16 v44, v18

    invoke-virtual/range {v44 .. v44}, Lcom/sun/javafx/geom/BaseBounds;->getMaxY()F

    move-result v44

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v34, v44

    .line 5071
    .local v34, "maxY":D
    const-wide/high16 v44, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    move-wide/from16 v6, v44

    .line 5072
    .restart local v6    # "tmin":D
    const-wide/high16 v44, 0x7ff0000000000000L    # Double.POSITIVE_INFINITY

    move-wide/from16 v8, v44

    .line 5073
    .restart local v8    # "tmax":D
    move-wide/from16 v44, v19

    invoke-static/range {v44 .. v45}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v44

    if-eqz v44, :cond_14

    .line 5074
    move-wide/from16 v44, v28

    move-wide/from16 v46, v11

    cmpg-double v44, v44, v46

    if-gtz v44, :cond_13

    move-wide/from16 v44, v32

    move-wide/from16 v46, v11

    cmpl-double v44, v44, v46

    if-ltz v44, :cond_13

    .line 5084
    :goto_d
    move-wide/from16 v44, v21

    invoke-static/range {v44 .. v45}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v44

    if-eqz v44, :cond_18

    .line 5085
    move-wide/from16 v44, v30

    move-wide/from16 v46, v13

    cmpg-double v44, v44, v46

    if-gtz v44, :cond_17

    move-wide/from16 v44, v34

    move-wide/from16 v46, v13

    cmpl-double v44, v44, v46

    if-ltz v44, :cond_17

    .line 5105
    :cond_c
    :goto_e
    move-object/from16 v44, v18

    invoke-virtual/range {v44 .. v44}, Lcom/sun/javafx/geom/BaseBounds;->getMinZ()F

    move-result v44

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v36, v44

    .line 5106
    .local v36, "minZ":D
    move-object/from16 v44, v18

    invoke-virtual/range {v44 .. v44}, Lcom/sun/javafx/geom/BaseBounds;->getMaxZ()F

    move-result v44

    move/from16 v0, v44

    float-to-double v0, v0

    move-wide/from16 v44, v0

    move-wide/from16 v38, v44

    .line 5107
    .local v38, "maxZ":D
    move-wide/from16 v44, v23

    invoke-static/range {v44 .. v45}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v44

    if-eqz v44, :cond_1f

    .line 5108
    move-wide/from16 v44, v36

    move-wide/from16 v46, v15

    cmpg-double v44, v44, v46

    if-gtz v44, :cond_1e

    move-wide/from16 v44, v38

    move-wide/from16 v46, v15

    cmpl-double v44, v44, v46

    if-ltz v44, :cond_1e

    goto/16 :goto_4

    .line 5060
    .end local v6    # "tmin":D
    .end local v8    # "tmax":D
    .end local v19    # "invDirX":D
    .end local v21    # "invDirY":D
    .end local v23    # "invDirZ":D
    .end local v25    # "signX":Z
    .end local v26    # "signY":Z
    .end local v27    # "signZ":Z
    .end local v28    # "minX":D
    .end local v30    # "minY":D
    .end local v32    # "maxX":D
    .end local v34    # "maxY":D
    .end local v36    # "minZ":D
    .end local v38    # "maxZ":D
    :cond_d
    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    move-object/from16 v46, v5

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v46, v0

    div-double v44, v44, v46

    goto/16 :goto_7

    .line 5061
    .restart local v19    # "invDirX":D
    :cond_e
    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    move-object/from16 v46, v5

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v46, v0

    div-double v44, v44, v46

    goto/16 :goto_8

    .line 5062
    .restart local v21    # "invDirY":D
    :cond_f
    const-wide/high16 v44, 0x3ff0000000000000L    # 1.0

    move-object/from16 v46, v5

    move-object/from16 v0, v46

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v46, v0

    div-double v44, v44, v46

    goto/16 :goto_9

    .line 5063
    .restart local v23    # "invDirZ":D
    :cond_10
    const/16 v44, 0x0

    goto/16 :goto_a

    .line 5064
    .restart local v25    # "signX":Z
    :cond_11
    const/16 v44, 0x0

    goto/16 :goto_b

    .line 5065
    .restart local v26    # "signY":Z
    :cond_12
    const/16 v44, 0x0

    goto/16 :goto_c

    .line 5077
    .restart local v6    # "tmin":D
    .restart local v8    # "tmax":D
    .restart local v27    # "signZ":Z
    .restart local v28    # "minX":D
    .restart local v30    # "minY":D
    .restart local v32    # "maxX":D
    .restart local v34    # "maxY":D
    :cond_13
    const-wide/high16 v44, 0x7ff8000000000000L    # NaN

    move-wide/from16 v3, v44

    goto/16 :goto_0

    .line 5080
    :cond_14
    move/from16 v44, v25

    if-eqz v44, :cond_15

    move-wide/from16 v44, v32

    :goto_f
    move-wide/from16 v46, v11

    sub-double v44, v44, v46

    move-wide/from16 v46, v19

    mul-double v44, v44, v46

    move-wide/from16 v6, v44

    .line 5081
    move/from16 v44, v25

    if-eqz v44, :cond_16

    move-wide/from16 v44, v28

    :goto_10
    move-wide/from16 v46, v11

    sub-double v44, v44, v46

    move-wide/from16 v46, v19

    mul-double v44, v44, v46

    move-wide/from16 v8, v44

    goto/16 :goto_d

    .line 5080
    :cond_15
    move-wide/from16 v44, v28

    goto :goto_f

    .line 5081
    :cond_16
    move-wide/from16 v44, v32

    goto :goto_10

    .line 5088
    :cond_17
    const-wide/high16 v44, 0x7ff8000000000000L    # NaN

    move-wide/from16 v3, v44

    goto/16 :goto_0

    .line 5091
    :cond_18
    move/from16 v44, v26

    if-eqz v44, :cond_1a

    move-wide/from16 v44, v34

    :goto_11
    move-wide/from16 v46, v13

    sub-double v44, v44, v46

    move-wide/from16 v46, v21

    mul-double v44, v44, v46

    move-wide/from16 v36, v44

    .line 5092
    .local v36, "tymin":D
    move/from16 v44, v26

    if-eqz v44, :cond_1b

    move-wide/from16 v44, v30

    :goto_12
    move-wide/from16 v46, v13

    sub-double v44, v44, v46

    move-wide/from16 v46, v21

    mul-double v44, v44, v46

    move-wide/from16 v38, v44

    .line 5094
    .local v38, "tymax":D
    move-wide/from16 v44, v6

    move-wide/from16 v46, v38

    cmpl-double v44, v44, v46

    if-gtz v44, :cond_19

    move-wide/from16 v44, v36

    move-wide/from16 v46, v8

    cmpl-double v44, v44, v46

    if-lez v44, :cond_1c

    .line 5095
    :cond_19
    const-wide/high16 v44, 0x7ff8000000000000L    # NaN

    move-wide/from16 v3, v44

    goto/16 :goto_0

    .line 5091
    .end local v36    # "tymin":D
    .end local v38    # "tymax":D
    :cond_1a
    move-wide/from16 v44, v30

    goto :goto_11

    .line 5092
    .restart local v36    # "tymin":D
    :cond_1b
    move-wide/from16 v44, v34

    goto :goto_12

    .line 5097
    .restart local v38    # "tymax":D
    :cond_1c
    move-wide/from16 v44, v36

    move-wide/from16 v46, v6

    cmpl-double v44, v44, v46

    if-lez v44, :cond_1d

    .line 5098
    move-wide/from16 v44, v36

    move-wide/from16 v6, v44

    .line 5100
    :cond_1d
    move-wide/from16 v44, v38

    move-wide/from16 v46, v8

    cmpg-double v44, v44, v46

    if-gez v44, :cond_c

    .line 5101
    move-wide/from16 v44, v38

    move-wide/from16 v8, v44

    goto/16 :goto_e

    .line 5111
    .local v36, "minZ":D
    .local v38, "maxZ":D
    :cond_1e
    const-wide/high16 v44, 0x7ff8000000000000L    # NaN

    move-wide/from16 v3, v44

    goto/16 :goto_0

    .line 5114
    :cond_1f
    move/from16 v44, v27

    if-eqz v44, :cond_21

    move-wide/from16 v44, v38

    :goto_13
    move-wide/from16 v46, v15

    sub-double v44, v44, v46

    move-wide/from16 v46, v23

    mul-double v44, v44, v46

    move-wide/from16 v40, v44

    .line 5115
    .local v40, "tzmin":D
    move/from16 v44, v27

    if-eqz v44, :cond_22

    move-wide/from16 v44, v36

    :goto_14
    move-wide/from16 v46, v15

    sub-double v44, v44, v46

    move-wide/from16 v46, v23

    mul-double v44, v44, v46

    move-wide/from16 v42, v44

    .line 5117
    .local v42, "tzmax":D
    move-wide/from16 v44, v6

    move-wide/from16 v46, v42

    cmpl-double v44, v44, v46

    if-gtz v44, :cond_20

    move-wide/from16 v44, v40

    move-wide/from16 v46, v8

    cmpl-double v44, v44, v46

    if-lez v44, :cond_23

    .line 5118
    :cond_20
    const-wide/high16 v44, 0x7ff8000000000000L    # NaN

    move-wide/from16 v3, v44

    goto/16 :goto_0

    .line 5114
    .end local v40    # "tzmin":D
    .end local v42    # "tzmax":D
    :cond_21
    move-wide/from16 v44, v36

    goto :goto_13

    .line 5115
    .restart local v40    # "tzmin":D
    :cond_22
    move-wide/from16 v44, v38

    goto :goto_14

    .line 5120
    .restart local v42    # "tzmax":D
    :cond_23
    move-wide/from16 v44, v40

    move-wide/from16 v46, v6

    cmpl-double v44, v44, v46

    if-lez v44, :cond_24

    .line 5121
    move-wide/from16 v44, v40

    move-wide/from16 v6, v44

    .line 5123
    :cond_24
    move-wide/from16 v44, v42

    move-wide/from16 v46, v8

    cmpg-double v44, v44, v46

    if-gez v44, :cond_3

    .line 5124
    move-wide/from16 v44, v42

    move-wide/from16 v8, v44

    goto/16 :goto_4

    .line 5148
    .end local v21    # "invDirY":D
    .end local v23    # "invDirZ":D
    .end local v25    # "signX":Z
    .end local v27    # "signZ":Z
    .end local v28    # "minX":D
    .end local v30    # "minY":D
    .end local v32    # "maxX":D
    .end local v34    # "maxY":D
    .end local v36    # "minZ":D
    .end local v38    # "maxZ":D
    .end local v40    # "tzmin":D
    .end local v42    # "tzmax":D
    .local v19, "clip":Ljavafx/scene/Node;
    .restart local v20    # "dirX":D
    .local v22, "dirY":D
    .local v24, "dirZ":D
    .local v26, "hitClip":Z
    :catch_0
    move-exception v44

    move-object/from16 v27, v44

    .line 5149
    .local v27, "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    const/16 v44, 0x0

    move/from16 v26, v44

    goto/16 :goto_5

    .line 5151
    .end local v27    # "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    :cond_25
    const/16 v44, 0x0

    goto/16 :goto_6

    .line 5160
    .end local v20    # "dirX":D
    .end local v22    # "dirY":D
    .end local v24    # "dirZ":D
    .end local v26    # "hitClip":Z
    :cond_26
    move-wide/from16 v44, v6

    invoke-static/range {v44 .. v45}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v44

    if-nez v44, :cond_27

    move-wide/from16 v44, v6

    invoke-static/range {v44 .. v45}, Ljava/lang/Double;->isNaN(D)Z

    move-result v44

    if-eqz v44, :cond_28

    .line 5162
    :cond_27
    const-wide/high16 v44, 0x7ff8000000000000L    # NaN

    move-wide/from16 v3, v44

    goto/16 :goto_0

    .line 5165
    :cond_28
    move-object/from16 v44, v4

    invoke-virtual/range {v44 .. v44}, Lcom/sun/javafx/geom/PickRay;->getNearClip()D

    move-result-wide v44

    move-wide/from16 v20, v44

    .line 5166
    .local v20, "minDistance":D
    move-object/from16 v44, v4

    invoke-virtual/range {v44 .. v44}, Lcom/sun/javafx/geom/PickRay;->getFarClip()D

    move-result-wide v44

    move-wide/from16 v22, v44

    .line 5167
    .local v22, "maxDistance":D
    move-wide/from16 v44, v6

    move-wide/from16 v46, v20

    cmpg-double v44, v44, v46

    if-gez v44, :cond_2a

    .line 5168
    move-wide/from16 v44, v8

    move-wide/from16 v46, v20

    cmpl-double v44, v44, v46

    if-ltz v44, :cond_29

    .line 5170
    const-wide/16 v44, 0x0

    move-wide/from16 v3, v44

    goto/16 :goto_0

    .line 5172
    :cond_29
    const-wide/high16 v44, 0x7ff8000000000000L    # NaN

    move-wide/from16 v3, v44

    goto/16 :goto_0

    .line 5174
    :cond_2a
    move-wide/from16 v44, v6

    move-wide/from16 v46, v22

    cmpl-double v44, v44, v46

    if-lez v44, :cond_2b

    .line 5175
    const-wide/high16 v44, 0x7ff8000000000000L    # NaN

    move-wide/from16 v3, v44

    goto/16 :goto_0

    .line 5178
    :cond_2b
    move-wide/from16 v44, v6

    move-wide/from16 v3, v44

    goto/16 :goto_0
.end method

.method protected final impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "dirtyBit":Lcom/sun/javafx/scene/DirtyBits;
    move-object v2, v0

    iget v2, v2, Ljavafx/scene/Node;->dirtyBits:I

    int-to-long v2, v2

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/DirtyBits;->getMask()J

    move-result-wide v4

    and-long/2addr v2, v4

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/Node;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method protected final impl_isDirtyEmpty()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 476
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget v1, v1, Ljavafx/scene/Node;->dirtyBits:I

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final impl_isShowMnemonics()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->impl_showMnemonics:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->impl_showMnemonics:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final impl_isTreeVisible()Z
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8033
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->impl_treeVisibleProperty()Ljavafx/beans/binding/BooleanExpression;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/binding/BooleanExpression;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return v0
.end method

.method protected final impl_layoutBoundsChanged()V
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3398
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->layoutBounds:Ljavafx/scene/Node$LazyBoundsProperty;

    invoke-static {v1}, Ljavafx/scene/Node$LazyBoundsProperty;->access$1600(Ljavafx/scene/Node$LazyBoundsProperty;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 3399
    .line 3408
    :goto_0
    return-void

    .line 3401
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->layoutBounds:Ljavafx/scene/Node$LazyBoundsProperty;

    invoke-virtual {v1}, Ljavafx/scene/Node$LazyBoundsProperty;->invalidate()V

    .line 3402
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->nodeTransformation:Ljavafx/scene/Node$NodeTransformation;

    invoke-virtual {v1}, Ljavafx/scene/Node$NodeTransformation;->hasScaleOrRotate()Z

    move-result v1

    if-nez v1, :cond_2

    :cond_1
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->hasMirroring()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 3406
    :cond_2
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->impl_transformsChanged()V

    .line 3408
    :cond_3
    goto :goto_0
.end method

.method protected impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 415
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, p1

    .local v2, "dirtyBit":Lcom/sun/javafx/scene/DirtyBits;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->impl_isDirtyEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 416
    move-object v3, v1

    invoke-direct {v3}, Ljavafx/scene/Node;->addToSceneDirtyList()V

    .line 419
    :cond_0
    move-object v3, v1

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    iget v4, v4, Ljavafx/scene/Node;->dirtyBits:I

    int-to-long v4, v4

    move-object v6, v2

    invoke-virtual {v6}, Lcom/sun/javafx/scene/DirtyBits;->getMask()J

    move-result-wide v6

    or-long/2addr v4, v6

    long-to-int v4, v4

    iput v4, v3, Ljavafx/scene/Node;->dirtyBits:I

    .line 420
    return-void
.end method

.method protected impl_notifyLayoutBoundsChanged()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 3814
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->impl_layoutBoundsChanged()V

    .line 3818
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v1, v2

    .line 3819
    .local v1, "p":Ljavafx/scene/Parent;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->isManaged()Z

    move-result v2

    if-eqz v2, :cond_1

    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    instance-of v2, v2, Ljavafx/scene/Group;

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->isResizable()Z

    move-result v2

    if-eqz v2, :cond_1

    :cond_0
    move-object v2, v1

    iget-boolean v2, v2, Ljavafx/scene/Parent;->performingLayout:Z

    if-nez v2, :cond_1

    .line 3821
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Parent;->requestLayout()V

    .line 3823
    :cond_1
    return-void
.end method

.method public final impl_pickNode(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;)V
    .locals 27
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4891
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/Node;
    move-object/from16 v3, p1

    .local v3, "pickRay":Lcom/sun/javafx/geom/PickRay;
    move-object/from16 v4, p2

    .local v4, "result":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Node;->isVisible()Z

    move-result v20

    if-eqz v20, :cond_0

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Node;->isDisable()Z

    move-result v20

    if-nez v20, :cond_0

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Node;->isMouseTransparent()Z

    move-result v20

    if-eqz v20, :cond_1

    .line 4892
    .line 4919
    :cond_0
    :goto_0
    return-void

    .line 4895
    :cond_1
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/PickRay;->getOriginNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v20

    move-object/from16 v5, v20

    .line 4896
    .local v5, "o":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v20, v0

    move-wide/from16 v6, v20

    .line 4897
    .local v6, "ox":D
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v20, v0

    move-wide/from16 v8, v20

    .line 4898
    .local v8, "oy":D
    move-object/from16 v20, v5

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v20, v0

    move-wide/from16 v10, v20

    .line 4899
    .local v10, "oz":D
    move-object/from16 v20, v3

    invoke-virtual/range {v20 .. v20}, Lcom/sun/javafx/geom/PickRay;->getDirectionNoClone()Lcom/sun/javafx/geom/Vec3d;

    move-result-object v20

    move-object/from16 v12, v20

    .line 4900
    .local v12, "d":Lcom/sun/javafx/geom/Vec3d;
    move-object/from16 v20, v12

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-wide/from16 v20, v0

    move-wide/from16 v13, v20

    .line 4901
    .local v13, "dx":D
    move-object/from16 v20, v12

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v20, v0

    move-wide/from16 v15, v20

    .line 4902
    .local v15, "dy":D
    move-object/from16 v20, v12

    move-object/from16 v0, v20

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v20, v0

    move-wide/from16 v17, v20

    .line 4904
    .local v17, "dz":D
    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Node;->updateLocalToParentTransform()V

    .line 4906
    move-object/from16 v20, v2

    :try_start_0
    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v20, v0

    move-object/from16 v21, v5

    move-object/from16 v22, v5

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/geom/transform/BaseTransform;->inverseTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v20

    .line 4907
    move-object/from16 v20, v2

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object/from16 v20, v0

    move-object/from16 v21, v12

    move-object/from16 v22, v12

    invoke-virtual/range {v20 .. v22}, Lcom/sun/javafx/geom/transform/BaseTransform;->inverseDeltaTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v20

    .line 4912
    move-object/from16 v20, v2

    move-object/from16 v21, v3

    move-object/from16 v22, v4

    invoke-virtual/range {v20 .. v22}, Ljavafx/scene/Node;->impl_pickNodeLocal(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;)V
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4915
    .line 4917
    :goto_1
    move-object/from16 v20, v3

    move-wide/from16 v21, v6

    move-wide/from16 v23, v8

    move-wide/from16 v25, v10

    invoke-virtual/range {v20 .. v26}, Lcom/sun/javafx/geom/PickRay;->setOrigin(DDD)V

    .line 4918
    move-object/from16 v20, v3

    move-wide/from16 v21, v13

    move-wide/from16 v23, v15

    move-wide/from16 v25, v17

    invoke-virtual/range {v20 .. v26}, Lcom/sun/javafx/geom/PickRay;->setDirection(DDD)V

    .line 4919
    goto/16 :goto_0

    .line 4913
    :catch_0
    move-exception v20

    move-object/from16 v19, v20

    goto :goto_1
.end method

.method protected impl_pickNodeLocal(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;)V
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4877
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "localPickRay":Lcom/sun/javafx/geom/PickRay;
    move-object v2, p2

    .local v2, "result":Lcom/sun/javafx/scene/input/PickResultChooser;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->impl_intersects(Lcom/sun/javafx/geom/PickRay;Lcom/sun/javafx/scene/input/PickResultChooser;)Z

    move-result v3

    .line 4878
    return-void
.end method

.method protected impl_processCSS(Ljavafx/beans/value/WritableValue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/WritableValue",
            "<",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 9176
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "unused":Ljavafx/beans/value/WritableValue;, "Ljavafx/beans/value/WritableValue<Ljava/lang/Boolean;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    sget-object v3, Lcom/sun/javafx/scene/CssFlags;->CLEAN:Lcom/sun/javafx/scene/CssFlags;

    if-ne v2, v3, :cond_0

    .line 9191
    :goto_0
    return-void

    .line 9179
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    sget-object v3, Lcom/sun/javafx/scene/CssFlags;->REAPPLY:Lcom/sun/javafx/scene/CssFlags;

    if-ne v2, v3, :cond_1

    .line 9180
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Node;->reapplyCss()V

    .line 9185
    :cond_1
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/CssFlags;->CLEAN:Lcom/sun/javafx/scene/CssFlags;

    iput-object v3, v2, Ljavafx/scene/Node;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    .line 9188
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    if-eqz v2, :cond_2

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 9189
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljavafx/scene/CssStyleHelper;->transitionToState(Ljavafx/scene/Node;)V

    .line 9191
    :cond_2
    goto :goto_0
.end method

.method public final impl_processCSS(Z)V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 9067
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "reapply":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->applyCss()V

    .line 9068
    return-void
.end method

.method public abstract impl_processMXNode(Lcom/sun/javafx/jmx/MXNodeAlgorithm;Lcom/sun/javafx/jmx/MXNodeAlgorithmContext;)Ljava/lang/Object;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end method

.method public final impl_reapplyCSS()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8935
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v1

    if-nez v1, :cond_0

    .line 8963
    :goto_0
    return-void

    .line 8937
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    sget-object v2, Lcom/sun/javafx/scene/CssFlags;->REAPPLY:Lcom/sun/javafx/scene/CssFlags;

    if-ne v1, v2, :cond_1

    goto :goto_0

    .line 8940
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    sget-object v2, Lcom/sun/javafx/scene/CssFlags;->UPDATE:Lcom/sun/javafx/scene/CssFlags;

    if-ne v1, v2, :cond_2

    .line 8941
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/CssFlags;->REAPPLY:Lcom/sun/javafx/scene/CssFlags;

    iput-object v2, v1, Ljavafx/scene/Node;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    .line 8942
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->notifyParentsOfInvalidatedCSS()V

    .line 8943
    goto :goto_0

    .line 8946
    :cond_2
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->reapplyCss()V

    .line 8957
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v1

    if-eqz v1, :cond_3

    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v1

    iget-boolean v1, v1, Ljavafx/scene/Parent;->performingLayout:Z

    if-eqz v1, :cond_3

    .line 8958
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Ljavafx/scene/Node;->impl_processCSS(Ljavafx/beans/value/WritableValue;)V

    .line 8963
    :goto_1
    goto :goto_0

    .line 8960
    :cond_3
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->notifyParentsOfInvalidatedCSS()V

    goto :goto_1
.end method

.method public final impl_setShowMnemonics(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8133
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->impl_showMnemonicsProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 8134
    return-void
.end method

.method public final impl_setStyleMap(Ljavafx/collections/ObservableMap;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/collections/ObservableMap",
            "<",
            "Ljavafx/css/StyleableProperty",
            "<*>;",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/css/Style;",
            ">;>;)V"
        }
    .end annotation

    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8790
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "styleMap":Ljavafx/collections/ObservableMap;, "Ljavafx/collections/ObservableMap<Ljavafx/css/StyleableProperty<*>;Ljava/util/List<Lcom/sun/javafx/css/Style;>;>;"
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    const-string v3, "STYLEMAP"

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 8792
    :goto_0
    return-void

    .line 8791
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    const-string v3, "STYLEMAP"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method

.method public final impl_showMnemonicsProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8151
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->impl_showMnemonics:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 8152
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$17;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Node$17;-><init>(Ljavafx/scene/Node;Z)V

    iput-object v2, v1, Ljavafx/scene/Node;->impl_showMnemonics:Ljavafx/beans/property/BooleanProperty;

    .line 8170
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->impl_showMnemonics:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final impl_syncPeer()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 499
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->impl_isDirtyEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Node;->treeVisible:Z

    if-nez v1, :cond_0

    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_VISIBLE:Lcom/sun/javafx/scene/DirtyBits;

    .line 500
    invoke-virtual {v1, v2}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_FORCE_SYNC:Lcom/sun/javafx/scene/DirtyBits;

    .line 501
    invoke-virtual {v1, v2}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 503
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->impl_updatePeer()V

    .line 504
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->clearDirty()V

    .line 506
    :cond_1
    return-void
.end method

.method public impl_transformsChanged()V
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 4690
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Node;->transformDirty:Z

    if-nez v1, :cond_0

    .line 4691
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_TRANSFORM:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/Node;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 4692
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/Node;->transformDirty:Z

    .line 4693
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->transformedBoundsChanged()V

    .line 4695
    :cond_0
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->invalidateLocalToParentTransform()V

    .line 4696
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->invalidateLocalToSceneTransform()V

    .line 4697
    return-void
.end method

.method public final impl_traverse(Lcom/sun/javafx/scene/traversal/Direction;)Z
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 7894
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "dir":Lcom/sun/javafx/scene/traversal/Direction;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    if-nez v2, :cond_0

    .line 7895
    const/4 v2, 0x0

    move v0, v2

    .line 7897
    .end local v0    # "this":Ljavafx/scene/Node;
    :goto_0
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Scene;->traverse(Ljavafx/scene/Node;Lcom/sun/javafx/scene/traversal/Direction;)Z

    move-result v2

    move v0, v2

    goto :goto_0
.end method

.method protected final impl_treeVisibleProperty()Ljavafx/beans/binding/BooleanExpression;
    .locals 6
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 8042
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->treeVisibleRO:Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;

    if-nez v1, :cond_0

    .line 8043
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;-><init>(Ljavafx/scene/Node;)V

    iput-object v2, v1, Ljavafx/scene/Node;->treeVisibleRO:Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;

    .line 8045
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->treeVisibleRO:Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public impl_updatePeer()V
    .locals 13
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 580
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/Node;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v5

    move-object v2, v5

    .line 589
    .local v2, "peer":Lcom/sun/javafx/sg/prism/NGNode;
    sget-boolean v5, Lcom/sun/prism/impl/PrismSettings;->printRenderGraph:Z

    if-eqz v5, :cond_1

    move-object v5, v1

    sget-object v6, Lcom/sun/javafx/scene/DirtyBits;->DEBUG:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 590
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/Node;->getId()Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 591
    .local v3, "id":Ljava/lang/String;
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 592
    .local v4, "className":Ljava/lang/String;
    move-object v5, v4

    invoke-virtual {v5}, Ljava/lang/String;->isEmpty()Z

    move-result v5

    if-eqz v5, :cond_0

    .line 593
    move-object v5, v1

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v5

    move-object v4, v5

    .line 595
    :cond_0
    move-object v5, v2

    move-object v6, v3

    if-nez v6, :cond_d

    move-object v6, v4

    :goto_0
    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/NGNode;->setName(Ljava/lang/String;)V

    .line 598
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "className":Ljava/lang/String;
    :cond_1
    move-object v5, v1

    sget-object v6, Lcom/sun/javafx/scene/DirtyBits;->NODE_TRANSFORM:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 599
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/NGNode;->setTransformMatrix(Lcom/sun/javafx/geom/transform/BaseTransform;)V

    .line 602
    :cond_2
    move-object v5, v1

    sget-object v6, Lcom/sun/javafx/scene/DirtyBits;->NODE_BOUNDS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 603
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/Node;->_geomBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/NGNode;->setContentBounds(Lcom/sun/javafx/geom/BaseBounds;)V

    .line 606
    :cond_3
    move-object v5, v1

    sget-object v6, Lcom/sun/javafx/scene/DirtyBits;->NODE_TRANSFORMED_BOUNDS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v5

    if-eqz v5, :cond_4

    .line 607
    move-object v5, v2

    move-object v6, v1

    iget-object v6, v6, Ljavafx/scene/Node;->_txBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object v7, v1

    sget-object v8, Lcom/sun/javafx/scene/DirtyBits;->NODE_BOUNDS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v7, v8}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v7

    if-nez v7, :cond_e

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/sg/prism/NGNode;->setTransformedBounds(Lcom/sun/javafx/geom/BaseBounds;Z)V

    .line 610
    :cond_4
    move-object v5, v1

    sget-object v6, Lcom/sun/javafx/scene/DirtyBits;->NODE_OPACITY:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v5

    if-eqz v5, :cond_5

    .line 611
    move-object v5, v2

    const-wide/16 v6, 0x0

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/Node;->getOpacity()D

    move-result-wide v8

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v6 .. v11}, Lcom/sun/javafx/util/Utils;->clamp(DDD)D

    move-result-wide v6

    double-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/NGNode;->setOpacity(F)V

    .line 614
    :cond_5
    move-object v5, v1

    sget-object v6, Lcom/sun/javafx/scene/DirtyBits;->NODE_CACHE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 615
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Node;->isCache()Z

    move-result v6

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/scene/Node;->getCacheHint()Ljavafx/scene/CacheHint;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/sg/prism/NGNode;->setCachedAsBitmap(ZLjavafx/scene/CacheHint;)V

    .line 618
    :cond_6
    move-object v5, v1

    sget-object v6, Lcom/sun/javafx/scene/DirtyBits;->NODE_CLIP:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v5

    if-eqz v5, :cond_7

    .line 619
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Node;->getClip()Ljavafx/scene/Node;

    move-result-object v6

    if-eqz v6, :cond_f

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Node;->getClip()Ljavafx/scene/Node;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/Node;->impl_getPeer()Lcom/sun/javafx/sg/prism/NGNode;

    move-result-object v6

    :goto_2
    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/NGNode;->setClipNode(Lcom/sun/javafx/sg/prism/NGNode;)V

    .line 622
    :cond_7
    move-object v5, v1

    sget-object v6, Lcom/sun/javafx/scene/DirtyBits;->EFFECT_EFFECT:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v5

    if-eqz v5, :cond_8

    .line 623
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/Node;->getEffect()Ljavafx/scene/effect/Effect;

    move-result-object v5

    if-eqz v5, :cond_8

    .line 624
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/Node;->getEffect()Ljavafx/scene/effect/Effect;

    move-result-object v5

    invoke-virtual {v5}, Ljavafx/scene/effect/Effect;->impl_sync()V

    .line 625
    move-object v5, v2

    invoke-virtual {v5}, Lcom/sun/javafx/sg/prism/NGNode;->effectChanged()V

    .line 629
    :cond_8
    move-object v5, v1

    sget-object v6, Lcom/sun/javafx/scene/DirtyBits;->NODE_EFFECT:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v5

    if-eqz v5, :cond_9

    .line 630
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Node;->getEffect()Ljavafx/scene/effect/Effect;

    move-result-object v6

    if-eqz v6, :cond_10

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Node;->getEffect()Ljavafx/scene/effect/Effect;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/scene/effect/Effect;->impl_getImpl()Lcom/sun/scenario/effect/Effect;

    move-result-object v6

    :goto_3
    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/NGNode;->setEffect(Lcom/sun/scenario/effect/Effect;)V

    .line 633
    :cond_9
    move-object v5, v1

    sget-object v6, Lcom/sun/javafx/scene/DirtyBits;->NODE_VISIBLE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v5

    if-eqz v5, :cond_a

    .line 634
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Node;->isVisible()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/NGNode;->setVisible(Z)V

    .line 637
    :cond_a
    move-object v5, v1

    sget-object v6, Lcom/sun/javafx/scene/DirtyBits;->NODE_DEPTH_TEST:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v5

    if-eqz v5, :cond_b

    .line 638
    move-object v5, v2

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Node;->isDerivedDepthTest()Z

    move-result v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/NGNode;->setDepthTest(Z)V

    .line 641
    :cond_b
    move-object v5, v1

    sget-object v6, Lcom/sun/javafx/scene/DirtyBits;->NODE_BLENDMODE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v5

    if-eqz v5, :cond_c

    .line 642
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/Node;->getBlendMode()Ljavafx/scene/effect/BlendMode;

    move-result-object v5

    move-object v3, v5

    .line 643
    .local v3, "mode":Ljavafx/scene/effect/BlendMode;
    move-object v5, v2

    move-object v6, v3

    if-nez v6, :cond_11

    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v5, v6}, Lcom/sun/javafx/sg/prism/NGNode;->setNodeBlendMode(Lcom/sun/scenario/effect/Blend$Mode;)V

    .line 647
    .end local v3    # "mode":Ljavafx/scene/effect/BlendMode;
    :cond_c
    return-void

    .line 595
    .local v3, "id":Ljava/lang/String;
    .restart local v4    # "className":Ljava/lang/String;
    :cond_d
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, "("

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    move-object v7, v4

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_0

    .line 607
    .end local v3    # "id":Ljava/lang/String;
    .end local v4    # "className":Ljava/lang/String;
    :cond_e
    const/4 v7, 0x0

    goto/16 :goto_1

    .line 619
    :cond_f
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 630
    :cond_10
    const/4 v6, 0x0

    goto :goto_3

    .line 643
    .local v3, "mode":Ljavafx/scene/effect/BlendMode;
    :cond_11
    move-object v6, v3

    .line 645
    invoke-static {v6}, Ljavafx/scene/effect/Blend;->impl_getToolkitMode(Ljavafx/scene/effect/BlendMode;)Lcom/sun/scenario/effect/Blend$Mode;

    move-result-object v6

    goto :goto_4
.end method

.method indent()Ljava/lang/String;
    .locals 6

    .prologue
    .line 8106
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    const-string v3, ""

    move-object v1, v3

    .line 8107
    .local v1, "indent":Ljava/lang/String;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v3

    move-object v2, v3

    .line 8108
    .local v2, "p":Ljavafx/scene/Parent;
    :goto_0
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 8109
    new-instance v3, Ljava/lang/StringBuilder;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "  "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object v1, v3

    .line 8110
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Parent;->getParent()Ljavafx/scene/Parent;

    move-result-object v3

    move-object v2, v3

    goto :goto_0

    .line 8112
    :cond_0
    move-object v3, v1

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final inputMethodRequestsProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/input/InputMethodRequests;",
            ">;"
        }
    .end annotation

    .prologue
    .line 7683
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getMiscProperties()Ljavafx/scene/Node$MiscProperties;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->inputMethodRequestsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public intersects(DDDD)Z
    .locals 17

    .prologue
    .line 3926
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-wide/from16 v2, p1

    .local v2, "localX":D
    move-wide/from16 v4, p3

    .local v4, "localY":D
    move-wide/from16 v6, p5

    .local v6, "localWidth":D
    move-wide/from16 v8, p7

    .local v8, "localHeight":D
    invoke-static {}, Lcom/sun/javafx/util/TempState;->getInstance()Lcom/sun/javafx/util/TempState;

    move-result-object v11

    iget-object v11, v11, Lcom/sun/javafx/util/TempState;->bounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object v10, v11

    .line 3927
    .local v10, "tempBounds":Lcom/sun/javafx/geom/BaseBounds;
    move-object v11, v1

    move-object v12, v10

    sget-object v13, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v11, v12, v13}, Ljavafx/scene/Node;->getLocalBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v11

    move-object v10, v11

    .line 3929
    move-object v11, v10

    move-wide v12, v2

    double-to-float v12, v12

    move-wide v13, v4

    double-to-float v13, v13

    move-wide v14, v6

    double-to-float v14, v14

    move-wide v15, v8

    double-to-float v15, v15

    invoke-virtual {v11, v12, v13, v14, v15}, Lcom/sun/javafx/geom/BaseBounds;->intersects(FFFF)Z

    move-result v11

    move v1, v11

    .end local v1    # "this":Ljavafx/scene/Node;
    return v1
.end method

.method public intersects(Ljavafx/geometry/Bounds;)Z
    .locals 12

    .prologue
    .line 3944
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, p1

    .local v2, "localBounds":Ljavafx/geometry/Bounds;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v10

    invoke-virtual/range {v3 .. v11}, Ljavafx/scene/Node;->intersects(DDDD)Z

    move-result v3

    move v1, v3

    .end local v1    # "this":Ljavafx/scene/Node;
    return v1
.end method

.method public final isCache()Z
    .locals 2

    .prologue
    .line 1364
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1365
    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return v0

    .line 1364
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    .line 1365
    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->isCache()Z

    move-result v1

    goto :goto_0
.end method

.method final isCanReceiveFocus()Z
    .locals 2

    .prologue
    .line 8095
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Node;->canReceiveFocus:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return v0
.end method

.method isConnected()Z
    .locals 2

    .prologue
    .line 2264
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->clipParent:Ljavafx/scene/Node;

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isDerivedDepthTest()Z
    .locals 2

    .prologue
    .line 1560
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Node;->derivedDepthTest:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return v0
.end method

.method public final isDisable()Z
    .locals 2

    .prologue
    .line 1568
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 1569
    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return v0

    .line 1568
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    .line 1569
    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->isDisable()Z

    move-result v1

    goto :goto_0
.end method

.method public final isDisabled()Z
    .locals 2

    .prologue
    .line 1646
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->disabled:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->disabled:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isFocusTraversable()Z
    .locals 2

    .prologue
    .line 7812
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->focusTraversable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->focusTraversable:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isFocused()Z
    .locals 2

    .prologue
    .line 7776
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->focused:Ljavafx/scene/Node$FocusedProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->focused:Ljavafx/scene/Node$FocusedProperty;

    invoke-virtual {v1}, Ljavafx/scene/Node$FocusedProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isHover()Z
    .locals 2

    .prologue
    .line 6893
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->hover:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->hover:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isManaged()Z
    .locals 2

    .prologue
    .line 2393
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->managed:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->managed:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isMouseTransparent()Z
    .locals 2

    .prologue
    .line 6859
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    .line 6860
    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return v0

    .line 6859
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->miscProperties:Ljavafx/scene/Node$MiscProperties;

    .line 6860
    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->isMouseTransparent()Z

    move-result v1

    goto :goto_0
.end method

.method public final isPickOnBounds()Z
    .locals 2

    .prologue
    .line 1610
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->pickOnBounds:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->pickOnBounds:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isPressed()Z
    .locals 2

    .prologue
    .line 6941
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->pressed:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->pressed:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public isResizable()Z
    .locals 2

    .prologue
    .line 2627
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    const/4 v1, 0x0

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return v0
.end method

.method public final isVisible()Z
    .locals 2

    .prologue
    .line 1142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->visible:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return v0

    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->visible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final layoutBoundsProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/geometry/Bounds;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3242
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->layoutBounds:Ljavafx/scene/Node$LazyBoundsProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final layoutXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 2471
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->layoutX:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 2472
    move-object v2, v1

    new-instance v3, Ljavafx/scene/Node$10;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/Node$10;-><init>(Ljavafx/scene/Node;D)V

    iput-object v3, v2, Ljavafx/scene/Node;->layoutX:Ljavafx/beans/property/DoubleProperty;

    .line 2501
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->layoutX:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/Node;
    return-object v1
.end method

.method public final layoutYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 2543
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->layoutY:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 2544
    move-object v2, v1

    new-instance v3, Ljavafx/scene/Node$11;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/Node$11;-><init>(Ljavafx/scene/Node;D)V

    iput-object v3, v2, Ljavafx/scene/Node;->layoutY:Ljavafx/beans/property/DoubleProperty;

    .line 2574
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->layoutY:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/Node;
    return-object v1
.end method

.method localBoundsChanged()V
    .locals 3

    .prologue
    .line 3778
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/Node;->localBoundsInvalid:Z

    .line 3779
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->invalidateBoundsInLocal()V

    .line 3780
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->transformedBoundsChanged()V

    .line 3781
    return-void
.end method

.method public localToParent(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;
    .locals 19

    .prologue
    .line 4643
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object/from16 v2, p1

    .local v2, "localBounds":Ljavafx/geometry/Bounds;
    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/Node;->updateLocalToParentTransform()V

    .line 4644
    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v11}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_0

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_0

    .line 4645
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/Node;->localToParent(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v3, v11

    .line 4646
    .local v3, "p1":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/Node;->localToParent(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v4, v11

    .line 4647
    .local v4, "p2":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/Node;->localToParent(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v5, v11

    .line 4648
    .local v5, "p3":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/Node;->localToParent(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v6, v11

    .line 4650
    .local v6, "p4":Ljavafx/geometry/Point2D;
    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    invoke-static {v11, v12, v13, v14}, Lcom/sun/javafx/geometry/BoundsUtils;->createBoundingBox(Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;)Ljavafx/geometry/Bounds;

    move-result-object v11

    move-object v1, v11

    .line 4660
    .end local v1    # "this":Ljavafx/scene/Node;
    .end local v3    # "p1":Ljavafx/geometry/Point2D;
    .end local v4    # "p2":Ljavafx/geometry/Point2D;
    .end local v5    # "p3":Ljavafx/geometry/Point2D;
    .end local v6    # "p4":Ljavafx/geometry/Point2D;
    :goto_0
    return-object v1

    .line 4652
    .restart local v1    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToParent(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v3, v11

    .line 4653
    .local v3, "p1":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToParent(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v4, v11

    .line 4654
    .local v4, "p2":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToParent(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v5, v11

    .line 4655
    .local v5, "p3":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToParent(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v6, v11

    .line 4656
    .local v6, "p4":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToParent(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v7, v11

    .line 4657
    .local v7, "p5":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToParent(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v8, v11

    .line 4658
    .local v8, "p6":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToParent(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v9, v11

    .line 4659
    .local v9, "p7":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToParent(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v10, v11

    .line 4660
    .local v10, "p8":Ljavafx/geometry/Point3D;
    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    invoke-static/range {v11 .. v18}, Lcom/sun/javafx/geometry/BoundsUtils;->createBoundingBox(Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;)Ljavafx/geometry/Bounds;

    move-result-object v11

    move-object v1, v11

    goto/16 :goto_0
.end method

.method public localToParent(DD)Ljavafx/geometry/Point2D;
    .locals 13

    .prologue
    .line 4600
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-wide v1, p1

    .local v1, "localX":D
    move-wide/from16 v3, p3

    .local v3, "localY":D
    invoke-static {}, Lcom/sun/javafx/util/TempState;->getInstance()Lcom/sun/javafx/util/TempState;

    move-result-object v6

    iget-object v6, v6, Lcom/sun/javafx/util/TempState;->point:Lcom/sun/javafx/geom/Point2D;

    move-object v5, v6

    .line 4601
    .local v5, "tempPt":Lcom/sun/javafx/geom/Point2D;
    move-object v6, v5

    move-wide v7, v1

    double-to-float v7, v7

    move-wide v8, v3

    double-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 4602
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljavafx/scene/Node;->localToParent(Lcom/sun/javafx/geom/Point2D;)V

    .line 4603
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v5

    iget v8, v8, Lcom/sun/javafx/geom/Point2D;->x:F

    float-to-double v8, v8

    move-object v10, v5

    iget v10, v10, Lcom/sun/javafx/geom/Point2D;->y:F

    float-to-double v10, v10

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v0, v6

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public localToParent(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;
    .locals 8

    .prologue
    .line 4611
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, p1

    .local v2, "localPoint":Ljavafx/geometry/Point2D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/Node;->localToParent(DD)Ljavafx/geometry/Point2D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/Node;
    return-object v1
.end method

.method public localToParent(DDD)Ljavafx/geometry/Point3D;
    .locals 19

    .prologue
    .line 4630
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    invoke-static {}, Lcom/sun/javafx/util/TempState;->getInstance()Lcom/sun/javafx/util/TempState;

    move-result-object v9

    iget-object v9, v9, Lcom/sun/javafx/util/TempState;->vec3d:Lcom/sun/javafx/geom/Vec3d;

    move-object v8, v9

    .line 4631
    .local v8, "tempV3D":Lcom/sun/javafx/geom/Vec3d;
    move-object v9, v8

    move-wide v10, v2

    move-wide v12, v4

    move-wide v14, v6

    invoke-virtual/range {v9 .. v15}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 4632
    move-object v9, v1

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljavafx/scene/Node;->localToParent(Lcom/sun/javafx/geom/Vec3d;)V

    .line 4633
    new-instance v9, Ljavafx/geometry/Point3D;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v8

    iget-wide v11, v11, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-object v13, v8

    iget-wide v13, v13, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-object v15, v8

    iget-wide v15, v15, Lcom/sun/javafx/geom/Vec3d;->z:D

    invoke-direct/range {v10 .. v16}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v9

    .end local v1    # "this":Ljavafx/scene/Node;
    return-object v1
.end method

.method public localToParent(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;
    .locals 10

    .prologue
    .line 4620
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, p1

    .local v2, "localPoint":Ljavafx/geometry/Point3D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/Node;->localToParent(DDD)Ljavafx/geometry/Point3D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/Node;
    return-object v1
.end method

.method localToParent(Lcom/sun/javafx/geom/Point2D;)V
    .locals 5

    .prologue
    .line 4859
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "pt":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->updateLocalToParentTransform()V

    .line 4860
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v2

    .line 4861
    return-void
.end method

.method localToParent(Lcom/sun/javafx/geom/Vec3d;)V
    .locals 5

    .prologue
    .line 4864
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "pt":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->updateLocalToParentTransform()V

    .line 4865
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->transform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v2

    .line 4866
    return-void
.end method

.method public final localToParentTransformProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/transform/Transform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5449
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getNodeTransformation()Ljavafx/scene/Node$NodeTransformation;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$NodeTransformation;->localToParentTransformProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public localToScene(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;
    .locals 19

    .prologue
    .line 4496
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object/from16 v2, p1

    .local v2, "localBounds":Ljavafx/geometry/Bounds;
    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/Node;->updateLocalToParentTransform()V

    .line 4497
    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v11}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_0

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_0

    .line 4498
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/Node;->localToScene(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v3, v11

    .line 4499
    .local v3, "p1":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/Node;->localToScene(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v4, v11

    .line 4500
    .local v4, "p2":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/Node;->localToScene(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v5, v11

    .line 4501
    .local v5, "p3":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/Node;->localToScene(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v6, v11

    .line 4503
    .local v6, "p4":Ljavafx/geometry/Point2D;
    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    invoke-static {v11, v12, v13, v14}, Lcom/sun/javafx/geometry/BoundsUtils;->createBoundingBox(Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;)Ljavafx/geometry/Bounds;

    move-result-object v11

    move-object v1, v11

    .line 4513
    .end local v1    # "this":Ljavafx/scene/Node;
    .end local v3    # "p1":Ljavafx/geometry/Point2D;
    .end local v4    # "p2":Ljavafx/geometry/Point2D;
    .end local v5    # "p3":Ljavafx/geometry/Point2D;
    .end local v6    # "p4":Ljavafx/geometry/Point2D;
    :goto_0
    return-object v1

    .line 4505
    .restart local v1    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToScene(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v3, v11

    .line 4506
    .local v3, "p1":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToScene(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v4, v11

    .line 4507
    .local v4, "p2":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToScene(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v5, v11

    .line 4508
    .local v5, "p3":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToScene(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v6, v11

    .line 4509
    .local v6, "p4":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToScene(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v7, v11

    .line 4510
    .local v7, "p5":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToScene(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v8, v11

    .line 4511
    .local v8, "p6":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToScene(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v9, v11

    .line 4512
    .local v9, "p7":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToScene(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v10, v11

    .line 4513
    .local v10, "p8":Ljavafx/geometry/Point3D;
    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    invoke-static/range {v11 .. v18}, Lcom/sun/javafx/geometry/BoundsUtils;->createBoundingBox(Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;)Ljavafx/geometry/Bounds;

    move-result-object v11

    move-object v1, v11

    goto/16 :goto_0
.end method

.method public localToScene(Ljavafx/geometry/Bounds;Z)Ljavafx/geometry/Bounds;
    .locals 19

    .prologue
    .line 4470
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object/from16 v1, p1

    .local v1, "localBounds":Ljavafx/geometry/Bounds;
    move/from16 v2, p2

    .local v2, "rootScene":Z
    move v11, v2

    if-nez v11, :cond_0

    .line 4471
    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v11, v12}, Ljavafx/scene/Node;->localToScene(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v11

    move-object v0, v11

    .line 4481
    .end local v0    # "this":Ljavafx/scene/Node;
    :goto_0
    return-object v0

    .line 4473
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    const/16 v18, 0x1

    invoke-virtual/range {v11 .. v18}, Ljavafx/scene/Node;->localToScene(DDDZ)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v3, v11

    .line 4474
    .local v3, "p1":Ljavafx/geometry/Point3D;
    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    const/16 v18, 0x1

    invoke-virtual/range {v11 .. v18}, Ljavafx/scene/Node;->localToScene(DDDZ)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v4, v11

    .line 4475
    .local v4, "p2":Ljavafx/geometry/Point3D;
    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    const/16 v18, 0x1

    invoke-virtual/range {v11 .. v18}, Ljavafx/scene/Node;->localToScene(DDDZ)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v5, v11

    .line 4476
    .local v5, "p3":Ljavafx/geometry/Point3D;
    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    const/16 v18, 0x1

    invoke-virtual/range {v11 .. v18}, Ljavafx/scene/Node;->localToScene(DDDZ)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v6, v11

    .line 4477
    .local v6, "p4":Ljavafx/geometry/Point3D;
    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    const/16 v18, 0x1

    invoke-virtual/range {v11 .. v18}, Ljavafx/scene/Node;->localToScene(DDDZ)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v7, v11

    .line 4478
    .local v7, "p5":Ljavafx/geometry/Point3D;
    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    const/16 v18, 0x1

    invoke-virtual/range {v11 .. v18}, Ljavafx/scene/Node;->localToScene(DDDZ)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v8, v11

    .line 4479
    .local v8, "p6":Ljavafx/geometry/Point3D;
    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    const/16 v18, 0x1

    invoke-virtual/range {v11 .. v18}, Ljavafx/scene/Node;->localToScene(DDDZ)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v9, v11

    .line 4480
    .local v9, "p7":Ljavafx/geometry/Point3D;
    move-object v11, v0

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    const/16 v18, 0x1

    invoke-virtual/range {v11 .. v18}, Ljavafx/scene/Node;->localToScene(DDDZ)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v10, v11

    .line 4481
    .local v10, "p8":Ljavafx/geometry/Point3D;
    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    invoke-static/range {v11 .. v18}, Lcom/sun/javafx/geometry/BoundsUtils;->createBoundingBox(Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;)Ljavafx/geometry/Bounds;

    move-result-object v11

    move-object v0, v11

    goto/16 :goto_0
.end method

.method public localToScene(DD)Ljavafx/geometry/Point2D;
    .locals 13

    .prologue
    .line 4323
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-wide v1, p1

    .local v1, "localX":D
    move-wide/from16 v3, p3

    .local v3, "localY":D
    invoke-static {}, Lcom/sun/javafx/util/TempState;->getInstance()Lcom/sun/javafx/util/TempState;

    move-result-object v6

    iget-object v6, v6, Lcom/sun/javafx/util/TempState;->point:Lcom/sun/javafx/geom/Point2D;

    move-object v5, v6

    .line 4324
    .local v5, "tempPt":Lcom/sun/javafx/geom/Point2D;
    move-object v6, v5

    move-wide v7, v1

    double-to-float v7, v7

    move-wide v8, v3

    double-to-float v8, v8

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 4325
    move-object v6, v0

    move-object v7, v5

    invoke-virtual {v6, v7}, Ljavafx/scene/Node;->localToScene(Lcom/sun/javafx/geom/Point2D;)V

    .line 4326
    new-instance v6, Ljavafx/geometry/Point2D;

    move-object v12, v6

    move-object v6, v12

    move-object v7, v12

    move-object v8, v5

    iget v8, v8, Lcom/sun/javafx/geom/Point2D;->x:F

    float-to-double v8, v8

    move-object v10, v5

    iget v10, v10, Lcom/sun/javafx/geom/Point2D;->y:F

    float-to-double v10, v10

    invoke-direct {v7, v8, v9, v10, v11}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v0, v6

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public localToScene(DDZ)Ljavafx/geometry/Point2D;
    .locals 15

    .prologue
    .line 4452
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move/from16 v6, p5

    .local v6, "rootScene":Z
    move-object v7, v1

    new-instance v8, Ljavafx/geometry/Point2D;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-wide v10, v2

    move-wide v12, v4

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move v9, v6

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/Node;->localToScene(Ljavafx/geometry/Point2D;Z)Ljavafx/geometry/Point2D;

    move-result-object v7

    move-object v1, v7

    .end local v1    # "this":Ljavafx/scene/Node;
    return-object v1
.end method

.method public localToScene(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;
    .locals 8

    .prologue
    .line 4338
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, p1

    .local v2, "localPoint":Ljavafx/geometry/Point2D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/Node;->localToScene(DD)Ljavafx/geometry/Point2D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/Node;
    return-object v1
.end method

.method public localToScene(Ljavafx/geometry/Point2D;Z)Ljavafx/geometry/Point2D;
    .locals 14

    .prologue
    .line 4429
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, p1

    .local v2, "localPoint":Ljavafx/geometry/Point2D;
    move/from16 v3, p2

    .local v3, "rootScene":Z
    move v5, v3

    if-nez v5, :cond_0

    .line 4430
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->localToScene(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v5

    move-object v1, v5

    .line 4433
    .end local v1    # "this":Ljavafx/scene/Node;
    :goto_0
    return-object v1

    .line 4432
    .restart local v1    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v5, v1

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v8

    const-wide/16 v10, 0x0

    move v12, v3

    invoke-virtual/range {v5 .. v12}, Ljavafx/scene/Node;->localToScene(DDDZ)Ljavafx/geometry/Point3D;

    move-result-object v5

    move-object v4, v5

    .line 4433
    .local v4, "pt":Ljavafx/geometry/Point3D;
    new-instance v5, Ljavafx/geometry/Point2D;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    move-object v7, v4

    invoke-virtual {v7}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v7

    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v9

    invoke-direct {v6, v7, v8, v9, v10}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v5

    goto :goto_0
.end method

.method public localToScene(DDD)Ljavafx/geometry/Point3D;
    .locals 19

    .prologue
    .line 4363
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    invoke-static {}, Lcom/sun/javafx/util/TempState;->getInstance()Lcom/sun/javafx/util/TempState;

    move-result-object v9

    iget-object v9, v9, Lcom/sun/javafx/util/TempState;->vec3d:Lcom/sun/javafx/geom/Vec3d;

    move-object v8, v9

    .line 4364
    .local v8, "tempV3D":Lcom/sun/javafx/geom/Vec3d;
    move-object v9, v8

    move-wide v10, v2

    move-wide v12, v4

    move-wide v14, v6

    invoke-virtual/range {v9 .. v15}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 4365
    move-object v9, v1

    move-object v10, v8

    invoke-virtual {v9, v10}, Ljavafx/scene/Node;->localToScene(Lcom/sun/javafx/geom/Vec3d;)V

    .line 4366
    new-instance v9, Ljavafx/geometry/Point3D;

    move-object/from16 v17, v9

    move-object/from16 v9, v17

    move-object/from16 v10, v17

    move-object v11, v8

    iget-wide v11, v11, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-object v13, v8

    iget-wide v13, v13, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-object v15, v8

    iget-wide v15, v15, Lcom/sun/javafx/geom/Vec3d;->z:D

    invoke-direct/range {v10 .. v16}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v1, v9

    .end local v1    # "this":Ljavafx/scene/Node;
    return-object v1
.end method

.method public localToScene(DDDZ)Ljavafx/geometry/Point3D;
    .locals 19

    .prologue
    .line 4411
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-wide/from16 v6, p5

    .local v6, "z":D
    move/from16 v8, p7

    .local v8, "rootScene":Z
    move-object v9, v1

    new-instance v10, Ljavafx/geometry/Point3D;

    move-object/from16 v18, v10

    move-object/from16 v10, v18

    move-object/from16 v11, v18

    move-wide v12, v2

    move-wide v14, v4

    move-wide/from16 v16, v6

    invoke-direct/range {v11 .. v17}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move v11, v8

    invoke-virtual {v9, v10, v11}, Ljavafx/scene/Node;->localToScene(Ljavafx/geometry/Point3D;Z)Ljavafx/geometry/Point3D;

    move-result-object v9

    move-object v1, v9

    .end local v1    # "this":Ljavafx/scene/Node;
    return-object v1
.end method

.method public localToScene(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;
    .locals 10

    .prologue
    .line 4350
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, p1

    .local v2, "localPoint":Ljavafx/geometry/Point3D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/Node;->localToScene(DDD)Ljavafx/geometry/Point3D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/Node;
    return-object v1
.end method

.method public localToScene(Ljavafx/geometry/Point3D;Z)Ljavafx/geometry/Point3D;
    .locals 7

    .prologue
    .line 4384
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "localPoint":Ljavafx/geometry/Point3D;
    move v2, p2

    .local v2, "rootScene":Z
    move-object v5, v0

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->localToScene(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;

    move-result-object v5

    move-object v3, v5

    .line 4385
    .local v3, "pt":Ljavafx/geometry/Point3D;
    move v5, v2

    if-eqz v5, :cond_0

    .line 4386
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v5

    move-object v4, v5

    .line 4387
    .local v4, "subScene":Ljavafx/scene/SubScene;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 4388
    move-object v5, v4

    move-object v6, v3

    invoke-static {v5, v6}, Lcom/sun/javafx/scene/SceneUtils;->subSceneToScene(Ljavafx/scene/SubScene;Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;

    move-result-object v5

    move-object v3, v5

    .line 4391
    .end local v4    # "subScene":Ljavafx/scene/SubScene;
    :cond_0
    move-object v5, v3

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method localToScene(Lcom/sun/javafx/geom/Point2D;)V
    .locals 4

    .prologue
    .line 4835
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "pt":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->localToParent(Lcom/sun/javafx/geom/Point2D;)V

    .line 4836
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4837
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/Parent;->localToScene(Lcom/sun/javafx/geom/Point2D;)V

    .line 4839
    :cond_0
    return-void
.end method

.method localToScene(Lcom/sun/javafx/geom/Vec3d;)V
    .locals 4

    .prologue
    .line 4842
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "pt":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->localToParent(Lcom/sun/javafx/geom/Vec3d;)V

    .line 4843
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4844
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/Parent;->localToScene(Lcom/sun/javafx/geom/Vec3d;)V

    .line 4846
    :cond_0
    return-void
.end method

.method public final localToSceneTransformProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/transform/Transform;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5480
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getNodeTransformation()Ljavafx/scene/Node$NodeTransformation;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$NodeTransformation;->localToSceneTransformProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public localToScreen(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;
    .locals 19

    .prologue
    .line 4300
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object/from16 v2, p1

    .local v2, "localBounds":Ljavafx/geometry/Bounds;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToScreen(DDD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v3, v11

    .line 4301
    .local v3, "p1":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToScreen(DDD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v4, v11

    .line 4302
    .local v4, "p2":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToScreen(DDD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v5, v11

    .line 4303
    .local v5, "p3":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToScreen(DDD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v6, v11

    .line 4304
    .local v6, "p4":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToScreen(DDD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v7, v11

    .line 4305
    .local v7, "p5":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToScreen(DDD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v8, v11

    .line 4306
    .local v8, "p6":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToScreen(DDD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v9, v11

    .line 4307
    .local v9, "p7":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->localToScreen(DDD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v10, v11

    .line 4309
    .local v10, "p8":Ljavafx/geometry/Point2D;
    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    invoke-static/range {v11 .. v18}, Lcom/sun/javafx/geometry/BoundsUtils;->createBoundingBox(Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;)Ljavafx/geometry/Bounds;

    move-result-object v11

    move-object v1, v11

    .end local v1    # "this":Ljavafx/scene/Node;
    return-object v1
.end method

.method public localToScreen(DD)Ljavafx/geometry/Point2D;
    .locals 13

    .prologue
    .line 4240
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-wide v1, p1

    .local v1, "localX":D
    move-wide/from16 v3, p3

    .local v3, "localY":D
    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    const-wide/16 v10, 0x0

    invoke-virtual/range {v5 .. v11}, Ljavafx/scene/Node;->localToScreen(DDD)Ljavafx/geometry/Point2D;

    move-result-object v5

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public localToScreen(DDD)Ljavafx/geometry/Point2D;
    .locals 21

    .prologue
    .line 4264
    move-object/from16 v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-wide/from16 v1, p1

    .local v1, "localX":D
    move-wide/from16 v3, p3

    .local v3, "localY":D
    move-wide/from16 v5, p5

    .local v5, "localZ":D
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v12

    move-object v7, v12

    .line 4265
    .local v7, "scene":Ljavafx/scene/Scene;
    move-object v12, v7

    if-nez v12, :cond_0

    const/4 v12, 0x0

    move-object v0, v12

    .line 4278
    .end local v0    # "this":Ljavafx/scene/Node;
    :goto_0
    return-object v0

    .line 4266
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v12, v7

    invoke-virtual {v12}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v12

    move-object v8, v12

    .line 4267
    .local v8, "window":Ljavafx/stage/Window;
    move-object v12, v8

    if-nez v12, :cond_1

    const/4 v12, 0x0

    move-object v0, v12

    goto :goto_0

    .line 4269
    :cond_1
    move-object v12, v0

    move-wide v13, v1

    move-wide v15, v3

    move-wide/from16 v17, v5

    invoke-virtual/range {v12 .. v18}, Ljavafx/scene/Node;->localToScene(DDD)Ljavafx/geometry/Point3D;

    move-result-object v12

    move-object v9, v12

    .line 4270
    .local v9, "pt":Ljavafx/geometry/Point3D;
    move-object v12, v0

    invoke-virtual {v12}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v12

    move-object v10, v12

    .line 4271
    .local v10, "subScene":Ljavafx/scene/SubScene;
    move-object v12, v10

    if-eqz v12, :cond_2

    .line 4272
    move-object v12, v10

    move-object v13, v9

    invoke-static {v12, v13}, Lcom/sun/javafx/scene/SceneUtils;->subSceneToScene(Ljavafx/scene/SubScene;Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;

    move-result-object v12

    move-object v9, v12

    .line 4274
    :cond_2
    move-object v12, v0

    .line 4275
    invoke-virtual {v12}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v12

    invoke-static {v12}, Lcom/sun/javafx/scene/SceneHelper;->getEffectiveCamera(Ljavafx/scene/Scene;)Ljavafx/scene/Camera;

    move-result-object v12

    move-object v13, v9

    .line 4274
    invoke-static {v12, v13}, Lcom/sun/javafx/scene/CameraHelper;->project(Ljavafx/scene/Camera;Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point2D;

    move-result-object v12

    move-object v11, v12

    .line 4277
    .local v11, "projection":Ljavafx/geometry/Point2D;
    new-instance v12, Ljavafx/geometry/Point2D;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v14, v11

    invoke-virtual {v14}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v14

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Scene;->getX()D

    move-result-wide v16

    add-double v14, v14, v16

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Ljavafx/stage/Window;->getX()D

    move-result-wide v16

    add-double v14, v14, v16

    move-object/from16 v16, v11

    .line 4278
    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v16

    move-object/from16 v18, v7

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Scene;->getY()D

    move-result-wide v18

    add-double v16, v16, v18

    move-object/from16 v18, v8

    invoke-virtual/range {v18 .. v18}, Ljavafx/stage/Window;->getY()D

    move-result-wide v18

    add-double v16, v16, v18

    invoke-direct/range {v13 .. v17}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v0, v12

    goto :goto_0
.end method

.method public localToScreen(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;
    .locals 8

    .prologue
    .line 4251
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, p1

    .local v2, "localPoint":Ljavafx/geometry/Point2D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/Node;->localToScreen(DD)Ljavafx/geometry/Point2D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/Node;
    return-object v1
.end method

.method public localToScreen(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point2D;
    .locals 10

    .prologue
    .line 4289
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, p1

    .local v2, "localPoint":Ljavafx/geometry/Point3D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/Node;->localToScreen(DDD)Ljavafx/geometry/Point2D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/Node;
    return-object v1
.end method

.method public lookup(Ljava/lang/String;)Ljavafx/scene/Node;
    .locals 5

    .prologue
    .line 1705
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "selector":Ljava/lang/String;
    move-object v3, v1

    if-nez v3, :cond_0

    const/4 v3, 0x0

    move-object v0, v3

    .line 1707
    .end local v0    # "this":Ljavafx/scene/Node;
    :goto_0
    return-object v0

    .line 1706
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v3, v1

    invoke-static {v3}, Lcom/sun/javafx/css/Selector;->createSelector(Ljava/lang/String;)Lcom/sun/javafx/css/Selector;

    move-result-object v3

    move-object v2, v3

    .line 1707
    .local v2, "s":Lcom/sun/javafx/css/Selector;
    move-object v3, v2

    if-eqz v3, :cond_1

    move-object v3, v2

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/css/Selector;->applies(Ljavafx/css/Styleable;)Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v0

    :goto_1
    move-object v0, v3

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_1
.end method

.method lookupAll(Lcom/sun/javafx/css/Selector;Ljava/util/List;)Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/sun/javafx/css/Selector;",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;)",
            "Ljava/util/List",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1736
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "selector":Lcom/sun/javafx/css/Selector;
    move-object v2, p2

    .local v2, "results":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v3, v1

    move-object v4, v0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/css/Selector;->applies(Ljavafx/css/Styleable;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1738
    move-object v3, v2

    if-nez v3, :cond_0

    .line 1739
    new-instance v3, Ljava/util/LinkedList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/LinkedList;-><init>()V

    move-object v2, v3

    .line 1741
    :cond_0
    move-object v3, v2

    move-object v4, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 1743
    :cond_1
    move-object v3, v2

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public lookupAll(Ljava/lang/String;)Ljava/util/Set;
    .locals 9
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Set",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1721
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "selector":Ljava/lang/String;
    move-object v5, v1

    invoke-static {v5}, Lcom/sun/javafx/css/Selector;->createSelector(Ljava/lang/String;)Lcom/sun/javafx/css/Selector;

    move-result-object v5

    move-object v2, v5

    .line 1722
    .local v2, "s":Lcom/sun/javafx/css/Selector;
    invoke-static {}, Ljava/util/Collections;->emptySet()Ljava/util/Set;

    move-result-object v5

    move-object v3, v5

    .line 1723
    .local v3, "empty":Ljava/util/Set;, "Ljava/util/Set<Ljavafx/scene/Node;>;"
    move-object v5, v2

    if-nez v5, :cond_0

    move-object v5, v3

    move-object v0, v5

    .line 1725
    .end local v0    # "this":Ljavafx/scene/Node;
    :goto_0
    return-object v0

    .line 1724
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v5, v0

    move-object v6, v2

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Ljavafx/scene/Node;->lookupAll(Lcom/sun/javafx/css/Selector;Ljava/util/List;)Ljava/util/List;

    move-result-object v5

    move-object v4, v5

    .line 1725
    .local v4, "results":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    move-object v5, v4

    if-nez v5, :cond_1

    move-object v5, v3

    :goto_1
    move-object v0, v5

    goto :goto_0

    :cond_1
    new-instance v5, Lcom/sun/javafx/collections/UnmodifiableListSet;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v7, v4

    invoke-direct {v6, v7}, Lcom/sun/javafx/collections/UnmodifiableListSet;-><init>(Ljava/util/List;)V

    goto :goto_1
.end method

.method public final managedProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 2397
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->managed:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 2398
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$9;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Node$9;-><init>(Ljavafx/scene/Node;Z)V

    iput-object v2, v1, Ljavafx/scene/Node;->managed:Ljavafx/beans/property/BooleanProperty;

    .line 2421
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->managed:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method markDirtyLayoutBranch()V
    .locals 4

    .prologue
    .line 7969
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v1, v2

    .line 7970
    .local v1, "p":Ljavafx/scene/Parent;
    :goto_0
    move-object v2, v1

    if-eqz v2, :cond_1

    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Parent;->layoutFlag:Lcom/sun/javafx/scene/LayoutFlags;

    sget-object v3, Lcom/sun/javafx/scene/LayoutFlags;->CLEAN:Lcom/sun/javafx/scene/LayoutFlags;

    if-ne v2, v3, :cond_1

    .line 7971
    move-object v2, v1

    sget-object v3, Lcom/sun/javafx/scene/LayoutFlags;->DIRTY_BRANCH:Lcom/sun/javafx/scene/LayoutFlags;

    invoke-virtual {v2, v3}, Ljavafx/scene/Parent;->setLayoutFlag(Lcom/sun/javafx/scene/LayoutFlags;)V

    .line 7972
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Parent;->isSceneRoot()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 7973
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->requestNextPulse()V

    .line 7974
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 7975
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/SubScene;->setDirtyLayout(Ljavafx/scene/Parent;)V

    .line 7978
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Parent;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v1, v2

    goto :goto_0

    .line 7981
    :cond_1
    return-void
.end method

.method public maxHeight(D)D
    .locals 7

    .prologue
    .line 2833
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-wide v1, p1

    .local v1, "width":D
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Ljavafx/scene/Node;
    return-wide v0
.end method

.method public maxWidth(D)D
    .locals 7

    .prologue
    .line 2801
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-wide v1, p1

    .local v1, "height":D
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Ljavafx/scene/Node;
    return-wide v0
.end method

.method public minHeight(D)D
    .locals 7

    .prologue
    .line 2710
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-wide v1, p1

    .local v1, "width":D
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Ljavafx/scene/Node;
    return-wide v0
.end method

.method public minWidth(D)D
    .locals 7

    .prologue
    .line 2680
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-wide v1, p1

    .local v1, "height":D
    move-object v3, v0

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v3

    move-wide v0, v3

    .end local v0    # "this":Ljavafx/scene/Node;
    return-wide v0
.end method

.method public final mouseTransparentProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 6870
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getMiscProperties()Ljavafx/scene/Node$MiscProperties;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$MiscProperties;->mouseTransparentProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
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
    .line 6137
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->nodeOrientation:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 6138
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$13;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    sget-object v5, Ljavafx/geometry/NodeOrientation;->INHERIT:Ljavafx/geometry/NodeOrientation;

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Node$13;-><init>(Ljavafx/scene/Node;Ljavafx/geometry/NodeOrientation;)V

    iput-object v2, v1, Ljavafx/scene/Node;->nodeOrientation:Ljavafx/beans/property/ObjectProperty;

    .line 6162
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->nodeOrientation:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method nodeResolvedOrientationChanged()V
    .locals 0

    .prologue
    .line 6238
    return-void
.end method

.method final nodeResolvedOrientationInvalidated()V
    .locals 5

    .prologue
    .line 6214
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v2, v0

    iget-byte v2, v2, Ljavafx/scene/Node;->resolvedNodeOrientation:B

    move v1, v2

    .line 6217
    .local v1, "oldResolvedNodeOrientation":B
    move-object v2, v0

    move-object v3, v0

    .line 6218
    invoke-direct {v3}, Ljavafx/scene/Node;->calcEffectiveNodeOrientation()B

    move-result v3

    move-object v4, v0

    .line 6219
    invoke-direct {v4}, Ljavafx/scene/Node;->calcAutomaticNodeOrientation()B

    move-result v4

    or-int/2addr v3, v4

    int-to-byte v3, v3

    iput-byte v3, v2, Ljavafx/scene/Node;->resolvedNodeOrientation:B

    .line 6221
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node;->effectiveNodeOrientationProperty:Ljavafx/scene/Node$EffectiveOrientationProperty;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-byte v2, v2, Ljavafx/scene/Node;->resolvedNodeOrientation:B

    .line 6222
    invoke-static {v2}, Ljavafx/scene/Node;->getEffectiveOrientation(B)B

    move-result v2

    move v3, v1

    .line 6223
    invoke-static {v3}, Ljavafx/scene/Node;->getEffectiveOrientation(B)B

    move-result v3

    if-eq v2, v3, :cond_0

    .line 6225
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node;->effectiveNodeOrientationProperty:Ljavafx/scene/Node$EffectiveOrientationProperty;

    invoke-virtual {v2}, Ljavafx/scene/Node$EffectiveOrientationProperty;->invalidate()V

    .line 6229
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->impl_transformsChanged()V

    .line 6231
    move-object v2, v0

    iget-byte v2, v2, Ljavafx/scene/Node;->resolvedNodeOrientation:B

    move v3, v1

    if-eq v2, v3, :cond_1

    .line 6232
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->nodeResolvedOrientationChanged()V

    .line 6234
    :cond_1
    return-void
.end method

.method public final notifyAccessibleAttributeChanged(Ljavafx/scene/AccessibleAttribute;)V
    .locals 6

    .prologue
    .line 9595
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "attributes":Ljavafx/scene/AccessibleAttribute;
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node;->accessible:Lcom/sun/glass/ui/Accessible;

    if-nez v3, :cond_0

    .line 9596
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    move-object v2, v3

    .line 9597
    .local v2, "scene":Ljavafx/scene/Scene;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 9598
    move-object v3, v0

    move-object v4, v2

    move-object v5, v0

    invoke-virtual {v4, v5}, Ljavafx/scene/Scene;->removeAccessible(Ljavafx/scene/Node;)Lcom/sun/glass/ui/Accessible;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/Node;->accessible:Lcom/sun/glass/ui/Accessible;

    .line 9601
    .end local v2    # "scene":Ljavafx/scene/Scene;
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node;->accessible:Lcom/sun/glass/ui/Accessible;

    if-eqz v3, :cond_1

    .line 9602
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node;->accessible:Lcom/sun/glass/ui/Accessible;

    move-object v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/Accessible;->sendNotification(Ljavafx/scene/AccessibleAttribute;)V

    .line 9604
    :cond_1
    return-void
.end method

.method notifyManagedChanged()V
    .locals 0

    .prologue
    .line 2429
    return-void
.end method

.method notifyParentOfBoundsChange()V
    .locals 4

    .prologue
    .line 3834
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v1, v2

    .line 3835
    .local v1, "p":Ljavafx/scene/Parent;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 3836
    move-object v2, v1

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljavafx/scene/Parent;->childBoundsChanged(Ljavafx/scene/Node;)V

    .line 3841
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node;->clipParent:Ljavafx/scene/Node;

    if-eqz v2, :cond_1

    .line 3842
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node;->clipParent:Ljavafx/scene/Node;

    invoke-virtual {v2}, Ljavafx/scene/Node;->localBoundsChanged()V

    .line 3844
    :cond_1
    return-void
.end method

.method final notifyParentsOfInvalidatedCSS()V
    .locals 6

    .prologue
    .line 8899
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v4

    move-object v1, v4

    .line 8900
    .local v1, "subScene":Ljavafx/scene/SubScene;
    move-object v4, v1

    if-eqz v4, :cond_1

    move-object v4, v1

    .line 8901
    invoke-virtual {v4}, Ljavafx/scene/SubScene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v4

    :goto_0
    move-object v2, v4

    .line 8903
    .local v2, "root":Ljavafx/scene/Parent;
    move-object v4, v2

    sget-object v5, Lcom/sun/javafx/scene/DirtyBits;->NODE_CSS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v4, v5}, Ljavafx/scene/Parent;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 8907
    move-object v4, v2

    sget-object v5, Lcom/sun/javafx/scene/DirtyBits;->NODE_CSS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v4, v5}, Ljavafx/scene/Parent;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 8908
    move-object v4, v1

    if-eqz v4, :cond_0

    .line 8913
    move-object v4, v1

    sget-object v5, Lcom/sun/javafx/scene/CssFlags;->UPDATE:Lcom/sun/javafx/scene/CssFlags;

    iput-object v5, v4, Ljavafx/scene/SubScene;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    .line 8914
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/SubScene;->notifyParentsOfInvalidatedCSS()V

    .line 8917
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v4

    move-object v3, v4

    .line 8918
    .local v3, "_parent":Ljavafx/scene/Parent;
    :goto_1
    move-object v4, v3

    if-eqz v4, :cond_3

    .line 8919
    move-object v4, v3

    iget-object v4, v4, Ljavafx/scene/Parent;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    sget-object v5, Lcom/sun/javafx/scene/CssFlags;->CLEAN:Lcom/sun/javafx/scene/CssFlags;

    if-ne v4, v5, :cond_2

    .line 8920
    move-object v4, v3

    sget-object v5, Lcom/sun/javafx/scene/CssFlags;->DIRTY_BRANCH:Lcom/sun/javafx/scene/CssFlags;

    iput-object v5, v4, Ljavafx/scene/Parent;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    .line 8921
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Parent;->getParent()Ljavafx/scene/Parent;

    move-result-object v4

    move-object v3, v4

    goto :goto_1

    .line 8901
    .end local v2    # "root":Ljavafx/scene/Parent;
    .end local v3    # "_parent":Ljavafx/scene/Parent;
    :cond_1
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v4

    goto :goto_0

    .line 8923
    .restart local v2    # "root":Ljavafx/scene/Parent;
    .restart local v3    # "_parent":Ljavafx/scene/Parent;
    :cond_2
    const/4 v4, 0x0

    move-object v3, v4

    goto :goto_1

    .line 8926
    :cond_3
    return-void
.end method

.method public final onContextMenuRequestedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 6992
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onContextMenuRequestedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onDragDetectedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7142
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onDragDetectedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onDragDoneProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 2189
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onDragDoneProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onDragDroppedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 2163
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onDragDroppedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onDragEnteredProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 2081
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onDragEnteredProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onDragExitedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 2100
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onDragExitedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onDragOverProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 2119
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onDragOverProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onInputMethodTextChangedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7664
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onInputMethodTextChangedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onKeyPressedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7590
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onKeyPressedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onKeyReleasedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7611
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onKeyReleasedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onKeyTypedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7632
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onKeyTypedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onMouseClickedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7011
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onMouseClickedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onMouseDragEnteredProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7202
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onMouseDragEnteredProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onMouseDragExitedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7222
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onMouseDragExitedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onMouseDragOverProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7162
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onMouseDragOverProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onMouseDragReleasedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7182
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onMouseDragReleasedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onMouseDraggedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7030
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onMouseDraggedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onMouseEnteredProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7048
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onMouseEnteredProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onMouseExitedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7066
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onMouseExitedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onMouseMovedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7085
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onMouseMovedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onMousePressedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onMousePressedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onMouseReleasedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7123
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onMouseReleasedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onRotateProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7323
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onRotateProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onRotationFinishedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7342
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onRotationFinishedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onRotationStartedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7304
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onRotationStartedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onScrollFinishedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7285
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onScrollFinishedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onScrollProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7266
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onScrollProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onScrollStartedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7248
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onScrollStartedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onSwipeDownProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7439
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onSwipeDownProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onSwipeLeftProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7459
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onSwipeLeftProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onSwipeRightProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7479
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onSwipeRightProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onSwipeUpProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7419
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onSwipeUpProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onTouchMovedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7524
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onTouchMovedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onTouchPressedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7505
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onTouchPressedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onTouchReleasedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7543
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onTouchReleasedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onTouchStationaryProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7563
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onTouchStationaryProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onZoomFinishedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7399
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onZoomFinishedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onZoomProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7380
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onZoomProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final onZoomStartedProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
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
    .line 7361
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getEventHandlerProperties()Lcom/sun/javafx/scene/EventHandlerProperties;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/scene/EventHandlerProperties;->onZoomStartedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final opacityProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 1244
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->opacity:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 1245
    move-object v2, v1

    new-instance v3, Ljavafx/scene/Node$6;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/Node$6;-><init>(Ljavafx/scene/Node;D)V

    iput-object v3, v2, Ljavafx/scene/Node;->opacity:Ljavafx/beans/property/DoubleProperty;

    .line 1268
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/scene/Node;->opacity:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/scene/Node;
    return-object v1
.end method

.method public final parentProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/Parent;",
            ">;"
        }
    .end annotation

    .prologue
    .line 728
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->parentPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method final parentResolvedOrientationInvalidated()V
    .locals 3

    .prologue
    .line 6205
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->getNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v1

    sget-object v2, Ljavafx/geometry/NodeOrientation;->INHERIT:Ljavafx/geometry/NodeOrientation;

    if-ne v1, v2, :cond_0

    .line 6206
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->nodeResolvedOrientationInvalidated()V

    .line 6211
    :goto_0
    return-void

    .line 6209
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->impl_transformsChanged()V

    goto :goto_0
.end method

.method public parentToLocal(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;
    .locals 19

    .prologue
    .line 4574
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object/from16 v2, p1

    .local v2, "parentBounds":Ljavafx/geometry/Bounds;
    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/Node;->updateLocalToParentTransform()V

    .line 4575
    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v11}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_0

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_0

    .line 4576
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/Node;->parentToLocal(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v3, v11

    .line 4577
    .local v3, "p1":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/Node;->parentToLocal(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v4, v11

    .line 4578
    .local v4, "p2":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/Node;->parentToLocal(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v5, v11

    .line 4579
    .local v5, "p3":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/Node;->parentToLocal(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v6, v11

    .line 4581
    .local v6, "p4":Ljavafx/geometry/Point2D;
    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    invoke-static {v11, v12, v13, v14}, Lcom/sun/javafx/geometry/BoundsUtils;->createBoundingBox(Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;)Ljavafx/geometry/Bounds;

    move-result-object v11

    move-object v1, v11

    .line 4591
    .end local v1    # "this":Ljavafx/scene/Node;
    .end local v3    # "p1":Ljavafx/geometry/Point2D;
    .end local v4    # "p2":Ljavafx/geometry/Point2D;
    .end local v5    # "p3":Ljavafx/geometry/Point2D;
    .end local v6    # "p4":Ljavafx/geometry/Point2D;
    :goto_0
    return-object v1

    .line 4583
    .restart local v1    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->parentToLocal(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v3, v11

    .line 4584
    .local v3, "p1":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->parentToLocal(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v4, v11

    .line 4585
    .local v4, "p2":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->parentToLocal(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v5, v11

    .line 4586
    .local v5, "p3":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->parentToLocal(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v6, v11

    .line 4587
    .local v6, "p4":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->parentToLocal(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v7, v11

    .line 4588
    .local v7, "p5":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->parentToLocal(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v8, v11

    .line 4589
    .local v8, "p6":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->parentToLocal(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v9, v11

    .line 4590
    .local v9, "p7":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-virtual/range {v11 .. v17}, Ljavafx/scene/Node;->parentToLocal(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v10, v11

    .line 4591
    .local v10, "p8":Ljavafx/geometry/Point3D;
    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    invoke-static/range {v11 .. v18}, Lcom/sun/javafx/geometry/BoundsUtils;->createBoundingBox(Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;)Ljavafx/geometry/Bounds;

    move-result-object v11

    move-object v1, v11

    goto/16 :goto_0
.end method

.method public parentToLocal(DD)Ljavafx/geometry/Point2D;
    .locals 15

    .prologue
    .line 4523
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-wide/from16 v2, p1

    .local v2, "parentX":D
    move-wide/from16 v4, p3

    .local v4, "parentY":D
    invoke-static {}, Lcom/sun/javafx/util/TempState;->getInstance()Lcom/sun/javafx/util/TempState;

    move-result-object v8

    iget-object v8, v8, Lcom/sun/javafx/util/TempState;->point:Lcom/sun/javafx/geom/Point2D;

    move-object v6, v8

    .line 4524
    .local v6, "tempPt":Lcom/sun/javafx/geom/Point2D;
    move-object v8, v6

    move-wide v9, v2

    double-to-float v9, v9

    move-wide v10, v4

    double-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 4526
    move-object v8, v1

    move-object v9, v6

    :try_start_0
    invoke-virtual {v8, v9}, Ljavafx/scene/Node;->parentToLocal(Lcom/sun/javafx/geom/Point2D;)V
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4529
    .line 4530
    new-instance v8, Ljavafx/geometry/Point2D;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v6

    iget v10, v10, Lcom/sun/javafx/geom/Point2D;->x:F

    float-to-double v10, v10

    move-object v12, v6

    iget v12, v12, Lcom/sun/javafx/geom/Point2D;->y:F

    float-to-double v12, v12

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v8

    .end local v1    # "this":Ljavafx/scene/Node;
    :goto_0
    return-object v1

    .line 4527
    .restart local v1    # "this":Ljavafx/scene/Node;
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 4528
    .local v7, "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    const/4 v8, 0x0

    move-object v1, v8

    goto :goto_0
.end method

.method public parentToLocal(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;
    .locals 8

    .prologue
    .line 4538
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, p1

    .local v2, "parentPoint":Ljavafx/geometry/Point2D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/Node;->parentToLocal(DD)Ljavafx/geometry/Point2D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/Node;
    return-object v1
.end method

.method public parentToLocal(DDD)Ljavafx/geometry/Point3D;
    .locals 21

    .prologue
    .line 4557
    move-object/from16 v3, p0

    .local v3, "this":Ljavafx/scene/Node;
    move-wide/from16 v4, p1

    .local v4, "parentX":D
    move-wide/from16 v6, p3

    .local v6, "parentY":D
    move-wide/from16 v8, p5

    .local v8, "parentZ":D
    invoke-static {}, Lcom/sun/javafx/util/TempState;->getInstance()Lcom/sun/javafx/util/TempState;

    move-result-object v12

    iget-object v12, v12, Lcom/sun/javafx/util/TempState;->vec3d:Lcom/sun/javafx/geom/Vec3d;

    move-object v10, v12

    .line 4558
    .local v10, "tempV3D":Lcom/sun/javafx/geom/Vec3d;
    move-object v12, v10

    move-wide v13, v4

    move-wide v15, v6

    move-wide/from16 v17, v8

    invoke-virtual/range {v12 .. v18}, Lcom/sun/javafx/geom/Vec3d;->set(DDD)V

    .line 4560
    move-object v12, v3

    move-object v13, v10

    :try_start_0
    invoke-virtual {v12, v13}, Ljavafx/scene/Node;->parentToLocal(Lcom/sun/javafx/geom/Vec3d;)V
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4563
    .line 4564
    new-instance v12, Ljavafx/geometry/Point3D;

    move-object/from16 v20, v12

    move-object/from16 v12, v20

    move-object/from16 v13, v20

    move-object v14, v10

    iget-wide v14, v14, Lcom/sun/javafx/geom/Vec3d;->x:D

    move-object/from16 v16, v10

    move-object/from16 v0, v16

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->y:D

    move-wide/from16 v16, v0

    move-object/from16 v18, v10

    move-object/from16 v0, v18

    iget-wide v0, v0, Lcom/sun/javafx/geom/Vec3d;->z:D

    move-wide/from16 v18, v0

    invoke-direct/range {v13 .. v19}, Ljavafx/geometry/Point3D;-><init>(DDD)V

    move-object v3, v12

    .end local v3    # "this":Ljavafx/scene/Node;
    :goto_0
    return-object v3

    .line 4561
    .restart local v3    # "this":Ljavafx/scene/Node;
    :catch_0
    move-exception v12

    move-object v11, v12

    .line 4562
    .local v11, "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    const/4 v12, 0x0

    move-object v3, v12

    goto :goto_0
.end method

.method public parentToLocal(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;
    .locals 10

    .prologue
    .line 4547
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, p1

    .local v2, "parentPoint":Ljavafx/geometry/Point3D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/Node;->parentToLocal(DDD)Ljavafx/geometry/Point3D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/Node;
    return-object v1
.end method

.method parentToLocal(Lcom/sun/javafx/geom/Point2D;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 4811
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "pt":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->updateLocalToParentTransform()V

    .line 4812
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->inverseTransform(Lcom/sun/javafx/geom/Point2D;Lcom/sun/javafx/geom/Point2D;)Lcom/sun/javafx/geom/Point2D;

    move-result-object v2

    .line 4813
    return-void
.end method

.method parentToLocal(Lcom/sun/javafx/geom/Vec3d;)V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 4816
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "pt":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->updateLocalToParentTransform()V

    .line 4817
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v3, v1

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Lcom/sun/javafx/geom/transform/BaseTransform;->inverseTransform(Lcom/sun/javafx/geom/Vec3d;Lcom/sun/javafx/geom/Vec3d;)Lcom/sun/javafx/geom/Vec3d;

    move-result-object v2

    .line 4818
    return-void
.end method

.method public final pickOnBoundsProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 1614
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->pickOnBounds:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 1615
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "pickOnBounds"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/Node;->pickOnBounds:Ljavafx/beans/property/BooleanProperty;

    .line 1617
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->pickOnBounds:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public prefHeight(D)D
    .locals 11

    .prologue
    .line 2768
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-wide v2, p1

    .local v2, "width":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getHeight()D

    move-result-wide v6

    move-wide v4, v6

    .line 2769
    .local v4, "result":D
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_0

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    :cond_0
    const-wide/16 v6, 0x0

    :goto_0
    move-wide v1, v6

    .end local v1    # "this":Ljavafx/scene/Node;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/Node;
    :cond_1
    move-wide v6, v4

    goto :goto_0
.end method

.method public prefWidth(D)D
    .locals 11

    .prologue
    .line 2739
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-wide v2, p1

    .local v2, "height":D
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v6

    invoke-virtual {v6}, Ljavafx/geometry/Bounds;->getWidth()D

    move-result-wide v6

    move-wide v4, v6

    .line 2740
    .local v4, "result":D
    move-wide v6, v4

    invoke-static {v6, v7}, Ljava/lang/Double;->isNaN(D)Z

    move-result v6

    if-nez v6, :cond_0

    move-wide v6, v4

    const-wide/16 v8, 0x0

    cmpg-double v6, v6, v8

    if-gez v6, :cond_1

    :cond_0
    const-wide/16 v6, 0x0

    :goto_0
    move-wide v1, v6

    .end local v1    # "this":Ljavafx/scene/Node;
    return-wide v1

    .restart local v1    # "this":Ljavafx/scene/Node;
    :cond_1
    move-wide v6, v4

    goto :goto_0
.end method

.method public final pressedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 6945
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->pressedPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method processCSS()V
    .locals 7

    .prologue
    .line 9038
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    sget-object v5, Ljavafx/scene/Node$20;->$SwitchMap$com$sun$javafx$scene$CssFlags:[I

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Node;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    invoke-virtual {v6}, Lcom/sun/javafx/scene/CssFlags;->ordinal()I

    move-result v6

    aget v5, v5, v6

    packed-switch v5, :pswitch_data_0

    .line 9056
    move-object v5, v0

    const/4 v6, 0x0

    invoke-virtual {v5, v6}, Ljavafx/scene/Node;->impl_processCSS(Ljavafx/beans/value/WritableValue;)V

    .line 9058
    :goto_0
    return-void

    .line 9040
    :pswitch_0
    goto :goto_0

    .line 9043
    :pswitch_1
    move-object v5, v0

    check-cast v5, Ljavafx/scene/Parent;

    move-object v1, v5

    .line 9046
    .local v1, "me":Ljavafx/scene/Parent;
    move-object v5, v1

    sget-object v6, Lcom/sun/javafx/scene/CssFlags;->CLEAN:Lcom/sun/javafx/scene/CssFlags;

    iput-object v6, v5, Ljavafx/scene/Parent;->cssFlag:Lcom/sun/javafx/scene/CssFlags;

    .line 9047
    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/Parent;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v2, v5

    .line 9048
    .local v2, "children":Ljava/util/List;, "Ljava/util/List<Ljavafx/scene/Node;>;"
    const/4 v5, 0x0

    move v3, v5

    .local v3, "i":I
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    move v4, v5

    .local v4, "max":I
    :goto_1
    move v5, v3

    move v6, v4

    if-ge v5, v6, :cond_0

    .line 9049
    move-object v5, v2

    move v6, v3

    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/Node;

    invoke-virtual {v5}, Ljavafx/scene/Node;->processCSS()V

    .line 9048
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 9051
    :cond_0
    goto :goto_0

    .line 9038
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V
    .locals 7

    .prologue
    .line 8871
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "pseudoClass":Ljavafx/css/PseudoClass;
    move v2, p2

    .local v2, "active":Z
    move v5, v2

    if-eqz v5, :cond_1

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Node;->pseudoClassStates:Ljavafx/collections/ObservableSet;

    move-object v6, v1

    .line 8872
    invoke-interface {v5, v6}, Ljavafx/collections/ObservableSet;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 8873
    :goto_0
    move v3, v5

    .line 8875
    .local v3, "modified":Z
    move v5, v3

    if-eqz v5, :cond_0

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    if-eqz v5, :cond_0

    .line 8876
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Node;->styleHelper:Ljavafx/scene/CssStyleHelper;

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljavafx/scene/CssStyleHelper;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;)Z

    move-result v5

    move v4, v5

    .line 8877
    .local v4, "isTransition":Z
    move v5, v4

    if-eqz v5, :cond_0

    .line 8878
    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/Node;->requestCssStateTransition()V

    .line 8881
    .end local v4    # "isTransition":Z
    :cond_0
    return-void

    .line 8872
    .end local v3    # "modified":Z
    :cond_1
    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/Node;->pseudoClassStates:Ljavafx/collections/ObservableSet;

    move-object v6, v1

    .line 8873
    invoke-interface {v5, v6}, Ljavafx/collections/ObservableSet;->remove(Ljava/lang/Object;)Z

    move-result v5

    goto :goto_0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 5

    .prologue
    .line 9530
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Ljavafx/scene/Node$20;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 9542
    const/4 v3, 0x0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/Node;
    :goto_0
    return-object v0

    .line 9531
    .restart local v0    # "this":Ljavafx/scene/Node;
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->getAccessibleRole()Ljavafx/scene/AccessibleRole;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 9532
    :pswitch_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->getAccessibleRoleDescription()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 9533
    :pswitch_2
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->getAccessibleText()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 9534
    :pswitch_3
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->getAccessibleHelp()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 9535
    :pswitch_4
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 9536
    :pswitch_5
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 9537
    :pswitch_6
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node;->getBoundsInLocal()Ljavafx/geometry/Bounds;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/Node;->localToScreen(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 9538
    :pswitch_7
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->isDisabled()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 9539
    :pswitch_8
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->isFocused()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 9540
    :pswitch_9
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->isVisible()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 9541
    :pswitch_a
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node;->labeledBy:Ljavafx/scene/Node;

    move-object v0, v3

    goto :goto_0

    .line 9530
    :pswitch_data_0
    .packed-switch 0x1
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
    .end packed-switch
.end method

.method releaseAccessible()V
    .locals 4

    .prologue
    .line 9661
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/Node;->accessible:Lcom/sun/glass/ui/Accessible;

    move-object v1, v2

    .line 9662
    .local v1, "acc":Lcom/sun/glass/ui/Accessible;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 9663
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/scene/Node;->accessible:Lcom/sun/glass/ui/Accessible;

    .line 9664
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/glass/ui/Accessible;->dispose()V

    .line 9666
    :cond_0
    return-void
.end method

.method public relocate(DD)V
    .locals 13

    .prologue
    .line 2589
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-wide v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move-object v7, v1

    move-wide v8, v2

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/Node;->setLayoutX(D)V

    .line 2590
    move-object v7, v1

    move-wide v8, v4

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/Node;->getLayoutBounds()Ljavafx/geometry/Bounds;

    move-result-object v10

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v10

    sub-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/Node;->setLayoutY(D)V

    .line 2592
    invoke-static {}, Lcom/sun/javafx/util/Logging;->getLayoutLogger()Lsun/util/logging/PlatformLogger;

    move-result-object v7

    move-object v6, v7

    .line 2593
    .local v6, "logger":Lsun/util/logging/PlatformLogger;
    move-object v7, v6

    sget-object v8, Lsun/util/logging/PlatformLogger$Level;->FINER:Lsun/util/logging/PlatformLogger$Level;

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->isLoggable(Lsun/util/logging/PlatformLogger$Level;)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2594
    move-object v7, v6

    new-instance v8, Ljava/lang/StringBuilder;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    move-object v9, v1

    invoke-virtual {v9}, Ljavafx/scene/Node;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, " moved to ("

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v2

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ","

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    move-wide v9, v4

    invoke-virtual {v8, v9, v10}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ")"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Lsun/util/logging/PlatformLogger;->finer(Ljava/lang/String;)V

    .line 2596
    :cond_0
    return-void
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
    .line 8283
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventFilter":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Node;->getInternalEventDispatcher()Lcom/sun/javafx/scene/NodeEventDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/scene/NodeEventDispatcher;->getEventHandlerManager()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 8284
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->removeEventFilter(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 8285
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
    .line 8245
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Node;->getInternalEventDispatcher()Lcom/sun/javafx/scene/NodeEventDispatcher;

    move-result-object v3

    .line 8246
    invoke-virtual {v3}, Lcom/sun/javafx/scene/NodeEventDispatcher;->getEventHandlerManager()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 8247
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 8248
    return-void
.end method

.method public requestFocus()V
    .locals 3

    .prologue
    .line 7878
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 7879
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljavafx/scene/Scene;->requestFocus(Ljavafx/scene/Node;)V

    .line 7881
    :cond_0
    return-void
.end method

.method public resize(DD)V
    .locals 0
    .param p1, "width"    # D
    .param p3, "height"    # D

    .prologue
    .line 2865
    return-void
.end method

.method public resizeRelocate(DDDD)V
    .locals 15

    .prologue
    .line 2941
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-wide/from16 v1, p1

    .local v1, "x":D
    move-wide/from16 v3, p3

    .local v3, "y":D
    move-wide/from16 v5, p5

    .local v5, "width":D
    move-wide/from16 v7, p7

    .local v7, "height":D
    move-object v9, v0

    move-wide v10, v5

    move-wide v12, v7

    invoke-virtual {v9, v10, v11, v12, v13}, Ljavafx/scene/Node;->resize(DD)V

    .line 2942
    move-object v9, v0

    move-wide v10, v1

    move-wide v12, v3

    invoke-virtual {v9, v10, v11, v12, v13}, Ljavafx/scene/Node;->relocate(DD)V

    .line 2943
    return-void
.end method

.method public final rotateProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 5416
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getNodeTransformation()Ljavafx/scene/Node$NodeTransformation;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$NodeTransformation;->rotateProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final rotationAxisProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/geometry/Point3D;",
            ">;"
        }
    .end annotation

    .prologue
    .line 5439
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getNodeTransformation()Ljavafx/scene/Node$NodeTransformation;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$NodeTransformation;->rotationAxisProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final scaleXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 5319
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getNodeTransformation()Ljavafx/scene/Node$NodeTransformation;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$NodeTransformation;->scaleXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final scaleYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 5346
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getNodeTransformation()Ljavafx/scene/Node$NodeTransformation;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$NodeTransformation;->scaleYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final scaleZProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 5378
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getNodeTransformation()Ljavafx/scene/Node$NodeTransformation;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$NodeTransformation;->scaleZProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final sceneProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ReadOnlyObjectProperty",
            "<",
            "Ljavafx/scene/Scene;",
            ">;"
        }
    .end annotation

    .prologue
    .line 936
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->scene:Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;

    invoke-virtual {v1}, Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public sceneToLocal(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;
    .locals 19

    .prologue
    .line 4207
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object/from16 v2, p1

    .local v2, "sceneBounds":Ljavafx/geometry/Bounds;
    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/scene/Node;->updateLocalToParentTransform()V

    .line 4208
    move-object v11, v1

    iget-object v11, v11, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v11}, Lcom/sun/javafx/geom/transform/BaseTransform;->is2D()Z

    move-result v11

    if-eqz v11, :cond_0

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_0

    move-object v11, v2

    invoke-virtual {v11}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v11

    const-wide/16 v13, 0x0

    cmpl-double v11, v11, v13

    if-nez v11, :cond_0

    .line 4209
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/Node;->sceneToLocal(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v3, v11

    .line 4210
    .local v3, "p1":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/Node;->sceneToLocal(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v4, v11

    .line 4211
    .local v4, "p2":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/Node;->sceneToLocal(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v5, v11

    .line 4212
    .local v5, "p3":Ljavafx/geometry/Point2D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    invoke-virtual {v11, v12, v13, v14, v15}, Ljavafx/scene/Node;->sceneToLocal(DD)Ljavafx/geometry/Point2D;

    move-result-object v11

    move-object v6, v11

    .line 4214
    .local v6, "p4":Ljavafx/geometry/Point2D;
    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    invoke-static {v11, v12, v13, v14}, Lcom/sun/javafx/geometry/BoundsUtils;->createBoundingBox(Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;)Ljavafx/geometry/Bounds;

    move-result-object v11

    move-object v1, v11

    .line 4227
    .end local v1    # "this":Ljavafx/scene/Node;
    .end local v3    # "p1":Ljavafx/geometry/Point2D;
    .end local v4    # "p2":Ljavafx/geometry/Point2D;
    .end local v5    # "p3":Ljavafx/geometry/Point2D;
    .end local v6    # "p4":Ljavafx/geometry/Point2D;
    :goto_0
    return-object v1

    .line 4217
    .restart local v1    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v11, v1

    move-object v12, v2

    :try_start_0
    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-direct/range {v11 .. v17}, Ljavafx/scene/Node;->sceneToLocal0(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v3, v11

    .line 4218
    .local v3, "p1":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-direct/range {v11 .. v17}, Ljavafx/scene/Node;->sceneToLocal0(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v4, v11

    .line 4219
    .local v4, "p2":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-direct/range {v11 .. v17}, Ljavafx/scene/Node;->sceneToLocal0(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v5, v11

    .line 4220
    .local v5, "p3":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-direct/range {v11 .. v17}, Ljavafx/scene/Node;->sceneToLocal0(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v6, v11

    .line 4221
    .local v6, "p4":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-direct/range {v11 .. v17}, Ljavafx/scene/Node;->sceneToLocal0(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v7, v11

    .line 4222
    .local v7, "p5":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-direct/range {v11 .. v17}, Ljavafx/scene/Node;->sceneToLocal0(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v8, v11

    .line 4223
    .local v8, "p6":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v16

    invoke-direct/range {v11 .. v17}, Ljavafx/scene/Node;->sceneToLocal0(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v9, v11

    .line 4224
    .local v9, "p7":Ljavafx/geometry/Point3D;
    move-object v11, v1

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v12

    move-object v14, v2

    invoke-virtual {v14}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v16

    invoke-direct/range {v11 .. v17}, Ljavafx/scene/Node;->sceneToLocal0(DDD)Ljavafx/geometry/Point3D;

    move-result-object v11

    move-object v10, v11

    .line 4225
    .local v10, "p8":Ljavafx/geometry/Point3D;
    move-object v11, v3

    move-object v12, v4

    move-object v13, v5

    move-object v14, v6

    move-object v15, v7

    move-object/from16 v16, v8

    move-object/from16 v17, v9

    move-object/from16 v18, v10

    invoke-static/range {v11 .. v18}, Lcom/sun/javafx/geometry/BoundsUtils;->createBoundingBox(Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;Ljavafx/geometry/Point3D;)Ljavafx/geometry/Bounds;
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v11

    move-object v1, v11

    goto/16 :goto_0

    .line 4226
    .end local v3    # "p1":Ljavafx/geometry/Point3D;
    .end local v4    # "p2":Ljavafx/geometry/Point3D;
    .end local v5    # "p3":Ljavafx/geometry/Point3D;
    .end local v6    # "p4":Ljavafx/geometry/Point3D;
    .end local v7    # "p5":Ljavafx/geometry/Point3D;
    .end local v8    # "p6":Ljavafx/geometry/Point3D;
    .end local v9    # "p7":Ljavafx/geometry/Point3D;
    .end local v10    # "p8":Ljavafx/geometry/Point3D;
    :catch_0
    move-exception v11

    move-object v3, v11

    .line 4227
    .local v3, "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    const/4 v11, 0x0

    move-object v1, v11

    goto/16 :goto_0
.end method

.method public sceneToLocal(Ljavafx/geometry/Bounds;Z)Ljavafx/geometry/Bounds;
    .locals 13

    .prologue
    .line 4090
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "bounds":Ljavafx/geometry/Bounds;
    move v2, p2

    .local v2, "rootScene":Z
    move v7, v2

    if-nez v7, :cond_0

    .line 4091
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavafx/scene/Node;->sceneToLocal(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;

    move-result-object v7

    move-object v0, v7

    .line 4101
    .end local v0    # "this":Ljavafx/scene/Node;
    :goto_0
    return-object v0

    .line 4093
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/geometry/Bounds;->getMinZ()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-nez v7, :cond_1

    move-object v7, v1

    invoke-virtual {v7}, Ljavafx/geometry/Bounds;->getMaxZ()D

    move-result-wide v7

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-eqz v7, :cond_2

    .line 4094
    :cond_1
    const/4 v7, 0x0

    move-object v0, v7

    goto :goto_0

    .line 4096
    :cond_2
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v10

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Ljavafx/scene/Node;->sceneToLocal(DDZ)Ljavafx/geometry/Point2D;

    move-result-object v7

    move-object v3, v7

    .line 4097
    .local v3, "p1":Ljavafx/geometry/Point2D;
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v10

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Ljavafx/scene/Node;->sceneToLocal(DDZ)Ljavafx/geometry/Point2D;

    move-result-object v7

    move-object v4, v7

    .line 4098
    .local v4, "p2":Ljavafx/geometry/Point2D;
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v10

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Ljavafx/scene/Node;->sceneToLocal(DDZ)Ljavafx/geometry/Point2D;

    move-result-object v7

    move-object v5, v7

    .line 4099
    .local v5, "p3":Ljavafx/geometry/Point2D;
    move-object v7, v0

    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v10

    const/4 v12, 0x1

    invoke-virtual/range {v7 .. v12}, Ljavafx/scene/Node;->sceneToLocal(DDZ)Ljavafx/geometry/Point2D;

    move-result-object v7

    move-object v6, v7

    .line 4101
    .local v6, "p4":Ljavafx/geometry/Point2D;
    move-object v7, v3

    move-object v8, v4

    move-object v9, v5

    move-object v10, v6

    invoke-static {v7, v8, v9, v10}, Lcom/sun/javafx/geometry/BoundsUtils;->createBoundingBox(Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;)Ljavafx/geometry/Bounds;

    move-result-object v7

    move-object v0, v7

    goto :goto_0
.end method

.method public sceneToLocal(DD)Ljavafx/geometry/Point2D;
    .locals 15

    .prologue
    .line 4118
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-wide/from16 v2, p1

    .local v2, "sceneX":D
    move-wide/from16 v4, p3

    .local v4, "sceneY":D
    invoke-static {}, Lcom/sun/javafx/util/TempState;->getInstance()Lcom/sun/javafx/util/TempState;

    move-result-object v8

    iget-object v8, v8, Lcom/sun/javafx/util/TempState;->point:Lcom/sun/javafx/geom/Point2D;

    move-object v6, v8

    .line 4119
    .local v6, "tempPt":Lcom/sun/javafx/geom/Point2D;
    move-object v8, v6

    move-wide v9, v2

    double-to-float v9, v9

    move-wide v10, v4

    double-to-float v10, v10

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 4121
    move-object v8, v1

    move-object v9, v6

    :try_start_0
    invoke-virtual {v8, v9}, Ljavafx/scene/Node;->sceneToLocal(Lcom/sun/javafx/geom/Point2D;)V
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 4124
    .line 4125
    new-instance v8, Ljavafx/geometry/Point2D;

    move-object v14, v8

    move-object v8, v14

    move-object v9, v14

    move-object v10, v6

    iget v10, v10, Lcom/sun/javafx/geom/Point2D;->x:F

    float-to-double v10, v10

    move-object v12, v6

    iget v12, v12, Lcom/sun/javafx/geom/Point2D;->y:F

    float-to-double v12, v12

    invoke-direct {v9, v10, v11, v12, v13}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v1, v8

    .end local v1    # "this":Ljavafx/scene/Node;
    :goto_0
    return-object v1

    .line 4122
    .restart local v1    # "this":Ljavafx/scene/Node;
    :catch_0
    move-exception v8

    move-object v7, v8

    .line 4123
    .local v7, "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    const/4 v8, 0x0

    move-object v1, v8

    goto :goto_0
.end method

.method public sceneToLocal(DDZ)Ljavafx/geometry/Point2D;
    .locals 19

    .prologue
    .line 4034
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-wide/from16 v2, p1

    .local v2, "x":D
    move-wide/from16 v4, p3

    .local v4, "y":D
    move/from16 v6, p5

    .local v6, "rootScene":Z
    move v10, v6

    if-nez v10, :cond_0

    .line 4035
    move-object v10, v1

    move-wide v11, v2

    move-wide v13, v4

    invoke-virtual {v10, v11, v12, v13, v14}, Ljavafx/scene/Node;->sceneToLocal(DD)Ljavafx/geometry/Point2D;

    move-result-object v10

    move-object v1, v10

    .line 4056
    .end local v1    # "this":Ljavafx/scene/Node;
    :goto_0
    return-object v1

    .line 4038
    .restart local v1    # "this":Ljavafx/scene/Node;
    :cond_0
    invoke-static {}, Lcom/sun/javafx/util/TempState;->getInstance()Lcom/sun/javafx/util/TempState;

    move-result-object v10

    iget-object v10, v10, Lcom/sun/javafx/util/TempState;->point:Lcom/sun/javafx/geom/Point2D;

    move-object v7, v10

    .line 4040
    .local v7, "tempPt":Lcom/sun/javafx/geom/Point2D;
    move-object v10, v7

    move-wide v11, v2

    double-to-float v11, v11

    move-wide v12, v4

    double-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 4042
    move-object v10, v1

    invoke-virtual {v10}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v10

    move-object v8, v10

    .line 4043
    .local v8, "subScene":Ljavafx/scene/SubScene;
    move-object v10, v8

    if-eqz v10, :cond_2

    .line 4044
    move-object v10, v8

    new-instance v11, Ljavafx/geometry/Point2D;

    move-object/from16 v17, v11

    move-object/from16 v11, v17

    move-object/from16 v12, v17

    move-object v13, v7

    iget v13, v13, Lcom/sun/javafx/geom/Point2D;->x:F

    float-to-double v13, v13

    move-object v15, v7

    iget v15, v15, Lcom/sun/javafx/geom/Point2D;->y:F

    float-to-double v15, v15

    invoke-direct/range {v12 .. v16}, Ljavafx/geometry/Point2D;-><init>(DD)V

    invoke-static {v10, v11}, Lcom/sun/javafx/scene/SceneUtils;->sceneToSubScenePlane(Ljavafx/scene/SubScene;Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v10

    move-object v9, v10

    .line 4046
    .local v9, "ssCoord":Ljavafx/geometry/Point2D;
    move-object v10, v9

    if-nez v10, :cond_1

    .line 4047
    const/4 v10, 0x0

    move-object v1, v10

    goto :goto_0

    .line 4049
    :cond_1
    move-object v10, v7

    move-object v11, v9

    invoke-virtual {v11}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v11

    double-to-float v11, v11

    move-object v12, v9

    invoke-virtual {v12}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v12

    double-to-float v12, v12

    invoke-virtual {v10, v11, v12}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 4053
    .end local v9    # "ssCoord":Ljavafx/geometry/Point2D;
    :cond_2
    move-object v10, v1

    move-object v11, v7

    :try_start_0
    invoke-virtual {v10, v11}, Ljavafx/scene/Node;->sceneToLocal(Lcom/sun/javafx/geom/Point2D;)V

    .line 4054
    new-instance v10, Ljavafx/geometry/Point2D;

    move-object/from16 v17, v10

    move-object/from16 v10, v17

    move-object/from16 v11, v17

    move-object v12, v7

    iget v12, v12, Lcom/sun/javafx/geom/Point2D;->x:F

    float-to-double v12, v12

    move-object v14, v7

    iget v14, v14, Lcom/sun/javafx/geom/Point2D;->y:F

    float-to-double v14, v14

    invoke-direct {v11, v12, v13, v14, v15}, Ljavafx/geometry/Point2D;-><init>(DD)V
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v1, v10

    goto :goto_0

    .line 4055
    :catch_0
    move-exception v10

    move-object v9, v10

    .line 4056
    .local v9, "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    const/4 v10, 0x0

    move-object v1, v10

    goto :goto_0
.end method

.method public sceneToLocal(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;
    .locals 8

    .prologue
    .line 4140
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, p1

    .local v2, "scenePoint":Ljavafx/geometry/Point2D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/Node;->sceneToLocal(DD)Ljavafx/geometry/Point2D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/Node;
    return-object v1
.end method

.method public sceneToLocal(Ljavafx/geometry/Point2D;Z)Ljavafx/geometry/Point2D;
    .locals 9

    .prologue
    .line 4072
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "point":Ljavafx/geometry/Point2D;
    move v2, p2

    .local v2, "rootScene":Z
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    move v8, v2

    invoke-virtual/range {v3 .. v8}, Ljavafx/scene/Node;->sceneToLocal(DDZ)Ljavafx/geometry/Point2D;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public sceneToLocal(DDD)Ljavafx/geometry/Point3D;
    .locals 17

    .prologue
    .line 4175
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-wide/from16 v2, p1

    .local v2, "sceneX":D
    move-wide/from16 v4, p3

    .local v4, "sceneY":D
    move-wide/from16 v6, p5

    .local v6, "sceneZ":D
    move-object v9, v1

    move-wide v10, v2

    move-wide v12, v4

    move-wide v14, v6

    :try_start_0
    invoke-direct/range {v9 .. v15}, Ljavafx/scene/Node;->sceneToLocal0(DDD)Ljavafx/geometry/Point3D;
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v9

    move-object v1, v9

    .line 4177
    .end local v1    # "this":Ljavafx/scene/Node;
    :goto_0
    return-object v1

    .line 4176
    .restart local v1    # "this":Ljavafx/scene/Node;
    :catch_0
    move-exception v9

    move-object v8, v9

    .line 4177
    .local v8, "ex":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    const/4 v9, 0x0

    move-object v1, v9

    goto :goto_0
.end method

.method public sceneToLocal(Ljavafx/geometry/Point3D;)Ljavafx/geometry/Point3D;
    .locals 10

    .prologue
    .line 4156
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, p1

    .local v2, "scenePoint":Ljavafx/geometry/Point3D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v6

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v8

    invoke-virtual/range {v3 .. v9}, Ljavafx/scene/Node;->sceneToLocal(DDD)Ljavafx/geometry/Point3D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/Node;
    return-object v1
.end method

.method sceneToLocal(Lcom/sun/javafx/geom/Point2D;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 4821
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "pt":Lcom/sun/javafx/geom/Point2D;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4822
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/Parent;->sceneToLocal(Lcom/sun/javafx/geom/Point2D;)V

    .line 4824
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->parentToLocal(Lcom/sun/javafx/geom/Point2D;)V

    .line 4825
    return-void
.end method

.method sceneToLocal(Lcom/sun/javafx/geom/Vec3d;)V
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
        }
    .end annotation

    .prologue
    .line 4828
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "pt":Lcom/sun/javafx/geom/Vec3d;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 4829
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/Parent;->sceneToLocal(Lcom/sun/javafx/geom/Vec3d;)V

    .line 4831
    :cond_0
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->parentToLocal(Lcom/sun/javafx/geom/Vec3d;)V

    .line 4832
    return-void
.end method

.method scenesChanged(Ljavafx/scene/Scene;Ljavafx/scene/SubScene;Ljavafx/scene/Scene;Ljavafx/scene/SubScene;)V
    .locals 0
    .param p1, "newScene"    # Ljavafx/scene/Scene;
    .param p2, "newSubScene"    # Ljavafx/scene/SubScene;
    .param p3, "oldScene"    # Ljavafx/scene/Scene;
    .param p4, "oldSubScene"    # Ljavafx/scene/SubScene;

    .prologue
    .line 943
    return-void
.end method

.method public screenToLocal(Ljavafx/geometry/Bounds;)Ljavafx/geometry/Bounds;
    .locals 12

    .prologue
    .line 4012
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, p1

    .local v2, "screenBounds":Ljavafx/geometry/Bounds;
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Ljavafx/scene/Node;->screenToLocal(DD)Ljavafx/geometry/Point2D;

    move-result-object v7

    move-object v3, v7

    .line 4013
    .local v3, "p1":Ljavafx/geometry/Point2D;
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMinX()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Ljavafx/scene/Node;->screenToLocal(DD)Ljavafx/geometry/Point2D;

    move-result-object v7

    move-object v4, v7

    .line 4014
    .local v4, "p2":Ljavafx/geometry/Point2D;
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Ljavafx/scene/Node;->screenToLocal(DD)Ljavafx/geometry/Point2D;

    move-result-object v7

    move-object v5, v7

    .line 4015
    .local v5, "p3":Ljavafx/geometry/Point2D;
    move-object v7, v1

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/geometry/Bounds;->getMaxX()D

    move-result-wide v8

    move-object v10, v2

    invoke-virtual {v10}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v10

    invoke-virtual {v7, v8, v9, v10, v11}, Ljavafx/scene/Node;->screenToLocal(DD)Ljavafx/geometry/Point2D;

    move-result-object v7

    move-object v6, v7

    .line 4017
    .local v6, "p4":Ljavafx/geometry/Point2D;
    move-object v7, v3

    move-object v8, v4

    move-object v9, v5

    move-object v10, v6

    invoke-static {v7, v8, v9, v10}, Lcom/sun/javafx/geometry/BoundsUtils;->createBoundingBox(Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;Ljavafx/geometry/Point2D;)Ljavafx/geometry/Bounds;

    move-result-object v7

    move-object v1, v7

    .end local v1    # "this":Ljavafx/scene/Node;
    return-object v1
.end method

.method public screenToLocal(DD)Ljavafx/geometry/Point2D;
    .locals 21

    .prologue
    .line 3957
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/Node;
    move-wide/from16 v3, p1

    .local v3, "screenX":D
    move-wide/from16 v5, p3

    .local v5, "screenY":D
    move-object v13, v2

    invoke-virtual {v13}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v13

    move-object v7, v13

    .line 3958
    .local v7, "scene":Ljavafx/scene/Scene;
    move-object v13, v7

    if-nez v13, :cond_0

    const/4 v13, 0x0

    move-object v2, v13

    .line 3987
    .end local v2    # "this":Ljavafx/scene/Node;
    :goto_0
    return-object v2

    .line 3959
    .restart local v2    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v13, v7

    invoke-virtual {v13}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v13

    move-object v8, v13

    .line 3960
    .local v8, "window":Ljavafx/stage/Window;
    move-object v13, v8

    if-nez v13, :cond_1

    const/4 v13, 0x0

    move-object v2, v13

    goto :goto_0

    .line 3963
    :cond_1
    invoke-static {}, Lcom/sun/javafx/util/TempState;->getInstance()Lcom/sun/javafx/util/TempState;

    move-result-object v13

    iget-object v13, v13, Lcom/sun/javafx/util/TempState;->point:Lcom/sun/javafx/geom/Point2D;

    move-object v9, v13

    .line 3965
    .local v9, "tempPt":Lcom/sun/javafx/geom/Point2D;
    move-object v13, v9

    move-wide v14, v3

    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Scene;->getX()D

    move-result-wide v16

    sub-double v14, v14, v16

    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Ljavafx/stage/Window;->getX()D

    move-result-wide v16

    sub-double v14, v14, v16

    double-to-float v14, v14

    move-wide v15, v5

    move-object/from16 v17, v7

    .line 3966
    invoke-virtual/range {v17 .. v17}, Ljavafx/scene/Scene;->getY()D

    move-result-wide v17

    sub-double v15, v15, v17

    move-object/from16 v17, v8

    invoke-virtual/range {v17 .. v17}, Ljavafx/stage/Window;->getY()D

    move-result-wide v17

    sub-double v15, v15, v17

    double-to-float v15, v15

    .line 3965
    invoke-virtual {v13, v14, v15}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 3968
    move-object v13, v2

    invoke-virtual {v13}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v13

    move-object v10, v13

    .line 3969
    .local v10, "subScene":Ljavafx/scene/SubScene;
    move-object v13, v10

    if-eqz v13, :cond_3

    .line 3970
    move-object v13, v10

    new-instance v14, Ljavafx/geometry/Point2D;

    move-object/from16 v20, v14

    move-object/from16 v14, v20

    move-object/from16 v15, v20

    move-object/from16 v16, v9

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->x:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    move-object/from16 v18, v9

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v18, v0

    move/from16 v0, v18

    float-to-double v0, v0

    move-wide/from16 v18, v0

    invoke-direct/range {v15 .. v19}, Ljavafx/geometry/Point2D;-><init>(DD)V

    invoke-static {v13, v14}, Lcom/sun/javafx/scene/SceneUtils;->sceneToSubScenePlane(Ljavafx/scene/SubScene;Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;

    move-result-object v13

    move-object v11, v13

    .line 3972
    .local v11, "ssCoord":Ljavafx/geometry/Point2D;
    move-object v13, v11

    if-nez v13, :cond_2

    .line 3973
    const/4 v13, 0x0

    move-object v2, v13

    goto :goto_0

    .line 3975
    :cond_2
    move-object v13, v9

    move-object v14, v11

    invoke-virtual {v14}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v14

    double-to-float v14, v14

    move-object v15, v11

    invoke-virtual {v15}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v15

    double-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 3978
    .end local v11    # "ssCoord":Ljavafx/geometry/Point2D;
    :cond_3
    move-object v13, v7

    .line 3979
    invoke-virtual {v13}, Ljavafx/scene/Scene;->getEffectiveCamera()Ljavafx/scene/Camera;

    move-result-object v13

    move-object v14, v9

    iget v14, v14, Lcom/sun/javafx/geom/Point2D;->x:F

    float-to-double v14, v14

    move-object/from16 v16, v9

    move-object/from16 v0, v16

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v16, v0

    move/from16 v0, v16

    float-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-virtual/range {v13 .. v17}, Ljavafx/scene/Camera;->pickProjectPlane(DD)Ljavafx/geometry/Point3D;

    move-result-object v13

    move-object v11, v13

    .line 3980
    .local v11, "ppIntersect":Ljavafx/geometry/Point3D;
    move-object v13, v9

    move-object v14, v11

    invoke-virtual {v14}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v14

    double-to-float v14, v14

    move-object v15, v11

    invoke-virtual {v15}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v15

    double-to-float v15, v15

    invoke-virtual {v13, v14, v15}, Lcom/sun/javafx/geom/Point2D;->setLocation(FF)V

    .line 3983
    move-object v13, v2

    move-object v14, v9

    :try_start_0
    invoke-virtual {v13, v14}, Ljavafx/scene/Node;->sceneToLocal(Lcom/sun/javafx/geom/Point2D;)V
    :try_end_0
    .catch Lcom/sun/javafx/geom/transform/NoninvertibleTransformException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3986
    .line 3987
    new-instance v13, Ljavafx/geometry/Point2D;

    move-object/from16 v20, v13

    move-object/from16 v13, v20

    move-object/from16 v14, v20

    move-object v15, v9

    iget v15, v15, Lcom/sun/javafx/geom/Point2D;->x:F

    float-to-double v15, v15

    move-object/from16 v17, v9

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/geom/Point2D;->y:F

    move/from16 v17, v0

    move/from16 v0, v17

    float-to-double v0, v0

    move-wide/from16 v17, v0

    invoke-direct/range {v14 .. v18}, Ljavafx/geometry/Point2D;-><init>(DD)V

    move-object v2, v13

    goto/16 :goto_0

    .line 3984
    :catch_0
    move-exception v13

    move-object v12, v13

    .line 3985
    .local v12, "e":Lcom/sun/javafx/geom/transform/NoninvertibleTransformException;
    const/4 v13, 0x0

    move-object v2, v13

    goto/16 :goto_0
.end method

.method public screenToLocal(Ljavafx/geometry/Point2D;)Ljavafx/geometry/Point2D;
    .locals 8

    .prologue
    .line 3999
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/Node;
    move-object v2, p1

    .local v2, "screenPoint":Ljavafx/geometry/Point2D;
    move-object v3, v1

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v4

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/Node;->screenToLocal(DD)Ljavafx/geometry/Point2D;

    move-result-object v3

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/Node;
    return-object v1
.end method

.method public final setAccessibleHelp(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 9455
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->accessibleHelpProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 9456
    return-void
.end method

.method public final setAccessibleRole(Ljavafx/scene/AccessibleRole;)V
    .locals 4

    .prologue
    .line 9383
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/AccessibleRole;
    move-object v2, v1

    if-nez v2, :cond_0

    sget-object v2, Ljavafx/scene/AccessibleRole;->NODE:Ljavafx/scene/AccessibleRole;

    move-object v1, v2

    .line 9384
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->accessibleRoleProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 9385
    return-void
.end method

.method public final setAccessibleRoleDescription(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 9400
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->accessibleRoleDescriptionProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 9401
    return-void
.end method

.method public final setAccessibleText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 9428
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->accessibleTextProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 9429
    return-void
.end method

.method public final setBlendMode(Ljavafx/scene/effect/BlendMode;)V
    .locals 4

    .prologue
    .line 1286
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/BlendMode;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->blendModeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1287
    return-void
.end method

.method public final setCache(Z)V
    .locals 4

    .prologue
    .line 1360
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->cacheProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 1361
    return-void
.end method

.method public final setCacheHint(Ljavafx/scene/CacheHint;)V
    .locals 4

    .prologue
    .line 1394
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/CacheHint;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->cacheHintProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1395
    return-void
.end method

.method public final setClip(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 1319
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->clipProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1320
    return-void
.end method

.method public final setCursor(Ljavafx/scene/Cursor;)V
    .locals 4

    .prologue
    .line 1185
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Cursor;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->cursorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1186
    return-void
.end method

.method public final setDepthTest(Ljavafx/scene/DepthTest;)V
    .locals 4

    .prologue
    .line 1483
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/DepthTest;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->depthTestProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1484
    return-void
.end method

.method setDerivedDepthTest(Z)V
    .locals 4

    .prologue
    .line 1556
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/scene/Node;->derivedDepthTest:Z

    .line 1557
    return-void
.end method

.method public final setDisable(Z)V
    .locals 4

    .prologue
    .line 1564
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->disableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 1565
    return-void
.end method

.method protected final setDisabled(Z)V
    .locals 4

    .prologue
    .line 1642
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Node;->disabledPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 1643
    return-void
.end method

.method public final setEffect(Ljavafx/scene/effect/Effect;)V
    .locals 4

    .prologue
    .line 1454
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/effect/Effect;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->effectProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1455
    return-void
.end method

.method public final setEventDispatcher(Ljavafx/event/EventDispatcher;)V
    .locals 4

    .prologue
    .line 8198
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventDispatcher;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->eventDispatcherProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 8199
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
    .line 8301
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "eventType":Ljavafx/event/EventType;, "Ljavafx/event/EventType<TT;>;"
    move-object v2, p2

    .local v2, "eventHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-TT;>;"
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Node;->getInternalEventDispatcher()Lcom/sun/javafx/scene/NodeEventDispatcher;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/scene/NodeEventDispatcher;->getEventHandlerManager()Lcom/sun/javafx/event/EventHandlerManager;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    .line 8302
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/event/EventHandlerManager;->setEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 8303
    return-void
.end method

.method public final setFocusTraversable(Z)V
    .locals 4

    .prologue
    .line 7809
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 7810
    return-void
.end method

.method protected final setFocused(Z)V
    .locals 5

    .prologue
    .line 7768
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "value":Z
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Node;->focusedPropertyImpl()Ljavafx/scene/Node$FocusedProperty;

    move-result-object v3

    move-object v2, v3

    .line 7769
    .local v2, "fp":Ljavafx/scene/Node$FocusedProperty;
    move-object v3, v2

    invoke-static {v3}, Ljavafx/scene/Node$FocusedProperty;->access$4600(Ljavafx/scene/Node$FocusedProperty;)Z

    move-result v3

    move v4, v1

    if-eq v3, v4, :cond_0

    .line 7770
    move-object v3, v2

    move v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/Node$FocusedProperty;->store(Z)V

    .line 7771
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Node$FocusedProperty;->notifyListeners()V

    .line 7773
    :cond_0
    return-void
.end method

.method protected final setHover(Z)V
    .locals 4

    .prologue
    .line 6889
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Node;->hoverPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 6890
    return-void
.end method

.method public final setId(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 963
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->idProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 964
    return-void
.end method

.method public final setInputMethodRequests(Ljavafx/scene/input/InputMethodRequests;)V
    .locals 4

    .prologue
    .line 7668
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/input/InputMethodRequests;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->inputMethodRequestsProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7669
    return-void
.end method

.method public final setLayoutX(D)V
    .locals 7

    .prologue
    .line 2463
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->layoutXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 2464
    return-void
.end method

.method public final setLayoutY(D)V
    .locals 7

    .prologue
    .line 2535
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->layoutYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 2536
    return-void
.end method

.method public final setManaged(Z)V
    .locals 4

    .prologue
    .line 2389
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->managedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 2390
    return-void
.end method

.method public final setMouseTransparent(Z)V
    .locals 4

    .prologue
    .line 6855
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->mouseTransparentProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 6856
    return-void
.end method

.method public final setNodeOrientation(Ljavafx/geometry/NodeOrientation;)V
    .locals 4

    .prologue
    .line 6117
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "orientation":Ljavafx/geometry/NodeOrientation;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->nodeOrientationProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 6118
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
    .line 6977
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ContextMenuEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onContextMenuRequestedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 6978
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
    .line 7128
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onDragDetectedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7129
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
    .line 2168
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/DragEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onDragDoneProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 2169
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
    .line 2147
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/DragEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onDragDroppedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 2148
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
    .line 2067
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/DragEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onDragEnteredProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 2068
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
    .line 2086
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/DragEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onDragExitedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 2087
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
    .line 2105
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/DragEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onDragOverProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 2106
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
    .line 7643
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/InputMethodEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onInputMethodTextChangedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7644
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
    .line 7574
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/KeyEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onKeyPressedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7575
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
    .line 7595
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/KeyEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onKeyReleasedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7596
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
    .line 7616
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/KeyEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onKeyTypedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7617
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
    .line 6997
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onMouseClickedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 6998
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
    .line 7187
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseDragEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onMouseDragEnteredProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7188
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
    .line 7207
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseDragEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onMouseDragExitedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7208
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
    .line 7147
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseDragEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onMouseDragOverProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7148
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
    .line 7167
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseDragEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onMouseDragReleasedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7168
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
    .line 7016
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onMouseDraggedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7017
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
    .line 7035
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onMouseEnteredProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7036
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
    .line 7053
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onMouseExitedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7054
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
    .line 7071
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onMouseMovedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7072
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
    .line 7090
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onMousePressedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7091
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
    .line 7109
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/MouseEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onMouseReleasedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7110
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
    .line 7309
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/RotateEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onRotateProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7310
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
    .line 7328
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/RotateEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onRotationFinishedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7329
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
    .line 7290
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/RotateEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onRotationStartedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7291
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
    .line 7253
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ScrollEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onScrollProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7254
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
    .line 7271
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ScrollEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onScrollFinishedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7272
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
    .line 7234
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ScrollEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onScrollStartedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7235
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
    .line 7424
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/SwipeEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onSwipeDownProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7425
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
    .line 7444
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/SwipeEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onSwipeLeftProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7445
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
    .line 7464
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/SwipeEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onSwipeRightProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7465
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
    .line 7404
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/SwipeEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onSwipeUpProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7405
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
    .line 7510
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/TouchEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onTouchMovedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7511
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
    .line 7491
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/TouchEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onTouchPressedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7492
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
    .line 7529
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/TouchEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onTouchReleasedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7530
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
    .line 7548
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/TouchEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onTouchStationaryProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7549
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
    .line 7366
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ZoomEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onZoomProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7367
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
    .line 7385
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ZoomEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onZoomFinishedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7386
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
    .line 7347
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<-Ljavafx/scene/input/ZoomEvent;>;"
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->onZoomStartedProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 7348
    return-void
.end method

.method public final setOpacity(D)V
    .locals 7

    .prologue
    .line 1237
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->opacityProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 1238
    return-void
.end method

.method final setParent(Ljavafx/scene/Parent;)V
    .locals 4

    .prologue
    .line 720
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Parent;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Node;->parentPropertyImpl()Ljavafx/beans/property/ReadOnlyObjectWrapper;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyObjectWrapper;->set(Ljava/lang/Object;)V

    .line 721
    return-void
.end method

.method public final setPickOnBounds(Z)V
    .locals 4

    .prologue
    .line 1606
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->pickOnBoundsProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 1607
    return-void
.end method

.method protected final setPressed(Z)V
    .locals 4

    .prologue
    .line 6937
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/Node;->pressedPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 6938
    return-void
.end method

.method public final setRotate(D)V
    .locals 7

    .prologue
    .line 5382
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->rotateProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 5383
    return-void
.end method

.method public final setRotationAxis(Ljavafx/geometry/Point3D;)V
    .locals 4

    .prologue
    .line 5420
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljavafx/geometry/Point3D;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->rotationAxisProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 5421
    return-void
.end method

.method public final setScaleX(D)V
    .locals 7

    .prologue
    .line 5296
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->scaleXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 5297
    return-void
.end method

.method public final setScaleY(D)V
    .locals 7

    .prologue
    .line 5323
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->scaleYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 5324
    return-void
.end method

.method public final setScaleZ(D)V
    .locals 7

    .prologue
    .line 5350
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->scaleZProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 5351
    return-void
.end method

.method final setScenes(Ljavafx/scene/Scene;Ljavafx/scene/SubScene;Z)V
    .locals 11

    .prologue
    .line 914
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "newScene":Ljavafx/scene/Scene;
    move-object v2, p2

    .local v2, "newSubScene":Ljavafx/scene/SubScene;
    move v3, p3

    .local v3, "reapplyCSS":Z
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/Node;->sceneProperty()Ljavafx/beans/property/ReadOnlyObjectProperty;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/beans/property/ReadOnlyObjectProperty;->get()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljavafx/scene/Scene;

    move-object v4, v7

    .line 915
    .local v4, "oldScene":Ljavafx/scene/Scene;
    move-object v7, v1

    move-object v8, v4

    if-ne v7, v8, :cond_0

    move-object v7, v2

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/Node;->subScene:Ljavafx/scene/SubScene;

    if-eq v7, v8, :cond_1

    .line 916
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Node;->scene:Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;

    move-object v8, v1

    invoke-virtual {v7, v8}, Ljavafx/scene/Node$ReadOnlyObjectWrapperManualFire;->set(Ljava/lang/Object;)V

    .line 917
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/Node;->subScene:Ljavafx/scene/SubScene;

    move-object v5, v7

    .line 918
    .local v5, "oldSubScene":Ljavafx/scene/SubScene;
    move-object v7, v0

    move-object v8, v2

    iput-object v8, v7, Ljavafx/scene/Node;->subScene:Ljavafx/scene/SubScene;

    .line 919
    move-object v7, v0

    move-object v8, v4

    move-object v9, v5

    move v10, v3

    invoke-direct {v7, v8, v9, v10}, Ljavafx/scene/Node;->invalidatedScenes(Ljavafx/scene/Scene;Ljavafx/scene/SubScene;Z)V

    .line 920
    move-object v7, v0

    instance-of v7, v7, Ljavafx/scene/SubScene;

    if-eqz v7, :cond_1

    .line 921
    move-object v7, v0

    check-cast v7, Ljavafx/scene/SubScene;

    move-object v6, v7

    .line 922
    .local v6, "thisSubScene":Ljavafx/scene/SubScene;
    move-object v7, v6

    invoke-virtual {v7}, Ljavafx/scene/SubScene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v7

    move-object v8, v1

    move-object v9, v6

    move v10, v3

    invoke-virtual {v7, v8, v9, v10}, Ljavafx/scene/Parent;->setScenes(Ljavafx/scene/Scene;Ljavafx/scene/SubScene;Z)V

    .line 925
    .end local v5    # "oldSubScene":Ljavafx/scene/SubScene;
    .end local v6    # "thisSubScene":Ljavafx/scene/SubScene;
    :cond_1
    return-void
.end method

.method public final setStyle(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1073
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->styleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 1074
    return-void
.end method

.method public final setTranslateX(D)V
    .locals 7

    .prologue
    .line 5212
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->translateXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 5213
    return-void
.end method

.method public final setTranslateY(D)V
    .locals 7

    .prologue
    .line 5239
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->translateYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 5240
    return-void
.end method

.method public final setTranslateZ(D)V
    .locals 7

    .prologue
    .line 5266
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->translateZProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 5267
    return-void
.end method

.method final setTreeVisible(Z)V
    .locals 5

    .prologue
    .line 8005
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "value":Z
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/Node;->treeVisible:Z

    move v4, v1

    if-eq v3, v4, :cond_2

    .line 8006
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Ljavafx/scene/Node;->treeVisible:Z

    .line 8007
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Node;->updateCanReceiveFocus()V

    .line 8008
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    invoke-direct {v3, v4}, Ljavafx/scene/Node;->focusSetDirty(Ljavafx/scene/Scene;)V

    .line 8009
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->getClip()Ljavafx/scene/Node;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 8010
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->getClip()Ljavafx/scene/Node;

    move-result-object v3

    const/4 v4, 0x1

    invoke-direct {v3, v4}, Ljavafx/scene/Node;->updateTreeVisible(Z)V

    .line 8012
    :cond_0
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/scene/Node;->treeVisible:Z

    if-eqz v3, :cond_1

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->impl_isDirtyEmpty()Z

    move-result v3

    if-nez v3, :cond_1

    .line 8013
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/Node;->addToSceneDirtyList()V

    .line 8015
    :cond_1
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->impl_treeVisibleProperty()Ljavafx/beans/binding/BooleanExpression;

    move-result-object v3

    check-cast v3, Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;

    invoke-virtual {v3}, Ljavafx/scene/Node$TreeVisiblePropertyReadOnly;->invalidate()V

    .line 8016
    move-object v3, v0

    instance-of v3, v3, Ljavafx/scene/SubScene;

    if-eqz v3, :cond_2

    .line 8017
    move-object v3, v0

    check-cast v3, Ljavafx/scene/SubScene;

    invoke-virtual {v3}, Ljavafx/scene/SubScene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v3

    move-object v2, v3

    .line 8018
    .local v2, "subSceneRoot":Ljavafx/scene/Node;
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 8021
    move-object v3, v2

    move v4, v1

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Node;->isVisible()Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v3, v4}, Ljavafx/scene/Node;->setTreeVisible(Z)V

    .line 8025
    .end local v2    # "subSceneRoot":Ljavafx/scene/Node;
    :cond_2
    return-void

    .line 8021
    .restart local v2    # "subSceneRoot":Ljavafx/scene/Node;
    :cond_3
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public setUserData(Ljava/lang/Object;)V
    .locals 5

    .prologue
    .line 691
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    sget-object v3, Ljavafx/scene/Node;->USER_DATA_KEY:Ljava/lang/Object;

    move-object v4, v1

    invoke-interface {v2, v3, v4}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 692
    return-void
.end method

.method public final setVisible(Z)V
    .locals 4

    .prologue
    .line 1138
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->visibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 1139
    return-void
.end method

.method public snapshot(Ljavafx/scene/SnapshotParameters;Ljavafx/scene/image/WritableImage;)Ljavafx/scene/image/WritableImage;
    .locals 8

    .prologue
    .line 1928
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "params":Ljavafx/scene/SnapshotParameters;
    move-object v2, p2

    .local v2, "image":Ljavafx/scene/image/WritableImage;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 1930
    move-object v4, v1

    if-nez v4, :cond_0

    .line 1931
    new-instance v4, Ljavafx/scene/SnapshotParameters;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    invoke-direct {v5}, Ljavafx/scene/SnapshotParameters;-><init>()V

    move-object v1, v4

    .line 1932
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    move-object v3, v4

    .line 1933
    .local v3, "s":Ljavafx/scene/Scene;
    move-object v4, v3

    if-eqz v4, :cond_0

    .line 1934
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getEffectiveCamera()Ljavafx/scene/Camera;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/SnapshotParameters;->setCamera(Ljavafx/scene/Camera;)V

    .line 1935
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Scene;->isDepthBufferInternal()Z

    move-result v5

    invoke-virtual {v4, v5}, Ljavafx/scene/SnapshotParameters;->setDepthBuffer(Z)V

    .line 1936
    move-object v4, v1

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljavafx/scene/SnapshotParameters;->setFill(Ljavafx/scene/paint/Paint;)V

    .line 1940
    .end local v3    # "s":Ljavafx/scene/Scene;
    :cond_0
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/scene/Node;->doSnapshot(Ljavafx/scene/SnapshotParameters;Ljavafx/scene/image/WritableImage;)Ljavafx/scene/image/WritableImage;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public snapshot(Ljavafx/util/Callback;Ljavafx/scene/SnapshotParameters;Ljavafx/scene/image/WritableImage;)V
    .locals 13
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/Callback",
            "<",
            "Ljavafx/scene/SnapshotResult;",
            "Ljava/lang/Void;",
            ">;",
            "Ljavafx/scene/SnapshotParameters;",
            "Ljavafx/scene/image/WritableImage;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2019
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "callback":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/SnapshotResult;Ljava/lang/Void;>;"
    move-object v2, p2

    .local v2, "params":Ljavafx/scene/SnapshotParameters;
    move-object/from16 v3, p3

    .local v3, "image":Ljavafx/scene/image/WritableImage;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 2020
    move-object v8, v1

    if-nez v8, :cond_0

    .line 2021
    new-instance v8, Ljava/lang/NullPointerException;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const-string v10, "The callback must not be null"

    invoke-direct {v9, v10}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 2024
    :cond_0
    move-object v8, v2

    if-nez v8, :cond_2

    .line 2025
    new-instance v8, Ljavafx/scene/SnapshotParameters;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    invoke-direct {v9}, Ljavafx/scene/SnapshotParameters;-><init>()V

    move-object v2, v8

    .line 2026
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v8

    move-object v4, v8

    .line 2027
    .local v4, "s":Ljavafx/scene/Scene;
    move-object v8, v4

    if-eqz v8, :cond_1

    .line 2028
    move-object v8, v2

    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/Scene;->getEffectiveCamera()Ljavafx/scene/Camera;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavafx/scene/SnapshotParameters;->setCamera(Ljavafx/scene/Camera;)V

    .line 2029
    move-object v8, v2

    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/Scene;->isDepthBufferInternal()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljavafx/scene/SnapshotParameters;->setDepthBuffer(Z)V

    .line 2030
    move-object v8, v2

    move-object v9, v4

    invoke-virtual {v9}, Ljavafx/scene/Scene;->getFill()Ljavafx/scene/paint/Paint;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavafx/scene/SnapshotParameters;->setFill(Ljavafx/scene/paint/Paint;)V

    .line 2032
    .line 2036
    .end local v4    # "s":Ljavafx/scene/Scene;
    :cond_1
    :goto_0
    move-object v8, v2

    move-object v4, v8

    .line 2037
    .local v4, "theParams":Ljavafx/scene/SnapshotParameters;
    move-object v8, v1

    move-object v5, v8

    .line 2038
    .local v5, "theCallback":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/SnapshotResult;Ljava/lang/Void;>;"
    move-object v8, v3

    move-object v6, v8

    .line 2043
    .local v6, "theImage":Ljavafx/scene/image/WritableImage;
    move-object v8, v0

    move-object v9, v4

    move-object v10, v6

    move-object v11, v5

    invoke-static {v8, v9, v10, v11}, Ljavafx/scene/Node$$Lambda$1;->lambdaFactory$(Ljavafx/scene/Node;Ljavafx/scene/SnapshotParameters;Ljavafx/scene/image/WritableImage;Ljavafx/util/Callback;)Ljava/lang/Runnable;

    move-result-object v8

    move-object v7, v8

    .line 2056
    .local v7, "snapshotRunnable":Ljava/lang/Runnable;
    move-object v8, v7

    invoke-static {v8}, Ljavafx/scene/Scene;->addSnapshotRunnable(Ljava/lang/Runnable;)V

    .line 2057
    return-void

    .line 2033
    .end local v4    # "theParams":Ljavafx/scene/SnapshotParameters;
    .end local v5    # "theCallback":Ljavafx/util/Callback;, "Ljavafx/util/Callback<Ljavafx/scene/SnapshotResult;Ljava/lang/Void;>;"
    .end local v6    # "theImage":Ljavafx/scene/image/WritableImage;
    .end local v7    # "snapshotRunnable":Ljava/lang/Runnable;
    :cond_2
    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/SnapshotParameters;->copy()Ljavafx/scene/SnapshotParameters;

    move-result-object v8

    move-object v2, v8

    goto :goto_0
.end method

.method public varargs startDragAndDrop([Ljavafx/scene/input/TransferMode;)Ljavafx/scene/input/Dragboard;
    .locals 6

    .prologue
    .line 2211
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "transferModes":[Ljavafx/scene/input/TransferMode;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2212
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v2

    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Scene;->startDragAndDrop(Ljavafx/event/EventTarget;[Ljavafx/scene/input/TransferMode;)Ljavafx/scene/input/Dragboard;

    move-result-object v2

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 2215
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Cannot start drag and drop on node that is not in scene"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public startFullDrag()V
    .locals 5

    .prologue
    .line 2233
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 2234
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljavafx/scene/Scene;->startFullDrag(Ljavafx/event/EventTarget;)V

    .line 2235
    return-void

    .line 2238
    :cond_0
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Cannot start full drag on node that is not in scene"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public final styleProperty()Ljavafx/beans/property/StringProperty;
    .locals 7

    .prologue
    .line 1094
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->style:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    .line 1095
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$4;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, ""

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Node$4;-><init>(Ljavafx/scene/Node;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/Node;->style:Ljavafx/beans/property/StringProperty;

    .line 1122
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->style:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public toBack()V
    .locals 3

    .prologue
    .line 1753
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1754
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljavafx/scene/Parent;->impl_toBack(Ljavafx/scene/Node;)V

    .line 1756
    :cond_0
    return-void
.end method

.method public toFront()V
    .locals 3

    .prologue
    .line 1765
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1766
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Ljavafx/scene/Parent;->impl_toFront(Ljavafx/scene/Node;)V

    .line 1768
    :cond_0
    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 10

    .prologue
    .line 7910
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v6, v0

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v6

    move-object v1, v6

    .line 7911
    .local v1, "klassName":Ljava/lang/String;
    move-object v6, v1

    move-object v7, v1

    const/16 v8, 0x2e

    invoke-virtual {v7, v8}, Ljava/lang/String;->lastIndexOf(I)I

    move-result v7

    const/4 v8, 0x1

    add-int/lit8 v7, v7, 0x1

    invoke-virtual {v6, v7}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v6

    move-object v2, v6

    .line 7912
    .local v2, "simpleName":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    move-object v9, v6

    move-object v6, v9

    move-object v7, v9

    move-object v8, v2

    invoke-direct {v7, v8}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    move-object v3, v6

    .line 7913
    .local v3, "sbuf":Ljava/lang/StringBuilder;
    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/Node;->id:Ljavafx/beans/property/StringProperty;

    if-eqz v6, :cond_2

    const-string v6, ""

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/Node;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-nez v6, :cond_2

    const/4 v6, 0x1

    :goto_0
    move v4, v6

    .line 7914
    .local v4, "hasId":Z
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_3

    const/4 v6, 0x1

    :goto_1
    move v5, v6

    .line 7916
    .local v5, "hasStyleClass":Z
    move v6, v4

    if-nez v6, :cond_4

    .line 7917
    move-object v6, v3

    const/16 v7, 0x40

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 7918
    move-object v6, v3

    move-object v7, v0

    invoke-virtual {v7}, Ljava/lang/Object;->hashCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 7924
    :cond_0
    :goto_2
    move v6, v5

    if-eqz v6, :cond_1

    .line 7925
    move v6, v4

    if-nez v6, :cond_5

    move-object v6, v3

    const/16 v7, 0x5b

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 7927
    :goto_3
    move-object v6, v3

    const-string v7, "styleClass="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 7928
    move-object v6, v3

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 7929
    move-object v6, v3

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 7931
    :cond_1
    move-object v6, v3

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    move-object v0, v6

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0

    .line 7913
    .end local v4    # "hasId":Z
    .end local v5    # "hasStyleClass":Z
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_2
    const/4 v6, 0x0

    goto :goto_0

    .line 7914
    .restart local v4    # "hasId":Z
    :cond_3
    const/4 v6, 0x0

    goto :goto_1

    .line 7920
    .restart local v5    # "hasStyleClass":Z
    :cond_4
    move-object v6, v3

    const-string v7, "[id="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 7921
    move-object v6, v3

    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/Node;->getId()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    .line 7922
    move v6, v5

    if-nez v6, :cond_0

    move-object v6, v3

    const-string v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_2

    .line 7926
    :cond_5
    move-object v6, v3

    const-string v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    goto :goto_3
.end method

.method transformedBoundsChanged()V
    .locals 3

    .prologue
    .line 3791
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Node;->txBoundsInvalid:Z

    if-nez v1, :cond_0

    .line 3792
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->txBounds:Lcom/sun/javafx/geom/BaseBounds;

    invoke-virtual {v1}, Lcom/sun/javafx/geom/BaseBounds;->makeEmpty()Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v1

    .line 3793
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/scene/Node;->txBoundsInvalid:Z

    .line 3794
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->invalidateBoundsInParent()V

    .line 3795
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/scene/DirtyBits;->NODE_TRANSFORMED_BOUNDS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v1, v2}, Ljavafx/scene/Node;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 3797
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->isVisible()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 3798
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->notifyParentOfBoundsChange()V

    .line 3800
    :cond_1
    return-void
.end method

.method public final translateXProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 5235
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getNodeTransformation()Ljavafx/scene/Node$NodeTransformation;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$NodeTransformation;->translateXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final translateYProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 5262
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getNodeTransformation()Ljavafx/scene/Node$NodeTransformation;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$NodeTransformation;->translateYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method public final translateZProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 5292
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/Node;->getNodeTransformation()Ljavafx/scene/Node$NodeTransformation;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/scene/Node$NodeTransformation;->translateZProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method updateBounds()V
    .locals 6

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getClip()Ljavafx/scene/Node;

    move-result-object v2

    move-object v1, v2

    .line 528
    .local v1, "n":Ljavafx/scene/Node;
    move-object v2, v1

    if-eqz v2, :cond_0

    .line 529
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->updateBounds()V

    .line 533
    :cond_0
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/Node;->treeVisible:Z

    if-nez v2, :cond_3

    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_VISIBLE:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v2

    if-nez v2, :cond_3

    .line 537
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_TRANSFORM:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_TRANSFORMED_BOUNDS:Lcom/sun/javafx/scene/DirtyBits;

    .line 538
    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v2

    if-nez v2, :cond_1

    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_BOUNDS:Lcom/sun/javafx/scene/DirtyBits;

    .line 539
    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 540
    :cond_1
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/scene/Node;->pendingUpdateBounds:Z

    .line 543
    .line 568
    :cond_2
    :goto_0
    return-void

    .line 547
    :cond_3
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/scene/Node;->pendingUpdateBounds:Z

    if-eqz v2, :cond_4

    .line 548
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_TRANSFORM:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 549
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_TRANSFORMED_BOUNDS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 550
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_BOUNDS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->impl_markDirty(Lcom/sun/javafx/scene/DirtyBits;)V

    .line 552
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/scene/Node;->pendingUpdateBounds:Z

    .line 555
    :cond_4
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_TRANSFORM:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v2

    if-nez v2, :cond_5

    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_TRANSFORMED_BOUNDS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v2

    if-eqz v2, :cond_7

    .line 556
    :cond_5
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_TRANSFORM:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v2

    if-eqz v2, :cond_6

    .line 557
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->updateLocalToParentTransform()V

    .line 559
    :cond_6
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node;->_txBounds:Lcom/sun/javafx/geom/BaseBounds;

    sget-object v5, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->getTransformedBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/Node;->_txBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 563
    :cond_7
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/DirtyBits;->NODE_BOUNDS:Lcom/sun/javafx/scene/DirtyBits;

    invoke-virtual {v2, v3}, Ljavafx/scene/Node;->impl_isDirty(Lcom/sun/javafx/scene/DirtyBits;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 564
    move-object v2, v0

    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node;->_geomBounds:Lcom/sun/javafx/geom/BaseBounds;

    sget-object v5, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/Node;->getGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v3

    iput-object v3, v2, Ljavafx/scene/Node;->_geomBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 568
    :cond_8
    goto :goto_0
.end method

.method updateGeomBounds()V
    .locals 5

    .prologue
    .line 3576
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Node;->geomBoundsInvalid:Z

    if-eqz v1, :cond_0

    .line 3577
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node;->geomBounds:Lcom/sun/javafx/geom/BaseBounds;

    sget-object v4, Lcom/sun/javafx/geom/transform/BaseTransform;->IDENTITY_TRANSFORM:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Node;->impl_computeGeomBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/Node;->geomBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 3578
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/Node;->geomBoundsInvalid:Z

    .line 3580
    :cond_0
    return-void
.end method

.method updateLocalToParentTransform()V
    .locals 22

    .prologue
    .line 4734
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/Node;
    move-object v12, v2

    iget-boolean v12, v12, Ljavafx/scene/Node;->transformDirty:Z

    if-eqz v12, :cond_7

    .line 4735
    move-object v12, v2

    iget-object v12, v12, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v12}, Lcom/sun/javafx/geom/transform/BaseTransform;->setToIdentity()V

    .line 4737
    const/4 v12, 0x0

    move v3, v12

    .line 4738
    .local v3, "mirror":Z
    const-wide/16 v12, 0x0

    move-wide v4, v12

    .line 4739
    .local v4, "mirroringCenter":D
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/Node;->hasMirroring()Z

    move-result v12

    if-eqz v12, :cond_1

    .line 4740
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v12

    move-object v6, v12

    .line 4741
    .local v6, "sceneValue":Ljavafx/scene/Scene;
    move-object v12, v6

    if-eqz v12, :cond_3

    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/scene/Scene;->getRoot()Ljavafx/scene/Parent;

    move-result-object v12

    move-object v13, v2

    if-ne v12, v13, :cond_3

    .line 4744
    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/scene/Scene;->getWidth()D

    move-result-wide v12

    const-wide/high16 v14, 0x4000000000000000L    # 2.0

    div-double/2addr v12, v14

    move-wide v4, v12

    .line 4745
    move-wide v12, v4

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_0

    .line 4746
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/Node;->impl_getPivotX()D

    move-result-wide v12

    move-wide v4, v12

    .line 4749
    :cond_0
    move-object v12, v2

    move-object v13, v2

    iget-object v13, v13, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-wide v14, v4

    const-wide/16 v16, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithTranslation(DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v13

    iput-object v13, v12, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 4751
    move-object v12, v2

    move-object v13, v2

    iget-object v13, v13, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v13 .. v19}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithScale(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v13

    iput-object v13, v12, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 4753
    move-object v12, v2

    move-object v13, v2

    iget-object v13, v13, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-wide v14, v4

    neg-double v14, v14

    const-wide/16 v16, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithTranslation(DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v13

    iput-object v13, v12, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 4762
    .end local v6    # "sceneValue":Ljavafx/scene/Scene;
    :cond_1
    :goto_0
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/Node;->getScaleX()D

    move-result-wide v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_2

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/Node;->getScaleY()D

    move-result-wide v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_2

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/Node;->getScaleZ()D

    move-result-wide v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    cmpl-double v12, v12, v14

    if-nez v12, :cond_2

    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/Node;->getRotate()D

    move-result-wide v12

    const-wide/16 v14, 0x0

    cmpl-double v12, v12, v14

    if-eqz v12, :cond_4

    .line 4764
    :cond_2
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/Node;->impl_getPivotX()D

    move-result-wide v12

    move-wide v6, v12

    .line 4765
    .local v6, "pivotX":D
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/Node;->impl_getPivotY()D

    move-result-wide v12

    move-wide v8, v12

    .line 4766
    .local v8, "pivotY":D
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/Node;->impl_getPivotZ()D

    move-result-wide v12

    move-wide v10, v12

    .line 4768
    .local v10, "pivotZ":D
    move-object v12, v2

    move-object v13, v2

    iget-object v13, v13, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v14, v2

    .line 4769
    invoke-virtual {v14}, Ljavafx/scene/Node;->getTranslateX()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Node;->getLayoutX()D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide/from16 v16, v6

    add-double v14, v14, v16

    move-object/from16 v16, v2

    .line 4770
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Node;->getTranslateY()D

    move-result-wide v16

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Node;->getLayoutY()D

    move-result-wide v18

    add-double v16, v16, v18

    move-wide/from16 v18, v8

    add-double v16, v16, v18

    move-object/from16 v18, v2

    .line 4771
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Node;->getTranslateZ()D

    move-result-wide v18

    move-wide/from16 v20, v10

    add-double v18, v18, v20

    .line 4768
    invoke-virtual/range {v13 .. v19}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithTranslation(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v13

    iput-object v13, v12, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 4772
    move-object v12, v2

    move-object v13, v2

    iget-object v13, v13, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v14, v2

    .line 4773
    invoke-virtual {v14}, Ljavafx/scene/Node;->getRotate()D

    move-result-wide v14

    invoke-static {v14, v15}, Ljava/lang/Math;->toRadians(D)D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Node;->getRotationAxis()Ljavafx/geometry/Point3D;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Point3D;->getX()D

    move-result-wide v16

    move-object/from16 v18, v2

    .line 4774
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Node;->getRotationAxis()Ljavafx/geometry/Point3D;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljavafx/geometry/Point3D;->getY()D

    move-result-wide v18

    move-object/from16 v20, v2

    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/Node;->getRotationAxis()Ljavafx/geometry/Point3D;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljavafx/geometry/Point3D;->getZ()D

    move-result-wide v20

    .line 4772
    invoke-virtual/range {v13 .. v21}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithRotation(DDDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v13

    iput-object v13, v12, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 4775
    move-object v12, v2

    move-object v13, v2

    iget-object v13, v13, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v14, v2

    .line 4776
    invoke-virtual {v14}, Ljavafx/scene/Node;->getScaleX()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Node;->getScaleY()D

    move-result-wide v16

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Node;->getScaleZ()D

    move-result-wide v18

    .line 4775
    invoke-virtual/range {v13 .. v19}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithScale(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v13

    iput-object v13, v12, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 4777
    move-object v12, v2

    move-object v13, v2

    iget-object v13, v13, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-wide v14, v6

    neg-double v14, v14

    move-wide/from16 v16, v8

    move-wide/from16 v0, v16

    neg-double v0, v0

    move-wide/from16 v16, v0

    move-wide/from16 v18, v10

    move-wide/from16 v0, v18

    neg-double v0, v0

    move-wide/from16 v18, v0

    invoke-virtual/range {v13 .. v19}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithTranslation(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v13

    iput-object v13, v12, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 4779
    .line 4786
    .end local v6    # "pivotX":D
    .end local v8    # "pivotY":D
    .end local v10    # "pivotZ":D
    :goto_1
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/Node;->impl_hasTransforms()Z

    move-result v12

    if-eqz v12, :cond_5

    .line 4787
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/Node;->getTransforms()Ljavafx/collections/ObservableList;

    move-result-object v12

    invoke-interface {v12}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v12

    move-object v6, v12

    :goto_2
    move-object v12, v6

    invoke-interface {v12}, Ljava/util/Iterator;->hasNext()Z

    move-result v12

    if-eqz v12, :cond_5

    move-object v12, v6

    invoke-interface {v12}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljavafx/scene/transform/Transform;

    move-object v7, v12

    .line 4788
    .local v7, "t":Ljavafx/scene/transform/Transform;
    move-object v12, v2

    move-object v13, v7

    move-object v14, v2

    iget-object v14, v14, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v13, v14}, Ljavafx/scene/transform/Transform;->impl_derive(Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v13

    iput-object v13, v12, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 4789
    goto :goto_2

    .line 4757
    .end local v7    # "t":Ljavafx/scene/transform/Transform;
    .local v6, "sceneValue":Ljavafx/scene/Scene;
    :cond_3
    const/4 v12, 0x1

    move v3, v12

    .line 4758
    move-object v12, v2

    invoke-virtual {v12}, Ljavafx/scene/Node;->impl_getPivotX()D

    move-result-wide v12

    move-wide v4, v12

    goto/16 :goto_0

    .line 4780
    .end local v6    # "sceneValue":Ljavafx/scene/Scene;
    :cond_4
    move-object v12, v2

    move-object v13, v2

    iget-object v13, v13, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-object v14, v2

    .line 4781
    invoke-virtual {v14}, Ljavafx/scene/Node;->getTranslateX()D

    move-result-wide v14

    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Node;->getLayoutX()D

    move-result-wide v16

    add-double v14, v14, v16

    move-object/from16 v16, v2

    .line 4782
    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Node;->getTranslateY()D

    move-result-wide v16

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Node;->getLayoutY()D

    move-result-wide v18

    add-double v16, v16, v18

    move-object/from16 v18, v2

    .line 4783
    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/Node;->getTranslateZ()D

    move-result-wide v18

    .line 4780
    invoke-virtual/range {v13 .. v19}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithTranslation(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v13

    iput-object v13, v12, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    goto :goto_1

    .line 4793
    :cond_5
    move v12, v3

    if-eqz v12, :cond_6

    .line 4794
    move-object v12, v2

    move-object v13, v2

    iget-object v13, v13, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-wide v14, v4

    const-wide/16 v16, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithTranslation(DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v13

    iput-object v13, v12, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 4796
    move-object v12, v2

    move-object v13, v2

    iget-object v13, v13, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    const-wide/high16 v14, -0x4010000000000000L    # -1.0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v18, 0x3ff0000000000000L    # 1.0

    invoke-virtual/range {v13 .. v19}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithScale(DDD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v13

    iput-object v13, v12, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 4798
    move-object v12, v2

    move-object v13, v2

    iget-object v13, v13, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    move-wide v14, v4

    neg-double v14, v14

    const-wide/16 v16, 0x0

    invoke-virtual/range {v13 .. v17}, Lcom/sun/javafx/geom/transform/BaseTransform;->deriveWithTranslation(DD)Lcom/sun/javafx/geom/transform/BaseTransform;

    move-result-object v13

    iput-object v13, v12, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    .line 4802
    :cond_6
    move-object v12, v2

    const/4 v13, 0x0

    iput-boolean v13, v12, Ljavafx/scene/Node;->transformDirty:Z

    .line 4804
    .end local v3    # "mirror":Z
    .end local v4    # "mirroringCenter":D
    :cond_7
    return-void
.end method

.method updateTxBounds()V
    .locals 5

    .prologue
    .line 3639
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/scene/Node;->txBoundsInvalid:Z

    if-eqz v1, :cond_0

    .line 3640
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/Node;->updateLocalToParentTransform()V

    .line 3641
    move-object v1, v0

    move-object v2, v0

    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/Node;->txBounds:Lcom/sun/javafx/geom/BaseBounds;

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/Node;->localToParentTx:Lcom/sun/javafx/geom/transform/BaseTransform;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Node;->getLocalBounds(Lcom/sun/javafx/geom/BaseBounds;Lcom/sun/javafx/geom/transform/BaseTransform;)Lcom/sun/javafx/geom/BaseBounds;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/Node;->txBounds:Lcom/sun/javafx/geom/BaseBounds;

    .line 3642
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Ljavafx/scene/Node;->txBoundsInvalid:Z

    .line 3644
    :cond_0
    return-void
.end method

.method public usesMirroring()Z
    .locals 2

    .prologue
    .line 6201
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    const/4 v1, 0x1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return v0
.end method

.method public final visibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 7

    .prologue
    .line 1146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->visible:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 1147
    move-object v1, v0

    new-instance v2, Ljavafx/scene/Node$5;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/Node$5;-><init>(Ljavafx/scene/Node;Z)V

    iput-object v2, v1, Ljavafx/scene/Node;->visible:Ljavafx/beans/property/BooleanProperty;

    .line 1181
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/Node;->visible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/Node;
    return-object v0
.end method

.method wouldCreateCycle(Ljavafx/scene/Node;Ljavafx/scene/Node;)Z
    .locals 6

    .prologue
    .line 2273
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "parent":Ljavafx/scene/Node;
    move-object v2, p2

    .local v2, "child":Ljavafx/scene/Node;
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Node;->getClip()Ljavafx/scene/Node;

    move-result-object v4

    if-nez v4, :cond_0

    move-object v4, v2

    instance-of v4, v4, Ljavafx/scene/Parent;

    if-nez v4, :cond_0

    .line 2274
    const/4 v4, 0x0

    move v0, v4

    .line 2289
    .end local v0    # "this":Ljavafx/scene/Node;
    :goto_0
    return v0

    .line 2277
    .restart local v0    # "this":Ljavafx/scene/Node;
    :cond_0
    move-object v4, v1

    move-object v3, v4

    .line 2278
    .local v3, "n":Ljavafx/scene/Node;
    :goto_1
    move-object v4, v3

    move-object v5, v2

    if-eq v4, v5, :cond_4

    .line 2279
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v4

    if-eqz v4, :cond_1

    .line 2280
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v4

    move-object v3, v4

    goto :goto_1

    .line 2281
    :cond_1
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v4

    if-eqz v4, :cond_2

    .line 2282
    move-object v4, v3

    invoke-virtual {v4}, Ljavafx/scene/Node;->getSubScene()Ljavafx/scene/SubScene;

    move-result-object v4

    move-object v3, v4

    goto :goto_1

    .line 2283
    :cond_2
    move-object v4, v3

    iget-object v4, v4, Ljavafx/scene/Node;->clipParent:Ljavafx/scene/Node;

    if-eqz v4, :cond_3

    .line 2284
    move-object v4, v3

    iget-object v4, v4, Ljavafx/scene/Node;->clipParent:Ljavafx/scene/Node;

    move-object v3, v4

    goto :goto_1

    .line 2286
    :cond_3
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 2289
    :cond_4
    const/4 v4, 0x1

    move v0, v4

    goto :goto_0
.end method
