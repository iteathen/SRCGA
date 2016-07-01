.class public Lcom/sun/javafx/scene/control/skin/FXVKSkin;
.super Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;
.source "FXVKSkin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyboardStateKey;,
        Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;,
        Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;,
        Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;,
        Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;,
        Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase",
        "<",
        "Lcom/sun/javafx/scene/control/skin/FXVK;",
        "Lcom/sun/javafx/scene/control/behavior/BehaviorBase",
        "<",
        "Lcom/sun/javafx/scene/control/skin/FXVK;",
        ">;>;"
    }
.end annotation


# static fields
.field private static final GAP:I = 0x6

.field private static KEY_REPEAT_DELAY:D = 0.0

.field private static KEY_REPEAT_DELAY_MAX:D = 0.0

.field private static KEY_REPEAT_DELAY_MIN:D = 0.0

.field private static KEY_REPEAT_RATE:D = 0.0

.field private static KEY_REPEAT_RATE_MAX:D = 0.0

.field private static KEY_REPEAT_RATE_MIN:D = 0.0

.field static final PREF_KEY_HEIGHT:D = 56.0

.field static final PREF_PORTRAIT_KEY_WIDTH:D = 40.0

.field static final VK_HEIGHT:D = 243.0

.field static final VK_SLIDE_MILLIS:D = 250.0

.field private static boardMap:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;",
            ">;>;>;"
        }
    .end annotation
.end field

.field private static hideAfterSlideOut:Z

.field private static primaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

.field private static repeatInitialDelay:Ljavafx/animation/Timeline;

.field private static repeatKey:Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;

.field private static repeatSubsequentDelay:Ljavafx/animation/Timeline;

.field private static secondaryPopup:Ljavafx/stage/Popup;

.field private static secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

.field private static secondaryVKDelay:Ljavafx/animation/Timeline;

.field private static secondaryVKKey:Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;

.field private static slideInTimeline:Ljavafx/animation/Timeline;

.field private static slideOutTimeline:Ljavafx/animation/Timeline;

.field static vkAdjustWindow:Z

.field static vkLookup:Z

.field private static vkPopup:Ljavafx/stage/Popup;

.field private static winY:Ljavafx/beans/property/DoubleProperty;


# instance fields
.field private attachedNode:Ljavafx/scene/Node;

.field private capsDown:Z

.field private currentBoard:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;",
            ">;>;"
        }
    .end annotation
.end field

.field fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

.field private isSymbol:Z

.field private isVKHidden:Z

.field lastTime:J

.field private numCols:I

.field private origWindowYPos:Ljava/lang/Double;

.field private shiftDown:Z

.field unHideEventHandler:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/InputEvent;",
            ">;"
        }
    .end annotation
.end field

.field private vkType:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 83
    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->boardMap:Ljava/util/HashMap;

    .line 156
    new-instance v0, Ljavafx/animation/Timeline;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/animation/Timeline;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->slideInTimeline:Ljavafx/animation/Timeline;

    .line 157
    new-instance v0, Ljavafx/animation/Timeline;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/animation/Timeline;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->slideOutTimeline:Ljavafx/animation/Timeline;

    .line 158
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->hideAfterSlideOut:Z

    .line 169
    const-wide/high16 v0, 0x4079000000000000L    # 400.0

    sput-wide v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->KEY_REPEAT_DELAY:D

    .line 170
    const-wide/high16 v0, 0x4059000000000000L    # 100.0

    sput-wide v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->KEY_REPEAT_DELAY_MIN:D

    .line 171
    const-wide v0, 0x408f400000000000L    # 1000.0

    sput-wide v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->KEY_REPEAT_DELAY_MAX:D

    .line 174
    const-wide/high16 v0, 0x4039000000000000L    # 25.0

    sput-wide v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->KEY_REPEAT_RATE:D

    .line 175
    const-wide/high16 v0, 0x4000000000000000L    # 2.0

    sput-wide v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->KEY_REPEAT_RATE_MIN:D

    .line 176
    const-wide/high16 v0, 0x4049000000000000L    # 50.0

    sput-wide v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->KEY_REPEAT_RATE_MAX:D

    .line 188
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkAdjustWindow:Z

    .line 189
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkLookup:Z

    .line 192
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$$Lambda$7;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v0

    invoke-static {v0}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v0

    .line 221
    new-instance v0, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>()V

    sput-object v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->winY:Ljavafx/beans/property/DoubleProperty;

    .line 223
    sget-object v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->winY:Ljavafx/beans/property/DoubleProperty;

    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$$Lambda$8;->lambdaFactory$()Ljavafx/beans/InvalidationListener;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljavafx/beans/property/DoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/FXVK;)V
    .locals 10

    .prologue
    .line 476
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v2, p1

    .local v2, "fxvk":Lcom/sun/javafx/scene/control/skin/FXVK;
    move-object v3, v1

    move-object v4, v2

    new-instance v5, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move-object v7, v2

    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v8

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/scene/control/behavior/BehaviorBase;-><init>(Ljavafx/scene/control/Control;Ljava/util/List;)V

    invoke-direct {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/BehaviorSkinBase;-><init>(Ljavafx/scene/control/Control;Lcom/sun/javafx/scene/control/behavior/BehaviorBase;)V

    .line 86
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->capsDown:Z

    .line 87
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->shiftDown:Z

    .line 88
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->isSymbol:Z

    .line 89
    move-object v3, v1

    const-wide/16 v4, -0x1

    iput-wide v4, v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->lastTime:J

    .line 179
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkType:Ljava/lang/String;

    .line 324
    move-object v3, v1

    const/4 v4, 0x0

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->isVKHidden:Z

    .line 325
    move-object v3, v1

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->origWindowYPos:Ljava/lang/Double;

    .line 477
    move-object v3, v1

    move-object v4, v2

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    .line 478
    move-object v3, v2

    sget-object v4, Lcom/sun/javafx/scene/control/skin/FXVK;->vk:Lcom/sun/javafx/scene/control/skin/FXVK;

    if-ne v3, v4, :cond_0

    .line 479
    move-object v3, v2

    sput-object v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->primaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    .line 482
    :cond_0
    move-object v3, v2

    sget-object v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->primaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    if-ne v3, v4, :cond_1

    .line 483
    move-object v3, v1

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->setupPrimaryVK()V

    .line 486
    :cond_1
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/FXVK;->attachedNodeProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    new-instance v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;

    move-object v9, v4

    move-object v4, v9

    move-object v5, v9

    move-object v6, v1

    move-object v7, v2

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Lcom/sun/javafx/scene/control/skin/FXVK;)V

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 552
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->attachedNode:Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    return-object v0
.end method

.method static synthetic access$002(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljavafx/scene/Node;)Ljavafx/scene/Node;
    .locals 7

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->attachedNode:Ljavafx/scene/Node;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    return-object v0
.end method

.method static synthetic access$100()Lcom/sun/javafx/scene/control/skin/FXVK;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->primaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->saveWindowPosition(Ljavafx/scene/Node;)V

    return-void
.end method

.method static synthetic access$1100(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->adjustWindowPosition(Ljavafx/scene/Node;)V

    return-void
.end method

.method static synthetic access$1200(Z)V
    .locals 2

    .prologue
    .line 78
    move v0, p0

    .local v0, "x0":Z
    move v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->startSlideOut(Z)V

    return-void
.end method

.method static synthetic access$1300(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->restoreWindowPosition(Ljavafx/scene/Node;)V

    return-void
.end method

.method static synthetic access$1500()Lcom/sun/javafx/scene/control/skin/FXVK;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    return-object v0
.end method

.method static synthetic access$1600()Ljavafx/stage/Popup;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryPopup:Ljavafx/stage/Popup;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->showSecondaryVK(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;)V

    return-void
.end method

.method static synthetic access$1800(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)Z
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->shiftDown:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    return v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)V
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->closeSecondaryVK()V

    return-void
.end method

.method static synthetic access$2002(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;)Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;
    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    sput-object v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVKKey:Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;
    return-object v0
.end method

.method static synthetic access$2100()Ljavafx/animation/Timeline;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVKDelay:Ljavafx/animation/Timeline;

    return-object v0
.end method

.method static synthetic access$2800()D
    .locals 2

    .prologue
    .line 78
    sget-wide v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->KEY_REPEAT_RATE:D

    return-wide v0
.end method

.method static synthetic access$2902(Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;)Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;
    move-object v1, v0

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    sput-object v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->repeatKey:Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;
    return-object v0
.end method

.method static synthetic access$300(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->unRegisterUnhideHandler(Ljavafx/scene/Node;)V

    return-void
.end method

.method static synthetic access$3000()Ljavafx/animation/Timeline;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->repeatInitialDelay:Ljavafx/animation/Timeline;

    return-object v0
.end method

.method static synthetic access$3100()Ljavafx/animation/Timeline;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->repeatSubsequentDelay:Ljavafx/animation/Timeline;

    return-object v0
.end method

.method static synthetic access$400(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->registerUnhideHandler(Ljavafx/scene/Node;)V

    return-void
.end method

.method static synthetic access$500(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/Node;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->updateKeyboardType(Ljavafx/scene/Node;)V

    return-void
.end method

.method static synthetic access$600()Ljavafx/stage/Popup;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkPopup:Ljavafx/stage/Popup;

    return-object v0
.end method

.method static synthetic access$700(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)Z
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->isVKHidden:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    return v0
.end method

.method static synthetic access$702(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Z)Z
    .locals 7

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->isVKHidden:Z

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    return v0
.end method

.method static synthetic access$800()Ljavafx/beans/property/DoubleProperty;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->winY:Ljavafx/beans/property/DoubleProperty;

    return-object v0
.end method

.method static synthetic access$900()V
    .locals 0

    .prologue
    .line 78
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->startSlideIn()V

    return-void
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljavafx/scene/input/InputEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->lambda$registerUnhideHandler$354(Ljavafx/scene/input/InputEvent;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/event/ActionEvent;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->lambda$setupPrimaryVK$355(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->lambda$setupPrimaryVK$356(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/event/ActionEvent;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->lambda$setupPrimaryVK$357(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$4(Ljavafx/event/ActionEvent;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->lambda$setupPrimaryVK$358(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$5(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;DD)V
    .locals 11

    move-object v0, p0

    move-wide v1, p1

    move-wide v3, p3

    move-object v5, v0

    move-wide v6, v1

    move-wide v8, v3

    invoke-static {v5, v6, v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->lambda$showSecondaryVK$361(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;DD)V

    return-void
.end method

.method static synthetic access$lambda$6()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->lambda$static$352()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$7(Ljavafx/beans/Observable;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->lambda$static$353(Ljavafx/beans/Observable;)V

    return-void
.end method

.method private adjustWindowPosition(Ljavafx/scene/Node;)V
    .locals 36

    .prologue
    .line 242
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object/from16 v3, p1

    .local v3, "node":Ljavafx/scene/Node;
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    instance-of v0, v0, Ljavafx/scene/control/TextInputControl;

    move/from16 v28, v0

    if-nez v28, :cond_0

    .line 243
    .line 303
    :goto_0
    return-void

    .line 247
    :cond_0
    move-object/from16 v28, v3

    const-wide/16 v29, 0x0

    const-wide/16 v31, 0x0

    invoke-virtual/range {v28 .. v32}, Ljavafx/scene/Node;->localToScene(DD)Ljavafx/geometry/Point2D;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v28

    move-object/from16 v30, v3

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v30

    invoke-virtual/range {v30 .. v30}, Ljavafx/scene/Scene;->getY()D

    move-result-wide v30

    add-double v28, v28, v30

    move-wide/from16 v4, v28

    .line 248
    .local v4, "inputControlMinY":D
    move-object/from16 v28, v3

    check-cast v28, Ljavafx/scene/control/TextInputControl;

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/control/TextInputControl;->getHeight()D

    move-result-wide v28

    move-wide/from16 v6, v28

    .line 249
    .local v6, "inputControlHeight":D
    move-wide/from16 v28, v4

    move-wide/from16 v30, v6

    add-double v28, v28, v30

    move-wide/from16 v8, v28

    .line 251
    .local v8, "inputControlMaxY":D
    move-object/from16 v28, v3

    .line 252
    invoke-static/range {v28 .. v28}, Lcom/sun/javafx/util/Utils;->getScreen(Ljava/lang/Object;)Ljavafx/stage/Screen;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljavafx/stage/Screen;->getBounds()Ljavafx/geometry/Rectangle2D;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Rectangle2D;->getHeight()D

    move-result-wide v28

    move-wide/from16 v10, v28

    .line 253
    .local v10, "screenHeight":D
    move-wide/from16 v28, v10

    const-wide v30, 0x406e600000000000L    # 243.0

    sub-double v28, v28, v30

    move-wide/from16 v12, v28

    .line 255
    .local v12, "visibleAreaMaxY":D
    const-wide/16 v28, 0x0

    move-wide/from16 v14, v28

    .line 256
    .local v14, "inputLineCenterY":D
    const-wide/16 v28, 0x0

    move-wide/from16 v16, v28

    .line 257
    .local v16, "inputLineBottomY":D
    const-wide/16 v28, 0x0

    move-wide/from16 v18, v28

    .line 258
    .local v18, "newWindowYPos":D
    const-wide/high16 v28, 0x4024000000000000L    # 10.0

    move-wide/from16 v20, v28

    .line 260
    .local v20, "screenTopOffset":D
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    instance-of v0, v0, Ljavafx/scene/control/TextField;

    move/from16 v28, v0

    if-eqz v28, :cond_2

    .line 261
    move-wide/from16 v28, v4

    move-wide/from16 v30, v6

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v14, v28

    .line 262
    move-wide/from16 v28, v8

    move-wide/from16 v16, v28

    .line 264
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->attachedNode:Ljavafx/scene/Node;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/Node;->getParent()Ljavafx/scene/Parent;

    move-result-object v28

    move-object/from16 v22, v28

    .line 265
    .local v22, "parent":Ljavafx/scene/Parent;
    move-object/from16 v28, v22

    move-object/from16 v0, v28

    instance-of v0, v0, Ljavafx/scene/control/ComboBoxBase;

    move/from16 v28, v0

    if-eqz v28, :cond_1

    .line 268
    move-wide/from16 v28, v20

    move-wide/from16 v30, v4

    sub-double v28, v28, v30

    const-wide/16 v30, 0x0

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v18, v28

    .line 273
    .line 297
    .end local v22    # "parent":Ljavafx/scene/Parent;
    :goto_1
    move-object/from16 v28, v3

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v28

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v28

    move-object/from16 v22, v28

    .line 298
    .local v22, "w":Ljavafx/stage/Window;
    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->origWindowYPos:Ljava/lang/Double;

    move-object/from16 v28, v0

    invoke-virtual/range {v28 .. v28}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v28

    move-wide/from16 v30, v16

    add-double v28, v28, v30

    move-wide/from16 v30, v12

    cmpl-double v28, v28, v30

    if-lez v28, :cond_5

    .line 299
    move-object/from16 v28, v22

    move-wide/from16 v29, v18

    invoke-virtual/range {v28 .. v30}, Ljavafx/stage/Window;->setY(D)V

    .line 303
    :goto_2
    goto/16 :goto_0

    .line 271
    .local v22, "parent":Ljavafx/scene/Parent;
    :cond_1
    move-wide/from16 v28, v12

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    move-wide/from16 v30, v14

    sub-double v28, v28, v30

    const-wide/16 v30, 0x0

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v18, v28

    goto :goto_1

    .line 273
    .end local v22    # "parent":Ljavafx/scene/Parent;
    :cond_2
    move-object/from16 v28, v3

    move-object/from16 v0, v28

    instance-of v0, v0, Ljavafx/scene/control/TextArea;

    move/from16 v28, v0

    if-eqz v28, :cond_4

    .line 274
    move-object/from16 v28, v3

    check-cast v28, Ljavafx/scene/control/TextArea;

    invoke-virtual/range {v28 .. v28}, Ljavafx/scene/control/TextArea;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v28

    check-cast v28, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;

    move-object/from16 v22, v28

    .line 275
    .local v22, "textAreaSkin":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    move-object/from16 v28, v22

    invoke-virtual/range {v28 .. v28}, Lcom/sun/javafx/scene/control/skin/TextAreaSkin;->getCaretBounds()Ljavafx/geometry/Bounds;

    move-result-object v28

    move-object/from16 v23, v28

    .line 276
    .local v23, "caretBounds":Ljavafx/geometry/Bounds;
    move-object/from16 v28, v23

    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Bounds;->getMinY()D

    move-result-wide v28

    move-wide/from16 v24, v28

    .line 277
    .local v24, "caretMinY":D
    move-object/from16 v28, v23

    invoke-virtual/range {v28 .. v28}, Ljavafx/geometry/Bounds;->getMaxY()D

    move-result-wide v28

    move-wide/from16 v26, v28

    .line 278
    .local v26, "caretMaxY":D
    move-wide/from16 v28, v4

    move-wide/from16 v30, v24

    move-wide/from16 v32, v26

    add-double v30, v30, v32

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v14, v28

    .line 279
    move-wide/from16 v28, v4

    move-wide/from16 v30, v26

    add-double v28, v28, v30

    move-wide/from16 v16, v28

    .line 281
    move-wide/from16 v28, v6

    move-wide/from16 v30, v12

    cmpg-double v28, v28, v30

    if-gez v28, :cond_3

    .line 283
    move-wide/from16 v28, v12

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    move-wide/from16 v30, v4

    move-wide/from16 v32, v6

    const-wide/high16 v34, 0x4000000000000000L    # 2.0

    div-double v32, v32, v34

    add-double v30, v30, v32

    sub-double v28, v28, v30

    move-wide/from16 v18, v28

    .line 288
    :goto_3
    move-wide/from16 v28, v18

    const-wide/16 v30, 0x0

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v18, v28

    .line 290
    goto/16 :goto_1

    .line 286
    :cond_3
    move-wide/from16 v28, v12

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    move-wide/from16 v30, v14

    sub-double v28, v28, v30

    move-wide/from16 v18, v28

    goto :goto_3

    .line 291
    .end local v22    # "textAreaSkin":Lcom/sun/javafx/scene/control/skin/TextAreaSkin;
    .end local v23    # "caretBounds":Ljavafx/geometry/Bounds;
    .end local v24    # "caretMinY":D
    .end local v26    # "caretMaxY":D
    :cond_4
    move-wide/from16 v28, v4

    move-wide/from16 v30, v6

    const-wide/high16 v32, 0x4000000000000000L    # 2.0

    div-double v30, v30, v32

    add-double v28, v28, v30

    move-wide/from16 v14, v28

    .line 292
    move-wide/from16 v28, v8

    move-wide/from16 v16, v28

    .line 294
    move-wide/from16 v28, v12

    const-wide/high16 v30, 0x4000000000000000L    # 2.0

    div-double v28, v28, v30

    move-wide/from16 v30, v14

    sub-double v28, v28, v30

    const-wide/16 v30, 0x0

    invoke-static/range {v28 .. v31}, Ljava/lang/Math;->min(DD)D

    move-result-wide v28

    move-wide/from16 v18, v28

    goto/16 :goto_1

    .line 301
    .local v22, "w":Ljavafx/stage/Window;
    :cond_5
    move-object/from16 v28, v22

    move-object/from16 v29, v2

    move-object/from16 v0, v29

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->origWindowYPos:Ljava/lang/Double;

    move-object/from16 v29, v0

    invoke-virtual/range {v29 .. v29}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v29

    invoke-virtual/range {v28 .. v30}, Ljavafx/stage/Window;->setY(D)V

    goto/16 :goto_2
.end method

.method private closeSecondaryVK()V
    .locals 3

    .prologue
    .line 374
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    sget-object v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    if-eqz v1, :cond_0

    .line 375
    sget-object v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/FXVK;->setAttachedNode(Ljavafx/scene/Node;)V

    .line 376
    sget-object v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryPopup:Ljavafx/stage/Popup;

    invoke-virtual {v1}, Ljavafx/stage/Popup;->hide()V

    .line 378
    :cond_0
    return-void
.end method

.method private getNodeVKType(Ljavafx/scene/Node;)Ljava/lang/String;
    .locals 6

    .prologue
    .line 356
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v4

    const-string v5, "vkType"

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v2, v4

    .line 357
    .local v2, "typeValue":Ljava/lang/Object;
    const/4 v4, 0x0

    move-object v3, v4

    .line 358
    .local v3, "typeStr":Ljava/lang/String;
    move-object v4, v2

    instance-of v4, v4, Ljava/lang/String;

    if-eqz v4, :cond_0

    .line 359
    move-object v4, v2

    check-cast v4, Ljava/lang/String;

    sget-object v5, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    invoke-virtual {v4, v5}, Ljava/lang/String;->toLowerCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 361
    :cond_0
    move-object v4, v3

    if-eqz v4, :cond_1

    move-object v4, v3

    :goto_0
    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    return-object v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    :cond_1
    const-string v4, "text"

    goto :goto_0
.end method

.method private synthetic lambda$registerUnhideHandler$354(Ljavafx/scene/input/InputEvent;)V
    .locals 10

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, p1

    .local v1, "event":Ljavafx/scene/input/InputEvent;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->attachedNode:Ljavafx/scene/Node;

    if-eqz v4, :cond_0

    move-object v4, v0

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->isVKHidden:Z

    if-eqz v4, :cond_0

    .line 331
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->attachedNode:Ljavafx/scene/Node;

    invoke-static {v4}, Lcom/sun/javafx/util/Utils;->getScreen(Ljava/lang/Object;)Ljavafx/stage/Screen;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/stage/Screen;->getBounds()Ljavafx/geometry/Rectangle2D;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/geometry/Rectangle2D;->getHeight()D

    move-result-wide v4

    move-wide v2, v4

    .line 332
    .local v2, "screenHeight":D
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/FXVK;->getHeight()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    sget-object v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkPopup:Ljavafx/stage/Popup;

    invoke-virtual {v4}, Ljavafx/stage/Popup;->getY()D

    move-result-wide v4

    move-wide v6, v2

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/FXVK;->getHeight()D

    move-result-wide v8

    sub-double/2addr v6, v8

    cmpl-double v4, v4, v6

    if-lez v4, :cond_0

    .line 333
    sget-object v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->slideInTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v4}, Ljavafx/animation/Timeline;->getStatus()Ljavafx/animation/Animation$Status;

    move-result-object v4

    sget-object v5, Ljavafx/animation/Animation$Status;->RUNNING:Ljavafx/animation/Animation$Status;

    if-eq v4, v5, :cond_0

    .line 334
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->startSlideIn()V

    .line 335
    sget-boolean v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkAdjustWindow:Z

    if-eqz v4, :cond_0

    .line 336
    move-object v4, v0

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->attachedNode:Ljavafx/scene/Node;

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->adjustWindowPosition(Ljavafx/scene/Node;)V

    .line 341
    .end local v2    # "screenHeight":D
    :cond_0
    move-object v4, v0

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->isVKHidden:Z

    .line 342
    return-void
.end method

.method private static synthetic lambda$setupPrimaryVK$355(Ljavafx/event/ActionEvent;)V
    .locals 2

    .prologue
    .line 403
    move-object v0, p0

    .local v0, "event":Ljavafx/event/ActionEvent;
    sget-boolean v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->hideAfterSlideOut:Z

    if-eqz v1, :cond_0

    sget-object v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkPopup:Ljavafx/stage/Popup;

    invoke-virtual {v1}, Ljavafx/stage/Popup;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 404
    sget-object v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkPopup:Ljavafx/stage/Popup;

    invoke-virtual {v1}, Ljavafx/stage/Popup;->hide()V

    .line 406
    :cond_0
    return-void
.end method

.method private synthetic lambda$setupPrimaryVK$356(Ljavafx/event/ActionEvent;)V
    .locals 4

    .prologue
    .line 423
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, p1

    .local v1, "event":Ljavafx/event/ActionEvent;
    sget-object v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVKKey:Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;

    if-eqz v2, :cond_0

    .line 424
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVKKey:Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->showSecondaryVK(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;)V

    .line 426
    :cond_0
    return-void
.end method

.method private static synthetic lambda$setupPrimaryVK$357(Ljavafx/event/ActionEvent;)V
    .locals 2

    .prologue
    .line 435
    move-object v0, p0

    .local v0, "event":Ljavafx/event/ActionEvent;
    sget-object v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->repeatKey:Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;->sendKeyEvents()V

    .line 437
    sget-object v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->repeatSubsequentDelay:Ljavafx/animation/Timeline;

    invoke-virtual {v1}, Ljavafx/animation/Timeline;->playFromStart()V

    .line 438
    return-void
.end method

.method private static synthetic lambda$setupPrimaryVK$358(Ljavafx/event/ActionEvent;)V
    .locals 2

    .prologue
    .line 444
    move-object v0, p0

    .local v0, "event":Ljavafx/event/ActionEvent;
    sget-object v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->repeatKey:Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$TextInputKey;->sendKeyEvents()V

    .line 445
    return-void
.end method

.method private static synthetic lambda$showSecondaryVK$361(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;DD)V
    .locals 25

    .prologue
    .line 982
    move-object/from16 v1, p0

    .local v1, "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;
    move-wide/from16 v2, p1

    .local v2, "w":D
    move-wide/from16 v4, p3

    .local v4, "h":D
    move-object v12, v1

    move-wide v13, v2

    move-wide v15, v4

    sget-object v17, Ljavafx/geometry/HPos;->CENTER:Ljavafx/geometry/HPos;

    sget-object v18, Ljavafx/geometry/VPos;->TOP:Ljavafx/geometry/VPos;

    const-wide/high16 v19, 0x4014000000000000L    # 5.0

    const-wide/high16 v21, -0x3ff8000000000000L    # -3.0

    const/16 v23, 0x1

    .line 983
    invoke-static/range {v12 .. v23}, Lcom/sun/javafx/util/Utils;->pointRelativeTo(Ljavafx/scene/Node;DDLjavafx/geometry/HPos;Ljavafx/geometry/VPos;DDZ)Ljavafx/geometry/Point2D;

    move-result-object v12

    move-object v6, v12

    .line 985
    .local v6, "nodePoint":Ljavafx/geometry/Point2D;
    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/geometry/Point2D;->getX()D

    move-result-wide v12

    move-wide v7, v12

    .line 986
    .local v7, "x":D
    move-object v12, v6

    invoke-virtual {v12}, Ljavafx/geometry/Point2D;->getY()D

    move-result-wide v12

    move-wide v9, v12

    .line 987
    .local v9, "y":D
    move-object v12, v1

    invoke-virtual {v12}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->getScene()Ljavafx/scene/Scene;

    move-result-object v12

    move-object v11, v12

    .line 988
    .local v11, "scene":Ljavafx/scene/Scene;
    move-wide v12, v7

    move-object v14, v11

    invoke-virtual {v14}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v14

    invoke-virtual {v14}, Ljavafx/stage/Window;->getX()D

    move-result-wide v14

    move-object/from16 v16, v11

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/Scene;->getWidth()D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide/from16 v16, v2

    sub-double v14, v14, v16

    invoke-static {v12, v13, v14, v15}, Ljava/lang/Math;->min(DD)D

    move-result-wide v12

    move-wide v7, v12

    .line 989
    sget-object v12, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryPopup:Ljavafx/stage/Popup;

    move-object v13, v1

    invoke-virtual {v13}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->getScene()Ljavafx/scene/Scene;

    move-result-object v13

    invoke-virtual {v13}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v13

    move-wide v14, v7

    move-wide/from16 v16, v9

    invoke-virtual/range {v12 .. v17}, Ljavafx/stage/Popup;->show(Ljavafx/stage/Window;DD)V

    .line 990
    return-void
.end method

.method private static synthetic lambda$static$352()Ljava/lang/Void;
    .locals 6

    .prologue
    .line 193
    const-string v2, "com.sun.javafx.vk.adjustwindow"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 194
    .local v0, "s":Ljava/lang/String;
    move-object v2, v0

    if-eqz v2, :cond_0

    .line 195
    move-object v2, v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkAdjustWindow:Z

    .line 197
    :cond_0
    const-string v2, "com.sun.javafx.sqe.vk.lookup"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 198
    move-object v2, v0

    if-eqz v2, :cond_1

    .line 199
    move-object v2, v0

    invoke-static {v2}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    sput-boolean v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkLookup:Z

    .line 201
    :cond_1
    const-string v2, "com.sun.javafx.virtualKeyboard.backspaceRepeatDelay"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 202
    move-object v2, v0

    if-eqz v2, :cond_2

    .line 203
    move-object v2, v0

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    move-object v1, v2

    .line 204
    .local v1, "delay":Ljava/lang/Double;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sget-wide v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->KEY_REPEAT_DELAY_MIN:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    sget-wide v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->KEY_REPEAT_DELAY_MAX:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    sput-wide v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->KEY_REPEAT_DELAY:D

    .line 206
    .end local v1    # "delay":Ljava/lang/Double;
    :cond_2
    const-string v2, "com.sun.javafx.virtualKeyboard.backspaceRepeatRate"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    move-object v0, v2

    .line 207
    move-object v2, v0

    if-eqz v2, :cond_3

    .line 208
    move-object v2, v0

    invoke-static {v2}, Ljava/lang/Double;->valueOf(Ljava/lang/String;)Ljava/lang/Double;

    move-result-object v2

    move-object v1, v2

    .line 209
    .local v1, "rate":Ljava/lang/Double;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gtz v2, :cond_4

    .line 211
    const-wide/16 v2, 0x0

    sput-wide v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->KEY_REPEAT_RATE:D

    .line 216
    .end local v1    # "rate":Ljava/lang/Double;
    :cond_3
    :goto_0
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "s":Ljava/lang/String;
    return-object v0

    .line 213
    .restart local v0    # "s":Ljava/lang/String;
    .restart local v1    # "rate":Ljava/lang/Double;
    :cond_4
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v2

    sget-wide v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->KEY_REPEAT_RATE_MIN:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v2

    sget-wide v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->KEY_REPEAT_RATE_MAX:D

    invoke-static {v2, v3, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v2

    sput-wide v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->KEY_REPEAT_RATE:D

    goto :goto_0
.end method

.method private static synthetic lambda$static$353(Ljavafx/beans/Observable;)V
    .locals 4

    .prologue
    .line 224
    move-object v0, p0

    .local v0, "valueModel":Ljavafx/beans/Observable;
    sget-object v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkPopup:Ljavafx/stage/Popup;

    if-eqz v1, :cond_0

    .line 225
    sget-object v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkPopup:Ljavafx/stage/Popup;

    sget-object v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->winY:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljavafx/stage/Popup;->setY(D)V

    .line 227
    :cond_0
    return-void
.end method

.method private loadBoard(Ljava/lang/String;)Ljava/util/List;
    .locals 33
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;",
            ">;>;"
        }
    .end annotation

    .prologue
    .line 999
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object/from16 v3, p1

    .local v3, "type":Ljava/lang/String;
    sget-object v24, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->boardMap:Ljava/util/HashMap;

    move-object/from16 v25, v3

    invoke-virtual/range {v24 .. v25}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/util/List;

    move-object/from16 v4, v24

    .line 1000
    .local v4, "tmpBoard":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;>;>;"
    move-object/from16 v24, v4

    if-eqz v24, :cond_0

    .line 1001
    move-object/from16 v24, v4

    move-object/from16 v2, v24

    .line 1216
    .end local v2    # "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    :goto_0
    return-object v2

    .line 1004
    .restart local v2    # "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    :cond_0
    new-instance v24, Ljava/lang/StringBuilder;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    invoke-direct/range {v25 .. v25}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v25, v3

    const/16 v26, 0x0

    const/16 v27, 0x1

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v25, v3

    const/16 v26, 0x1

    invoke-virtual/range {v25 .. v26}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, "Board.txt"

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v5, v24

    .line 1006
    .local v5, "boardFileName":Ljava/lang/String;
    :try_start_0
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    const/16 v26, 0x5

    invoke-direct/range {v25 .. v26}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v4, v24

    .line 1007
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    const/16 v26, 0x14

    invoke-direct/range {v25 .. v26}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v6, v24

    .line 1009
    .local v6, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;>;"
    const-class v24, Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object/from16 v25, v5

    invoke-virtual/range {v24 .. v25}, Ljava/lang/Class;->getResourceAsStream(Ljava/lang/String;)Ljava/io/InputStream;

    move-result-object v24

    move-object/from16 v7, v24

    .line 1010
    .local v7, "boardFile":Ljava/io/InputStream;
    new-instance v24, Ljava/io/BufferedReader;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    new-instance v26, Ljava/io/InputStreamReader;

    move-object/from16 v32, v26

    move-object/from16 v26, v32

    move-object/from16 v27, v32

    move-object/from16 v28, v7

    invoke-direct/range {v27 .. v28}, Ljava/io/InputStreamReader;-><init>(Ljava/io/InputStream;)V

    invoke-direct/range {v25 .. v26}, Ljava/io/BufferedReader;-><init>(Ljava/io/Reader;)V

    move-object/from16 v8, v24

    .line 1014
    .local v8, "reader":Ljava/io/BufferedReader;
    const/16 v24, 0x0

    move/from16 v10, v24

    .line 1016
    .local v10, "c":I
    const/16 v24, 0x0

    move/from16 v11, v24

    .line 1018
    .local v11, "col":I
    const/16 v24, 0x1

    move/from16 v12, v24

    .line 1020
    .local v12, "colSpan":I
    const/16 v24, 0x0

    move/from16 v13, v24

    .line 1022
    .local v13, "identifier":Z
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    const/16 v26, 0xa

    invoke-direct/range {v25 .. v26}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v14, v24

    .line 1024
    .local v14, "charsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :cond_1
    :goto_1
    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->readLine()Ljava/lang/String;

    move-result-object v24

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    move-object/from16 v9, v25

    .local v9, "line":Ljava/lang/String;
    if-eqz v24, :cond_23

    .line 1025
    move-object/from16 v24, v9

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    if-eqz v24, :cond_1

    move-object/from16 v24, v9

    const/16 v25, 0x0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    const/16 v25, 0x23

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_2

    .line 1026
    goto :goto_1

    .line 1029
    :cond_2
    const/16 v24, 0x0

    move/from16 v15, v24

    .local v15, "i":I
    :goto_2
    move/from16 v24, v15

    move-object/from16 v25, v9

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_22

    .line 1030
    move-object/from16 v24, v9

    move/from16 v25, v15

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    move/from16 v16, v24

    .line 1033
    .local v16, "ch":C
    move/from16 v24, v16

    const/16 v25, 0x20

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_3

    .line 1034
    add-int/lit8 v10, v10, 0x1

    .line 1029
    :goto_3
    add-int/lit8 v15, v15, 0x1

    goto :goto_2

    .line 1035
    :cond_3
    move/from16 v24, v16

    const/16 v25, 0x5b

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_4

    .line 1037
    move/from16 v24, v10

    move/from16 v11, v24

    .line 1038
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    const/16 v26, 0xa

    invoke-direct/range {v25 .. v26}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v14, v24

    .line 1039
    const/16 v24, 0x0

    move/from16 v13, v24

    goto :goto_3

    .line 1040
    :cond_4
    move/from16 v24, v16

    const/16 v25, 0x5d

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1b

    .line 1041
    const-string v24, ""

    move-object/from16 v17, v24

    .line 1042
    .local v17, "chars":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v18, v24

    .line 1043
    .local v18, "alt":Ljava/lang/String;
    const/16 v24, 0x0

    move-object/from16 v19, v24

    .line 1045
    .local v19, "moreChars":[Ljava/lang/String;
    const/16 v24, 0x0

    move/from16 v20, v24

    .local v20, "idx":I
    :goto_4
    move/from16 v24, v20

    move-object/from16 v25, v14

    invoke-interface/range {v25 .. v25}, Ljava/util/List;->size()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_5

    .line 1046
    move-object/from16 v24, v14

    move/from16 v25, v20

    move-object/from16 v26, v14

    move/from16 v27, v20

    invoke-interface/range {v26 .. v27}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/lang/String;

    invoke-static/range {v26 .. v26}, Lcom/sun/javafx/scene/control/skin/FXVKCharEntities;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    invoke-interface/range {v24 .. v26}, Ljava/util/List;->set(ILjava/lang/Object;)Ljava/lang/Object;

    move-result-object v24

    .line 1045
    add-int/lit8 v20, v20, 0x1

    goto :goto_4

    .line 1049
    :cond_5
    move-object/from16 v24, v14

    invoke-interface/range {v24 .. v24}, Ljava/util/List;->size()I

    move-result v24

    move/from16 v20, v24

    .line 1050
    .local v20, "listSize":I
    move/from16 v24, v20

    if-lez v24, :cond_6

    .line 1051
    move-object/from16 v24, v14

    const/16 v25, 0x0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v17, v24

    .line 1052
    move/from16 v24, v20

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_6

    .line 1053
    move-object/from16 v24, v14

    const/16 v25, 0x1

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v18, v24

    .line 1054
    move/from16 v24, v20

    const/16 v25, 0x2

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_6

    .line 1055
    move-object/from16 v24, v14

    const/16 v25, 0x2

    move/from16 v26, v20

    invoke-interface/range {v24 .. v26}, Ljava/util/List;->subList(II)Ljava/util/List;

    move-result-object v24

    move/from16 v25, v20

    const/16 v26, 0x2

    add-int/lit8 v25, v25, -0x2

    move/from16 v0, v25

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v25, v0

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v24

    check-cast v24, [Ljava/lang/String;

    move-object/from16 v19, v24

    .line 1061
    :cond_6
    move/from16 v24, v10

    move/from16 v25, v11

    sub-int v24, v24, v25

    move/from16 v12, v24

    .line 1063
    move/from16 v24, v13

    if-eqz v24, :cond_16

    .line 1064
    const-string v24, "$shift"

    move-object/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_7

    .line 1065
    new-instance v24, Lcom/sun/javafx/scene/control/skin/FXVKSkin$2;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    move-object/from16 v26, v2

    const-string v27, ""

    const/16 v28, 0x0

    const-string v29, "shift"

    invoke-direct/range {v25 .. v29}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$2;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v21, v24

    .line 1087
    .local v21, "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    move-object/from16 v24, v21

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v24

    const-string v25, "shift"

    invoke-interface/range {v24 .. v25}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 1159
    :goto_5
    move-object/from16 v24, v21

    if-eqz v24, :cond_1a

    .line 1160
    move-object/from16 v24, v21

    move/from16 v25, v11

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->col:I

    .line 1161
    move-object/from16 v24, v21

    move/from16 v25, v12

    move/from16 v0, v25

    move-object/from16 v1, v24

    iput v0, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->colSpan:I

    .line 1162
    move-object/from16 v24, v21

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v24

    invoke-interface/range {v24 .. v24}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v24

    move-object/from16 v22, v24

    :goto_6
    move-object/from16 v24, v22

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->hasNext()Z

    move-result v24

    if-eqz v24, :cond_17

    move-object/from16 v24, v22

    invoke-interface/range {v24 .. v24}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v24

    check-cast v24, Ljava/lang/String;

    move-object/from16 v23, v24

    .line 1163
    .local v23, "sc":Ljava/lang/String;
    move-object/from16 v24, v21

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->text:Ljavafx/scene/text/Text;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/text/Text;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v23

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "-text"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 1164
    move-object/from16 v24, v21

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->altText:Ljavafx/scene/text/Text;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/text/Text;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v23

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "-alttext"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 1165
    move-object/from16 v24, v21

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->icon:Ljavafx/scene/layout/Region;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v24

    new-instance v25, Ljava/lang/StringBuilder;

    move-object/from16 v32, v25

    move-object/from16 v25, v32

    move-object/from16 v26, v32

    invoke-direct/range {v26 .. v26}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v26, v23

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    const-string v26, "-icon"

    invoke-virtual/range {v25 .. v26}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v25

    invoke-virtual/range {v25 .. v25}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 1166
    goto/16 :goto_6

    .line 1089
    .end local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    .end local v23    # "sc":Ljava/lang/String;
    :cond_7
    const-string v24, "$SymbolABC"

    move-object/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_8

    .line 1090
    new-instance v24, Lcom/sun/javafx/scene/control/skin/FXVKSkin$3;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    move-object/from16 v26, v2

    const-string v27, "!#123"

    const-string v28, "ABC"

    const-string v29, "symbol"

    invoke-direct/range {v25 .. v29}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$3;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v21, v24

    .restart local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    goto/16 :goto_5

    .line 1095
    .end local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    :cond_8
    const-string v24, "$backspace"

    move-object/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_9

    .line 1096
    new-instance v24, Lcom/sun/javafx/scene/control/skin/FXVKSkin$4;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    move-object/from16 v26, v2

    const-string v27, "backspace"

    const-string v28, "\u0008"

    sget-object v29, Ljavafx/scene/input/KeyCode;->BACK_SPACE:Ljavafx/scene/input/KeyCode;

    invoke-direct/range {v25 .. v29}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$4;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Ljavafx/scene/input/KeyCode;)V

    move-object/from16 v21, v24

    .line 1116
    .restart local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    move-object/from16 v24, v21

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v24

    const-string v25, "backspace"

    invoke-interface/range {v24 .. v25}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v24

    goto/16 :goto_5

    .line 1117
    .end local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    :cond_9
    const-string v24, "$enter"

    move-object/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_a

    .line 1118
    new-instance v24, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    move-object/from16 v26, v2

    const-string v27, "enter"

    const-string v28, "\n"

    sget-object v29, Ljavafx/scene/input/KeyCode;->ENTER:Ljavafx/scene/input/KeyCode;

    const/16 v30, 0x0

    invoke-direct/range {v25 .. v30}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Ljavafx/scene/input/KeyCode;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V

    move-object/from16 v21, v24

    .line 1119
    .restart local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    move-object/from16 v24, v21

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v24

    const-string v25, "enter"

    invoke-interface/range {v24 .. v25}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v24

    goto/16 :goto_5

    .line 1120
    .end local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    :cond_a
    const-string v24, "$tab"

    move-object/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_b

    .line 1121
    new-instance v24, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    move-object/from16 v26, v2

    const-string v27, "tab"

    const-string v28, "\t"

    sget-object v29, Ljavafx/scene/input/KeyCode;->TAB:Ljavafx/scene/input/KeyCode;

    const/16 v30, 0x0

    invoke-direct/range {v25 .. v30}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$KeyCodeKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Ljavafx/scene/input/KeyCode;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V

    move-object/from16 v21, v24

    .restart local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    goto/16 :goto_5

    .line 1122
    .end local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    :cond_b
    const-string v24, "$space"

    move-object/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_c

    .line 1123
    new-instance v24, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    move-object/from16 v26, v2

    const-string v27, " "

    const-string v28, " "

    const/16 v29, 0x0

    const-string v30, "space"

    const/16 v31, 0x0

    invoke-direct/range {v25 .. v31}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V

    move-object/from16 v21, v24

    .restart local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    goto/16 :goto_5

    .line 1124
    .end local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    :cond_c
    const-string v24, "$clear"

    move-object/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_d

    .line 1125
    new-instance v24, Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    move-object/from16 v26, v2

    const-string v27, "clear"

    const-string v28, ""

    const/16 v29, 0x0

    invoke-direct/range {v25 .. v29}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V

    move-object/from16 v21, v24

    .restart local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    goto/16 :goto_5

    .line 1126
    .end local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    :cond_d
    const-string v24, "$.org"

    move-object/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_e

    .line 1127
    new-instance v24, Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    move-object/from16 v26, v2

    const-string v27, ".org"

    const-string v28, ".org"

    const/16 v29, 0x0

    invoke-direct/range {v25 .. v29}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V

    move-object/from16 v21, v24

    .restart local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    goto/16 :goto_5

    .line 1128
    .end local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    :cond_e
    const-string v24, "$.com"

    move-object/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_f

    .line 1129
    new-instance v24, Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    move-object/from16 v26, v2

    const-string v27, ".com"

    const-string v28, ".com"

    const/16 v29, 0x0

    invoke-direct/range {v25 .. v29}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V

    move-object/from16 v21, v24

    .restart local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    goto/16 :goto_5

    .line 1130
    .end local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    :cond_f
    const-string v24, "$.net"

    move-object/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_10

    .line 1131
    new-instance v24, Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    move-object/from16 v26, v2

    const-string v27, ".net"

    const-string v28, ".net"

    const/16 v29, 0x0

    invoke-direct/range {v25 .. v29}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V

    move-object/from16 v21, v24

    .restart local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    goto/16 :goto_5

    .line 1132
    .end local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    :cond_10
    const-string v24, "$oracle.com"

    move-object/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_11

    .line 1133
    new-instance v24, Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    move-object/from16 v26, v2

    const-string v27, "oracle.com"

    const-string v28, "oracle.com"

    const/16 v29, 0x0

    invoke-direct/range {v25 .. v29}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V

    move-object/from16 v21, v24

    .restart local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    goto/16 :goto_5

    .line 1134
    .end local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    :cond_11
    const-string v24, "$gmail.com"

    move-object/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_12

    .line 1135
    new-instance v24, Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    move-object/from16 v26, v2

    const-string v27, "gmail.com"

    const-string v28, "gmail.com"

    const/16 v29, 0x0

    invoke-direct/range {v25 .. v29}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V

    move-object/from16 v21, v24

    .restart local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    goto/16 :goto_5

    .line 1136
    .end local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    :cond_12
    const-string v24, "$hide"

    move-object/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_13

    .line 1137
    new-instance v24, Lcom/sun/javafx/scene/control/skin/FXVKSkin$5;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    move-object/from16 v26, v2

    const-string v27, "hide"

    const/16 v28, 0x0

    const-string v29, "hide"

    invoke-direct/range {v25 .. v29}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$5;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    move-object/from16 v21, v24

    .line 1147
    .restart local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    move-object/from16 v24, v21

    invoke-virtual/range {v24 .. v24}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v24

    const-string v25, "hide"

    invoke-interface/range {v24 .. v25}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v24

    goto/16 :goto_5

    .line 1148
    .end local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    :cond_13
    const-string v24, "$undo"

    move-object/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_14

    .line 1149
    new-instance v24, Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    move-object/from16 v26, v2

    const-string v27, "undo"

    const-string v28, ""

    const/16 v29, 0x0

    invoke-direct/range {v25 .. v29}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V

    move-object/from16 v21, v24

    .restart local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    goto/16 :goto_5

    .line 1150
    .end local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    :cond_14
    const-string v24, "$redo"

    move-object/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v24

    if-eqz v24, :cond_15

    .line 1151
    new-instance v24, Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    move-object/from16 v26, v2

    const-string v27, "redo"

    const-string v28, ""

    const/16 v29, 0x0

    invoke-direct/range {v25 .. v29}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$SuperKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V

    move-object/from16 v21, v24

    .restart local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    goto/16 :goto_5

    .line 1154
    .end local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    :cond_15
    const/16 v24, 0x0

    move-object/from16 v21, v24

    .restart local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    goto/16 :goto_5

    .line 1157
    .end local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    :cond_16
    new-instance v24, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    move-object/from16 v26, v2

    move-object/from16 v27, v17

    move-object/from16 v28, v18

    move-object/from16 v29, v19

    const/16 v30, 0x0

    invoke-direct/range {v25 .. v30}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V

    move-object/from16 v21, v24

    .restart local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    goto/16 :goto_5

    .line 1167
    :cond_17
    move-object/from16 v24, v17

    if-eqz v24, :cond_18

    move-object/from16 v24, v17

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_18

    .line 1168
    move-object/from16 v24, v21

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->text:Ljavafx/scene/text/Text;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/text/Text;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v24

    const-string v25, "multi-char-text"

    invoke-interface/range {v24 .. v25}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 1170
    :cond_18
    move-object/from16 v24, v18

    if-eqz v24, :cond_19

    move-object/from16 v24, v18

    invoke-virtual/range {v24 .. v24}, Ljava/lang/String;->length()I

    move-result v24

    const/16 v25, 0x1

    move/from16 v0, v24

    move/from16 v1, v25

    if-le v0, v1, :cond_19

    .line 1171
    move-object/from16 v24, v21

    move-object/from16 v0, v24

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->altText:Ljavafx/scene/text/Text;

    move-object/from16 v24, v0

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/text/Text;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v24

    const-string v25, "multi-char-text"

    invoke-interface/range {v24 .. v25}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 1174
    :cond_19
    move-object/from16 v24, v6

    move-object/from16 v25, v21

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 1176
    :cond_1a
    goto/16 :goto_3

    .line 1179
    .end local v17    # "chars":Ljava/lang/String;
    .end local v18    # "alt":Ljava/lang/String;
    .end local v19    # "moreChars":[Ljava/lang/String;
    .end local v20    # "listSize":I
    .end local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    :cond_1b
    move/from16 v24, v15

    move/from16 v17, v24

    .local v17, "j":I
    :goto_7
    move/from16 v24, v17

    move-object/from16 v25, v9

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v25

    move/from16 v0, v24

    move/from16 v1, v25

    if-ge v0, v1, :cond_21

    .line 1180
    move-object/from16 v24, v9

    move/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    move/from16 v18, v24

    .line 1181
    .local v18, "c2":C
    const/16 v24, 0x0

    move/from16 v19, v24

    .line 1182
    .local v19, "e":Z
    move/from16 v24, v18

    const/16 v25, 0x5c

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1c

    .line 1183
    add-int/lit8 v17, v17, 0x1

    .line 1184
    add-int/lit8 v15, v15, 0x1

    .line 1185
    const/16 v24, 0x1

    move/from16 v19, v24

    .line 1186
    move-object/from16 v24, v9

    move/from16 v25, v17

    invoke-virtual/range {v24 .. v25}, Ljava/lang/String;->charAt(I)C

    move-result v24

    move/from16 v18, v24

    .line 1189
    :cond_1c
    move/from16 v24, v18

    const/16 v25, 0x24

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1d

    move/from16 v24, v19

    if-nez v24, :cond_1d

    .line 1190
    const/16 v24, 0x1

    move/from16 v13, v24

    .line 1193
    :cond_1d
    move/from16 v24, v18

    const/16 v25, 0x7c

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1f

    move/from16 v24, v19

    if-nez v24, :cond_1f

    .line 1194
    move-object/from16 v24, v14

    move-object/from16 v25, v9

    move/from16 v26, v15

    move/from16 v27, v17

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 1195
    move/from16 v24, v17

    const/16 v25, 0x1

    add-int/lit8 v24, v24, 0x1

    move/from16 v15, v24

    .line 1179
    :cond_1e
    add-int/lit8 v17, v17, 0x1

    goto :goto_7

    .line 1196
    :cond_1f
    move/from16 v24, v18

    const/16 v25, 0x5d

    move/from16 v0, v24

    move/from16 v1, v25

    if-eq v0, v1, :cond_20

    move/from16 v24, v18

    const/16 v25, 0x20

    move/from16 v0, v24

    move/from16 v1, v25

    if-ne v0, v1, :cond_1e

    :cond_20
    move/from16 v24, v19

    if-nez v24, :cond_1e

    .line 1197
    move-object/from16 v24, v14

    move-object/from16 v25, v9

    move/from16 v26, v15

    move/from16 v27, v17

    invoke-virtual/range {v25 .. v27}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 1198
    move/from16 v24, v17

    const/16 v25, 0x1

    add-int/lit8 v24, v24, -0x1

    move/from16 v15, v24

    .line 1202
    .end local v18    # "c2":C
    .end local v19    # "e":Z
    :cond_21
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_3

    .line 1206
    .end local v16    # "ch":C
    .end local v17    # "j":I
    :cond_22
    const/16 v24, 0x0

    move/from16 v10, v24

    .line 1207
    const/16 v24, 0x0

    move/from16 v11, v24

    .line 1208
    move-object/from16 v24, v4

    move-object/from16 v25, v6

    invoke-interface/range {v24 .. v25}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v24

    .line 1209
    new-instance v24, Ljava/util/ArrayList;

    move-object/from16 v32, v24

    move-object/from16 v24, v32

    move-object/from16 v25, v32

    const/16 v26, 0x14

    invoke-direct/range {v25 .. v26}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v6, v24

    goto/16 :goto_1

    .line 1211
    .end local v15    # "i":I
    :cond_23
    move-object/from16 v24, v8

    invoke-virtual/range {v24 .. v24}, Ljava/io/BufferedReader;->close()V

    .line 1212
    sget-object v24, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->boardMap:Ljava/util/HashMap;

    move-object/from16 v25, v3

    move-object/from16 v26, v4

    invoke-virtual/range {v24 .. v26}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v24

    .line 1213
    move-object/from16 v24, v4

    move-object/from16 v2, v24

    goto/16 :goto_0

    .line 1214
    .end local v6    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;>;"
    .end local v7    # "boardFile":Ljava/io/InputStream;
    .end local v8    # "reader":Ljava/io/BufferedReader;
    .end local v9    # "line":Ljava/lang/String;
    .end local v10    # "c":I
    .end local v11    # "col":I
    .end local v12    # "colSpan":I
    .end local v13    # "identifier":Z
    .end local v14    # "charsList":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    :catch_0
    move-exception v24

    move-object/from16 v6, v24

    .line 1215
    .local v6, "e":Ljava/lang/Exception;
    move-object/from16 v24, v6

    invoke-virtual/range {v24 .. v24}, Ljava/lang/Exception;->printStackTrace()V

    .line 1216
    invoke-static {}, Ljava/util/Collections;->emptyList()Ljava/util/List;

    move-result-object v24

    move-object/from16 v2, v24

    goto/16 :goto_0
.end method

.method private rebuildPrimaryVK(Ljava/lang/String;)V
    .locals 10

    .prologue
    .line 608
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, p1

    .local v1, "type":Ljava/lang/String;
    move-object v6, v0

    move-object v7, v0

    move-object v8, v1

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->loadBoard(Ljava/lang/String;)Ljava/util/List;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->currentBoard:Ljava/util/List;

    .line 611
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->clearStateKeys()V

    .line 613
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v6}, Ljavafx/collections/ObservableList;->clear()V

    .line 614
    move-object v6, v0

    const/4 v7, 0x0

    iput v7, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->numCols:I

    .line 615
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->currentBoard:Ljava/util/List;

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v2, v6

    :goto_0
    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_1

    move-object v6, v2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/List;

    move-object v3, v6

    .line 616
    .local v3, "row":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;>;"
    move-object v6, v3

    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    move-object v4, v6

    :goto_1
    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    move-object v6, v4

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;

    move-object v5, v6

    .line 617
    .local v5, "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    move-object v6, v0

    move-object v7, v0

    iget v7, v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->numCols:I

    move-object v8, v5

    iget v8, v8, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->col:I

    move-object v9, v5

    iget v9, v9, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->colSpan:I

    add-int/2addr v8, v9

    invoke-static {v7, v8}, Ljava/lang/Math;->max(II)I

    move-result v7

    iput v7, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->numCols:I

    .line 618
    goto :goto_1

    .line 619
    .end local v5    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    :cond_0
    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v6

    move-object v7, v3

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v6

    .line 620
    goto :goto_0

    .line 621
    .end local v3    # "row":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;>;"
    :cond_1
    return-void
.end method

.method private rebuildSecondaryVK()V
    .locals 24

    .prologue
    .line 558
    move-object/from16 v3, p0

    .local v3, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    sget-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVK;->chars:[Ljava/lang/String;

    move-object/from16 v16, v0

    if-nez v16, :cond_1

    .line 601
    :cond_0
    return-void

    .line 560
    :cond_1
    sget-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVK;->chars:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v4, v16

    .line 561
    .local v4, "nKeys":I
    const/16 v16, 0x1

    move/from16 v17, v4

    const/16 v18, 0x2

    add-int/lit8 v17, v17, -0x2

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v5, v16

    .line 562
    .local v5, "nRows":I
    move/from16 v16, v4

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v18, v5

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v6, v16

    .line 565
    .local v6, "nKeysPerRow":I
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    const/16 v18, 0x2

    invoke-direct/range {v17 .. v18}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v8, v16

    .line 567
    .local v8, "rows":Ljava/util/List;, "Ljava/util/List<Ljava/util/List<Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;>;>;"
    const/16 v16, 0x0

    move/from16 v9, v16

    .local v9, "i":I
    :goto_0
    move/from16 v16, v9

    move/from16 v17, v5

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_2

    .line 568
    move/from16 v16, v9

    move/from16 v17, v6

    mul-int v16, v16, v17

    move/from16 v10, v16

    .line 569
    .local v10, "start":I
    move/from16 v16, v10

    move/from16 v17, v6

    add-int v16, v16, v17

    move/from16 v17, v4

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->min(II)I

    move-result v16

    move/from16 v11, v16

    .line 570
    .local v11, "end":I
    move/from16 v16, v10

    move/from16 v17, v11

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_3

    .line 571
    .line 590
    .end local v10    # "start":I
    .end local v11    # "end":I
    :cond_2
    move-object/from16 v16, v3

    move-object/from16 v17, v8

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->currentBoard:Ljava/util/List;

    .line 592
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljavafx/collections/ObservableList;->clear()V

    .line 593
    move-object/from16 v16, v3

    const/16 v17, 0x0

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->numCols:I

    .line 594
    move-object/from16 v16, v3

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->currentBoard:Ljava/util/List;

    move-object/from16 v16, v0

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-object/from16 v9, v16

    .end local v9    # "i":I
    :goto_1
    move-object/from16 v16, v9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_0

    move-object/from16 v16, v9

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/util/List;

    move-object/from16 v10, v16

    .line 595
    .local v10, "row":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;>;"
    move-object/from16 v16, v10

    invoke-interface/range {v16 .. v16}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-object/from16 v11, v16

    :goto_2
    move-object/from16 v16, v11

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    move-object/from16 v16, v11

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;

    move-object/from16 v12, v16

    .line 596
    .local v12, "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    move-object/from16 v16, v3

    move-object/from16 v17, v3

    move-object/from16 v0, v17

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->numCols:I

    move/from16 v17, v0

    move-object/from16 v18, v12

    move-object/from16 v0, v18

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->col:I

    move/from16 v18, v0

    move-object/from16 v19, v12

    move-object/from16 v0, v19

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->colSpan:I

    move/from16 v19, v0

    add-int v18, v18, v19

    invoke-static/range {v17 .. v18}, Ljava/lang/Math;->max(II)I

    move-result v17

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->numCols:I

    .line 597
    goto :goto_2

    .line 573
    .end local v12    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    .restart local v9    # "i":I
    .local v10, "start":I
    .restart local v11    # "end":I
    :cond_3
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move/from16 v18, v6

    invoke-direct/range {v17 .. v18}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v12, v16

    .line 574
    .local v12, "keys":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;>;"
    move/from16 v16, v10

    move/from16 v13, v16

    .local v13, "j":I
    :goto_3
    move/from16 v16, v13

    move/from16 v17, v11

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_6

    .line 575
    new-instance v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;

    move-object/from16 v23, v16

    move-object/from16 v16, v23

    move-object/from16 v17, v23

    move-object/from16 v18, v3

    sget-object v19, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    move-object/from16 v0, v19

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVK;->chars:[Ljava/lang/String;

    move-object/from16 v19, v0

    move/from16 v20, v13

    aget-object v19, v19, v20

    const/16 v20, 0x0

    const/16 v21, 0x0

    const/16 v22, 0x0

    invoke-direct/range {v17 .. v22}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;-><init>(Lcom/sun/javafx/scene/control/skin/FXVKSkin;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Lcom/sun/javafx/scene/control/skin/FXVKSkin$1;)V

    move-object/from16 v7, v16

    .line 576
    .local v7, "tmpKey":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    move-object/from16 v16, v7

    move/from16 v17, v13

    move/from16 v18, v10

    sub-int v17, v17, v18

    const/16 v18, 0x2

    mul-int/lit8 v17, v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->col:I

    .line 577
    move-object/from16 v16, v7

    const/16 v17, 0x2

    move/from16 v0, v17

    move-object/from16 v1, v16

    iput v0, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->colSpan:I

    .line 578
    move-object/from16 v16, v7

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v16

    invoke-interface/range {v16 .. v16}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-object/from16 v14, v16

    :goto_4
    move-object/from16 v16, v14

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_4

    move-object/from16 v16, v14

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v15, v16

    .line 579
    .local v15, "sc":Ljava/lang/String;
    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->text:Ljavafx/scene/text/Text;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/text/Text;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v15

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "-text"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 580
    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->altText:Ljavafx/scene/text/Text;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/text/Text;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v15

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "-alttext"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 581
    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->icon:Ljavafx/scene/layout/Region;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v16

    new-instance v17, Ljava/lang/StringBuilder;

    move-object/from16 v23, v17

    move-object/from16 v17, v23

    move-object/from16 v18, v23

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v18, v15

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, "-icon"

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-interface/range {v16 .. v17}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 582
    goto/16 :goto_4

    .line 583
    .end local v15    # "sc":Ljava/lang/String;
    :cond_4
    sget-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVK;->chars:[Ljava/lang/String;

    move-object/from16 v16, v0

    move/from16 v17, v13

    aget-object v16, v16, v17

    if-eqz v16, :cond_5

    sget-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVK;->chars:[Ljava/lang/String;

    move-object/from16 v16, v0

    move/from16 v17, v13

    aget-object v16, v16, v17

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_5

    .line 584
    move-object/from16 v16, v7

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->text:Ljavafx/scene/text/Text;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/scene/text/Text;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v16

    const-string v17, "multi-char-text"

    invoke-interface/range {v16 .. v17}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 586
    :cond_5
    move-object/from16 v16, v12

    move-object/from16 v17, v7

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 574
    add-int/lit8 v13, v13, 0x1

    goto/16 :goto_3

    .line 588
    .end local v7    # "tmpKey":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    :cond_6
    move-object/from16 v16, v8

    move-object/from16 v17, v12

    invoke-interface/range {v16 .. v17}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 567
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 598
    .end local v9    # "i":I
    .end local v11    # "end":I
    .end local v12    # "keys":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;>;"
    .end local v13    # "j":I
    .local v10, "row":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;>;"
    :cond_7
    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v16

    move-object/from16 v17, v10

    invoke-interface/range {v16 .. v17}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v16

    .line 599
    goto/16 :goto_1
.end method

.method private registerUnhideHandler(Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 328
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->unHideEventHandler:Ljavafx/event/EventHandler;

    if-nez v2, :cond_0

    .line 329
    move-object v2, v0

    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)Ljavafx/event/EventHandler;

    move-result-object v3

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->unHideEventHandler:Ljavafx/event/EventHandler;

    .line 344
    :cond_0
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/TouchEvent;->TOUCH_PRESSED:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->unHideEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Node;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 345
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->unHideEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Node;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 346
    return-void
.end method

.method private restoreWindowPosition(Ljavafx/scene/Node;)V
    .locals 8

    .prologue
    .line 311
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v2, p1

    .local v2, "node":Ljavafx/scene/Node;
    move-object v5, v2

    if-eqz v5, :cond_0

    .line 312
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v5

    move-object v3, v5

    .line 313
    .local v3, "scene":Ljavafx/scene/Scene;
    move-object v5, v3

    if-eqz v5, :cond_0

    .line 314
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v5

    move-object v4, v5

    .line 315
    .local v4, "window":Ljavafx/stage/Window;
    move-object v5, v4

    if-eqz v5, :cond_0

    .line 316
    move-object v5, v4

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->origWindowYPos:Ljava/lang/Double;

    invoke-virtual {v6}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljavafx/stage/Window;->setY(D)V

    .line 320
    .end local v3    # "scene":Ljavafx/scene/Scene;
    .end local v4    # "window":Ljavafx/stage/Window;
    :cond_0
    return-void
.end method

.method private saveWindowPosition(Ljavafx/scene/Node;)V
    .locals 6

    .prologue
    .line 306
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v3

    move-object v2, v3

    .line 307
    .local v2, "w":Ljavafx/stage/Window;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/stage/Window;->getY()D

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->origWindowYPos:Ljava/lang/Double;

    .line 308
    return-void
.end method

.method private setupPrimaryVK()V
    .locals 25

    .prologue
    .line 381
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/FXVK;->setFocusTraversable(Z)V

    .line 382
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sun/javafx/scene/control/skin/FXVK;->setVisible(Z)V

    .line 385
    sget-object v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkPopup:Ljavafx/stage/Popup;

    if-nez v7, :cond_0

    .line 386
    new-instance v7, Ljavafx/stage/Popup;

    move-object/from16 v24, v7

    move-object/from16 v7, v24

    move-object/from16 v8, v24

    invoke-direct {v8}, Ljavafx/stage/Popup;-><init>()V

    sput-object v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkPopup:Ljavafx/stage/Popup;

    .line 387
    sget-object v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkPopup:Ljavafx/stage/Popup;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/stage/Popup;->setAutoFix(Z)V

    .line 389
    :cond_0
    sget-object v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkPopup:Ljavafx/stage/Popup;

    invoke-virtual {v7}, Ljavafx/stage/Popup;->getContent()Ljavafx/collections/ObservableList;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljavafx/scene/Node;

    move-object/from16 v24, v8

    move-object/from16 v8, v24

    move-object/from16 v9, v24

    const/4 v10, 0x0

    move-object v11, v1

    iget-object v11, v11, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    aput-object v11, v9, v10

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v7

    .line 391
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    .line 392
    invoke-static {v7}, Lcom/sun/javafx/util/Utils;->getScreen(Ljava/lang/Object;)Ljavafx/stage/Screen;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/stage/Screen;->getBounds()Ljavafx/geometry/Rectangle2D;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/geometry/Rectangle2D;->getHeight()D

    move-result-wide v7

    move-wide v2, v7

    .line 393
    .local v2, "screenHeight":D
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    invoke-static {v7}, Lcom/sun/javafx/util/Utils;->getScreen(Ljava/lang/Object;)Ljavafx/stage/Screen;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/stage/Screen;->getBounds()Ljavafx/geometry/Rectangle2D;

    move-result-object v7

    invoke-virtual {v7}, Ljavafx/geometry/Rectangle2D;->getWidth()D

    move-result-wide v7

    move-wide v4, v7

    .line 396
    .local v4, "width":D
    sget-object v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->slideInTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v7}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljavafx/animation/KeyFrame;

    move-object/from16 v24, v8

    move-object/from16 v8, v24

    move-object/from16 v9, v24

    const/4 v10, 0x0

    new-instance v11, Ljavafx/animation/KeyFrame;

    move-object/from16 v24, v11

    move-object/from16 v11, v24

    move-object/from16 v12, v24

    const-wide v13, 0x406f400000000000L    # 250.0

    .line 397
    invoke-static {v13, v14}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v13

    const/4 v14, 0x1

    new-array v14, v14, [Ljavafx/animation/KeyValue;

    move-object/from16 v24, v14

    move-object/from16 v14, v24

    move-object/from16 v15, v24

    const/16 v16, 0x0

    new-instance v17, Ljavafx/animation/KeyValue;

    move-object/from16 v24, v17

    move-object/from16 v17, v24

    move-object/from16 v18, v24

    sget-object v19, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->winY:Ljavafx/beans/property/DoubleProperty;

    move-wide/from16 v20, v2

    const-wide v22, 0x406e600000000000L    # 243.0

    sub-double v20, v20, v22

    .line 398
    invoke-static/range {v20 .. v21}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v20

    sget-object v21, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v18 .. v21}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v17, v15, v16

    invoke-direct {v12, v13, v14}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;[Ljavafx/animation/KeyValue;)V

    aput-object v11, v9, v10

    .line 396
    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v7

    .line 400
    sget-object v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->slideOutTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v7}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljavafx/animation/KeyFrame;

    move-object/from16 v24, v8

    move-object/from16 v8, v24

    move-object/from16 v9, v24

    const/4 v10, 0x0

    new-instance v11, Ljavafx/animation/KeyFrame;

    move-object/from16 v24, v11

    move-object/from16 v11, v24

    move-object/from16 v12, v24

    const-wide v13, 0x406f400000000000L    # 250.0

    .line 401
    invoke-static {v13, v14}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v13

    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$$Lambda$2;->lambdaFactory$()Ljavafx/event/EventHandler;

    move-result-object v14

    const/4 v15, 0x1

    new-array v15, v15, [Ljavafx/animation/KeyValue;

    move-object/from16 v24, v15

    move-object/from16 v15, v24

    move-object/from16 v16, v24

    const/16 v17, 0x0

    new-instance v18, Ljavafx/animation/KeyValue;

    move-object/from16 v24, v18

    move-object/from16 v18, v24

    move-object/from16 v19, v24

    sget-object v20, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->winY:Ljavafx/beans/property/DoubleProperty;

    move-wide/from16 v21, v2

    .line 407
    invoke-static/range {v21 .. v22}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v21

    sget-object v22, Ljavafx/animation/Interpolator;->EASE_BOTH:Ljavafx/animation/Interpolator;

    invoke-direct/range {v19 .. v22}, Ljavafx/animation/KeyValue;-><init>(Ljavafx/beans/value/WritableValue;Ljava/lang/Object;Ljavafx/animation/Interpolator;)V

    aput-object v18, v16, v17

    invoke-direct {v12, v13, v14, v15}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    aput-object v11, v9, v10

    .line 400
    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v7

    .line 410
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    move-wide v8, v4

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/FXVK;->setPrefWidth(D)V

    .line 411
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/FXVK;->setMinWidth(D)V

    .line 412
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/FXVK;->setMaxWidth(D)V

    .line 414
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    const-wide v8, 0x406e600000000000L    # 243.0

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/FXVK;->setPrefHeight(D)V

    .line 415
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    const-wide/high16 v8, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/FXVK;->setMinHeight(D)V

    .line 419
    sget-object v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVKDelay:Ljavafx/animation/Timeline;

    if-nez v7, :cond_1

    .line 420
    new-instance v7, Ljavafx/animation/Timeline;

    move-object/from16 v24, v7

    move-object/from16 v7, v24

    move-object/from16 v8, v24

    invoke-direct {v8}, Ljavafx/animation/Timeline;-><init>()V

    sput-object v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVKDelay:Ljavafx/animation/Timeline;

    .line 422
    :cond_1
    new-instance v7, Ljavafx/animation/KeyFrame;

    move-object/from16 v24, v7

    move-object/from16 v7, v24

    move-object/from16 v8, v24

    const-wide v9, 0x407f400000000000L    # 500.0

    invoke-static {v9, v10}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v9

    move-object v10, v1

    invoke-static {v10}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/FXVKSkin;)Ljavafx/event/EventHandler;

    move-result-object v10

    const/4 v11, 0x0

    new-array v11, v11, [Ljavafx/animation/KeyValue;

    invoke-direct {v8, v9, v10, v11}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    move-object v6, v7

    .line 427
    .local v6, "kf":Ljavafx/animation/KeyFrame;
    sget-object v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVKDelay:Ljavafx/animation/Timeline;

    invoke-virtual {v7}, Ljavafx/animation/Timeline;->getKeyFrames()Ljavafx/collections/ObservableList;

    move-result-object v7

    const/4 v8, 0x1

    new-array v8, v8, [Ljavafx/animation/KeyFrame;

    move-object/from16 v24, v8

    move-object/from16 v8, v24

    move-object/from16 v9, v24

    const/4 v10, 0x0

    move-object v11, v6

    aput-object v11, v9, v10

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v7

    .line 430
    sget-wide v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->KEY_REPEAT_RATE:D

    const-wide/16 v9, 0x0

    cmpl-double v7, v7, v9

    if-lez v7, :cond_2

    .line 431
    new-instance v7, Ljavafx/animation/Timeline;

    move-object/from16 v24, v7

    move-object/from16 v7, v24

    move-object/from16 v8, v24

    const/4 v9, 0x1

    new-array v9, v9, [Ljavafx/animation/KeyFrame;

    move-object/from16 v24, v9

    move-object/from16 v9, v24

    move-object/from16 v10, v24

    const/4 v11, 0x0

    new-instance v12, Ljavafx/animation/KeyFrame;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    sget-wide v14, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->KEY_REPEAT_DELAY:D

    .line 432
    invoke-static {v14, v15}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v14

    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$$Lambda$4;->lambdaFactory$()Ljavafx/event/EventHandler;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljavafx/animation/KeyValue;

    move-object/from16 v16, v0

    invoke-direct/range {v13 .. v16}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    aput-object v12, v10, v11

    invoke-direct {v8, v9}, Ljavafx/animation/Timeline;-><init>([Ljavafx/animation/KeyFrame;)V

    sput-object v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->repeatInitialDelay:Ljavafx/animation/Timeline;

    .line 440
    new-instance v7, Ljavafx/animation/Timeline;

    move-object/from16 v24, v7

    move-object/from16 v7, v24

    move-object/from16 v8, v24

    const/4 v9, 0x1

    new-array v9, v9, [Ljavafx/animation/KeyFrame;

    move-object/from16 v24, v9

    move-object/from16 v9, v24

    move-object/from16 v10, v24

    const/4 v11, 0x0

    new-instance v12, Ljavafx/animation/KeyFrame;

    move-object/from16 v24, v12

    move-object/from16 v12, v24

    move-object/from16 v13, v24

    const-wide v14, 0x408f400000000000L    # 1000.0

    sget-wide v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->KEY_REPEAT_RATE:D

    div-double v14, v14, v16

    .line 441
    invoke-static {v14, v15}, Ljavafx/util/Duration;->millis(D)Ljavafx/util/Duration;

    move-result-object v14

    invoke-static {}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$$Lambda$5;->lambdaFactory$()Ljavafx/event/EventHandler;

    move-result-object v15

    const/16 v16, 0x0

    move/from16 v0, v16

    new-array v0, v0, [Ljavafx/animation/KeyValue;

    move-object/from16 v16, v0

    invoke-direct/range {v13 .. v16}, Ljavafx/animation/KeyFrame;-><init>(Ljavafx/util/Duration;Ljavafx/event/EventHandler;[Ljavafx/animation/KeyValue;)V

    aput-object v12, v10, v11

    invoke-direct {v8, v9}, Ljavafx/animation/Timeline;-><init>([Ljavafx/animation/KeyFrame;)V

    sput-object v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->repeatSubsequentDelay:Ljavafx/animation/Timeline;

    .line 447
    sget-object v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->repeatSubsequentDelay:Ljavafx/animation/Timeline;

    const/4 v8, -0x1

    invoke-virtual {v7, v8}, Ljavafx/animation/Timeline;->setCycleCount(I)V

    .line 449
    :cond_2
    return-void
.end method

.method private showSecondaryVK(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;)V
    .locals 23

    .prologue
    .line 890
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object/from16 v3, p1

    .local v3, "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;
    move-object/from16 v16, v3

    if-eqz v16, :cond_12

    .line 891
    sget-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->primaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/FXVK;->getAttachedNode()Ljavafx/scene/Node;

    move-result-object v16

    move-object/from16 v4, v16

    .line 893
    .local v4, "textInput":Ljavafx/scene/Node;
    sget-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    if-nez v16, :cond_0

    .line 894
    new-instance v16, Lcom/sun/javafx/scene/control/skin/FXVK;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Lcom/sun/javafx/scene/control/skin/FXVK;-><init>()V

    sput-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    .line 896
    sget-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    new-instance v17, Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    sget-object v19, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    invoke-direct/range {v18 .. v19}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;-><init>(Lcom/sun/javafx/scene/control/skin/FXVK;)V

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/scene/control/skin/FXVK;->setSkin(Ljavafx/scene/control/Skin;)V

    .line 897
    sget-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/FXVK;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v16

    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v17, v0

    move-object/from16 v22, v17

    move-object/from16 v17, v22

    move-object/from16 v18, v22

    const/16 v19, 0x0

    const-string v20, "fxvk-secondary"

    aput-object v20, v18, v19

    invoke-interface/range {v16 .. v17}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v16

    .line 898
    new-instance v16, Ljavafx/stage/Popup;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Ljavafx/stage/Popup;-><init>()V

    sput-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryPopup:Ljavafx/stage/Popup;

    .line 899
    sget-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryPopup:Ljavafx/stage/Popup;

    const/16 v17, 0x1

    invoke-virtual/range {v16 .. v17}, Ljavafx/stage/Popup;->setAutoHide(Z)V

    .line 900
    sget-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryPopup:Ljavafx/stage/Popup;

    invoke-virtual/range {v16 .. v16}, Ljavafx/stage/Popup;->getContent()Ljavafx/collections/ObservableList;

    move-result-object v16

    sget-object v17, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    invoke-interface/range {v16 .. v17}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 903
    :cond_0
    sget-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sun/javafx/scene/control/skin/FXVK;->chars:[Ljava/lang/String;

    .line 904
    new-instance v16, Ljava/util/ArrayList;

    move-object/from16 v22, v16

    move-object/from16 v16, v22

    move-object/from16 v17, v22

    invoke-direct/range {v17 .. v17}, Ljava/util/ArrayList;-><init>()V

    move-object/from16 v5, v16

    .line 907
    .local v5, "secondaryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->isSymbol:Z

    move/from16 v16, v0

    if-nez v16, :cond_2

    .line 908
    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->access$2300(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_2

    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->access$2300(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_2

    .line 909
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->shiftDown:Z

    move/from16 v16, v0

    if-nez v16, :cond_1

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->capsDown:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 910
    :cond_1
    move-object/from16 v16, v5

    move-object/from16 v17, v3

    invoke-static/range {v17 .. v17}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->access$2300(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 918
    :cond_2
    :goto_0
    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->access$2400(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;)Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_4

    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->access$2400(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;)Ljava/lang/String;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    if-lez v16, :cond_4

    .line 919
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->shiftDown:Z

    move/from16 v16, v0

    if-nez v16, :cond_3

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->capsDown:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7

    .line 920
    :cond_3
    move-object/from16 v16, v5

    move-object/from16 v17, v3

    invoke-static/range {v17 .. v17}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->access$2400(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 927
    :cond_4
    :goto_1
    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->access$2500(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;)[Ljava/lang/String;

    move-result-object v16

    if-eqz v16, :cond_8

    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->access$2500(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    if-lez v16, :cond_8

    .line 928
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->isSymbol:Z

    move/from16 v16, v0

    if-eqz v16, :cond_a

    .line 930
    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->access$2500(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v6, v16

    move-object/from16 v16, v6

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v7, v16

    const/16 v16, 0x0

    move/from16 v8, v16

    :goto_2
    move/from16 v16, v8

    move/from16 v17, v7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    move-object/from16 v16, v6

    move/from16 v17, v8

    aget-object v16, v16, v17

    move-object/from16 v9, v16

    .line 931
    .local v9, "ch":Ljava/lang/String;
    move-object/from16 v16, v9

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isLetter(C)Z

    move-result v16

    if-nez v16, :cond_5

    .line 932
    move-object/from16 v16, v5

    move-object/from16 v17, v9

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 930
    :cond_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 912
    .end local v9    # "ch":Ljava/lang/String;
    :cond_6
    move-object/from16 v16, v5

    move-object/from16 v17, v3

    invoke-static/range {v17 .. v17}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->access$2300(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v16

    goto/16 :goto_0

    .line 922
    :cond_7
    move-object/from16 v16, v5

    move-object/from16 v17, v3

    invoke-static/range {v17 .. v17}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->access$2400(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;)Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v16

    goto :goto_1

    .line 930
    .line 949
    :cond_8
    const/16 v16, 0x0

    move/from16 v6, v16

    .line 950
    .local v6, "isMultiChar":Z
    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v16

    move-object/from16 v7, v16

    :goto_3
    move-object/from16 v16, v7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_e

    move-object/from16 v16, v7

    invoke-interface/range {v16 .. v16}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/String;

    move-object/from16 v8, v16

    .line 951
    .local v8, "s":Ljava/lang/String;
    move-object/from16 v16, v8

    invoke-virtual/range {v16 .. v16}, Ljava/lang/String;->length()I

    move-result v16

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_9

    .line 952
    const/16 v16, 0x1

    move/from16 v6, v16

    .line 954
    :cond_9
    goto :goto_3

    .line 937
    .end local v6    # "isMultiChar":Z
    .end local v8    # "s":Ljava/lang/String;
    :cond_a
    move-object/from16 v16, v3

    invoke-static/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;->access$2500(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;)[Ljava/lang/String;

    move-result-object v16

    move-object/from16 v6, v16

    move-object/from16 v16, v6

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v7, v16

    const/16 v16, 0x0

    move/from16 v8, v16

    :goto_4
    move/from16 v16, v8

    move/from16 v17, v7

    move/from16 v0, v16

    move/from16 v1, v17

    if-ge v0, v1, :cond_8

    move-object/from16 v16, v6

    move/from16 v17, v8

    aget-object v16, v16, v17

    move-object/from16 v9, v16

    .line 938
    .restart local v9    # "ch":Ljava/lang/String;
    move-object/from16 v16, v9

    const/16 v17, 0x0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->charAt(I)C

    move-result v16

    invoke-static/range {v16 .. v16}, Ljava/lang/Character;->isLetter(C)Z

    move-result v16

    if-eqz v16, :cond_c

    .line 939
    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->shiftDown:Z

    move/from16 v16, v0

    if-nez v16, :cond_b

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-boolean v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->capsDown:Z

    move/from16 v16, v0

    if-eqz v16, :cond_d

    .line 940
    :cond_b
    move-object/from16 v16, v5

    move-object/from16 v17, v9

    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v17

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v16

    .line 937
    :cond_c
    :goto_5
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 942
    :cond_d
    move-object/from16 v16, v5

    move-object/from16 v17, v9

    invoke-virtual/range {v16 .. v17}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    move-result v16

    goto :goto_5

    .line 956
    .end local v9    # "ch":Ljava/lang/String;
    .restart local v6    # "isMultiChar":Z
    :cond_e
    sget-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    move-object/from16 v17, v5

    move-object/from16 v18, v5

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    new-array v0, v0, [Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Ljava/util/ArrayList;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v17

    check-cast v17, [Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v16

    iput-object v0, v1, Lcom/sun/javafx/scene/control/skin/FXVK;->chars:[Ljava/lang/String;

    .line 958
    sget-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVK;->chars:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_10

    .line 959
    sget-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/FXVK;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v16

    if-eqz v16, :cond_f

    .line 960
    sget-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/FXVK;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v16

    check-cast v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    invoke-direct/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->rebuildSecondaryVK()V

    .line 963
    :cond_f
    sget-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    move-object/from16 v17, v4

    invoke-virtual/range {v16 .. v17}, Lcom/sun/javafx/scene/control/skin/FXVK;->setAttachedNode(Ljavafx/scene/Node;)V

    .line 964
    sget-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->primaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/FXVK;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v16

    check-cast v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object/from16 v7, v16

    .line 965
    .local v7, "primarySkin":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    sget-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/FXVK;->getSkin()Ljavafx/scene/control/Skin;

    move-result-object v16

    check-cast v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;

    move-object/from16 v8, v16

    .line 967
    .local v8, "secondarySkin":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    sget-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVK;->chars:[Ljava/lang/String;

    move-object/from16 v16, v0

    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v16, v0

    move/from16 v9, v16

    .line 968
    .local v9, "nKeys":I
    const/16 v16, 0x1

    move/from16 v17, v9

    const/16 v18, 0x2

    add-int/lit8 v17, v17, -0x2

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->max(II)I

    move-result v16

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->sqrt(D)D

    move-result-wide v16

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->floor(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v10, v16

    .line 969
    .local v10, "nRows":I
    move/from16 v16, v9

    move/from16 v0, v16

    int-to-double v0, v0

    move-wide/from16 v16, v0

    move/from16 v18, v10

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    div-double v16, v16, v18

    invoke-static/range {v16 .. v17}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v16

    move-wide/from16 v0, v16

    double-to-int v0, v0

    move/from16 v16, v0

    move/from16 v11, v16

    .line 971
    .local v11, "nKeysPerRow":I
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->snappedLeftInset()D

    move-result-wide v16

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->snappedRightInset()D

    move-result-wide v18

    add-double v16, v16, v18

    move/from16 v18, v11

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x4044000000000000L    # 40.0

    mul-double v18, v18, v20

    move/from16 v20, v6

    if-eqz v20, :cond_11

    const/16 v20, 0x2

    :goto_6
    move/from16 v0, v20

    int-to-double v0, v0

    move-wide/from16 v20, v0

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move/from16 v18, v11

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    const/16 v19, 0x6

    mul-int/lit8 v18, v18, 0x6

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    move-wide/from16 v12, v16

    .line 973
    .local v12, "w":D
    move-object/from16 v16, v2

    invoke-virtual/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->snappedTopInset()D

    move-result-wide v16

    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->snappedBottomInset()D

    move-result-wide v18

    add-double v16, v16, v18

    move/from16 v18, v10

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    const-wide/high16 v20, 0x404c000000000000L    # 56.0

    mul-double v18, v18, v20

    add-double v16, v16, v18

    move/from16 v18, v10

    const/16 v19, 0x1

    add-int/lit8 v18, v18, -0x1

    const/16 v19, 0x6

    mul-int/lit8 v18, v18, 0x6

    move/from16 v0, v18

    int-to-double v0, v0

    move-wide/from16 v18, v0

    add-double v16, v16, v18

    move-wide/from16 v14, v16

    .line 976
    .local v14, "h":D
    sget-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    move-wide/from16 v17, v12

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/FXVK;->setPrefWidth(D)V

    .line 977
    sget-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    const-wide/high16 v17, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/FXVK;->setMinWidth(D)V

    .line 978
    sget-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    move-wide/from16 v17, v14

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/FXVK;->setPrefHeight(D)V

    .line 979
    sget-object v16, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->secondaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    const-wide/high16 v17, -0x10000000000000L    # Double.NEGATIVE_INFINITY

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/FXVK;->setMinHeight(D)V

    .line 980
    move-object/from16 v16, v3

    move-wide/from16 v17, v12

    move-wide/from16 v19, v14

    invoke-static/range {v16 .. v20}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$$Lambda$6;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/FXVKSkin$CharKey;DD)Ljava/lang/Runnable;

    move-result-object v16

    invoke-static/range {v16 .. v16}, Ljavafx/application/Platform;->runLater(Ljava/lang/Runnable;)V

    .line 992
    .line 995
    .end local v4    # "textInput":Ljavafx/scene/Node;
    .end local v5    # "secondaryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "isMultiChar":Z
    .end local v7    # "primarySkin":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    .end local v8    # "secondarySkin":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    .end local v9    # "nKeys":I
    .end local v10    # "nRows":I
    .end local v11    # "nKeysPerRow":I
    .end local v12    # "w":D
    .end local v14    # "h":D
    :cond_10
    :goto_7
    return-void

    .line 971
    .restart local v4    # "textInput":Ljavafx/scene/Node;
    .restart local v5    # "secondaryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .restart local v6    # "isMultiChar":Z
    .restart local v7    # "primarySkin":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    .restart local v8    # "secondarySkin":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    .restart local v9    # "nKeys":I
    .restart local v10    # "nRows":I
    .restart local v11    # "nKeysPerRow":I
    :cond_11
    const/16 v20, 0x1

    goto :goto_6

    .line 993
    .end local v4    # "textInput":Ljavafx/scene/Node;
    .end local v5    # "secondaryList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v6    # "isMultiChar":Z
    .end local v7    # "primarySkin":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    .end local v8    # "secondarySkin":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    .end local v9    # "nKeys":I
    .end local v10    # "nRows":I
    .end local v11    # "nKeysPerRow":I
    :cond_12
    move-object/from16 v16, v2

    invoke-direct/range {v16 .. v16}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->closeSecondaryVK()V

    goto :goto_7
.end method

.method private static startSlideIn()V
    .locals 1

    .prologue
    .line 231
    sget-object v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->slideOutTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v0}, Ljavafx/animation/Timeline;->stop()V

    .line 232
    sget-object v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->slideInTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v0}, Ljavafx/animation/Timeline;->playFromStart()V

    .line 233
    return-void
.end method

.method private static startSlideOut(Z)V
    .locals 2

    .prologue
    .line 236
    move v0, p0

    .local v0, "doHide":Z
    move v1, v0

    sput-boolean v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->hideAfterSlideOut:Z

    .line 237
    sget-object v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->slideInTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v1}, Ljavafx/animation/Timeline;->stop()V

    .line 238
    sget-object v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->slideOutTimeline:Ljavafx/animation/Timeline;

    invoke-virtual {v1}, Ljavafx/animation/Timeline;->playFromStart()V

    .line 239
    return-void
.end method

.method private unRegisterUnhideHandler(Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 349
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->unHideEventHandler:Ljavafx/event/EventHandler;

    if-eqz v2, :cond_0

    .line 350
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/TouchEvent;->TOUCH_PRESSED:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->unHideEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Node;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 351
    move-object v2, v1

    sget-object v3, Ljavafx/scene/input/MouseEvent;->MOUSE_PRESSED:Ljavafx/event/EventType;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->unHideEventHandler:Ljavafx/event/EventHandler;

    invoke-virtual {v2, v3, v4}, Ljavafx/scene/Node;->removeEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 353
    :cond_0
    return-void
.end method

.method private updateKeyboardType(Ljavafx/scene/Node;)V
    .locals 6

    .prologue
    .line 365
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkType:Ljava/lang/String;

    move-object v2, v3

    .line 366
    .local v2, "oldType":Ljava/lang/String;
    move-object v3, v0

    move-object v4, v0

    move-object v5, v1

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->getNodeVKType(Ljavafx/scene/Node;)Ljava/lang/String;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkType:Ljava/lang/String;

    .line 368
    move-object v3, v2

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkType:Ljava/lang/String;

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 369
    :cond_0
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkType:Ljava/lang/String;

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->rebuildPrimaryVK(Ljava/lang/String;)V

    .line 371
    :cond_1
    return-void
.end method

.method private updateKeys()V
    .locals 9

    .prologue
    .line 145
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->currentBoard:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v1, v5

    :goto_0
    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    move-object v5, v1

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/util/List;

    move-object v2, v5

    .line 146
    .local v2, "row":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;>;"
    move-object v5, v2

    invoke-interface {v5}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_1
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;

    move-object v4, v5

    .line 147
    .local v4, "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    move-object v5, v4

    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->capsDown:Z

    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->shiftDown:Z

    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->isSymbol:Z

    invoke-virtual {v5, v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->update(ZZZ)V

    .line 148
    goto :goto_1

    .line 149
    .end local v4    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    :cond_0
    goto :goto_0

    .line 150
    .end local v2    # "row":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;>;"
    :cond_1
    return-void
.end method


# virtual methods
.method clearShift()V
    .locals 4

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->shiftDown:Z

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->capsDown:Z

    if-nez v1, :cond_0

    .line 93
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->shiftDown:Z

    .line 94
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->updateKeys()V

    .line 96
    :cond_0
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->lastTime:J

    .line 97
    return-void
.end method

.method clearStateKeys()V
    .locals 4

    .prologue
    .line 137
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->capsDown:Z

    .line 138
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->shiftDown:Z

    .line 139
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->isSymbol:Z

    .line 140
    move-object v1, v0

    const-wide/16 v2, -0x1

    iput-wide v2, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->lastTime:J

    .line 141
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->updateKeys()V

    .line 142
    return-void
.end method

.method clearSymbolABC()V
    .locals 3

    .prologue
    .line 127
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->isSymbol:Z

    .line 128
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->updateKeys()V

    .line 129
    return-void
.end method

.method protected computePrefHeight(DDDDD)D
    .locals 17

    .prologue
    .line 632
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-wide v12, v4

    const-wide/high16 v14, 0x4079000000000000L    # 400.0

    add-double/2addr v12, v14

    move-wide v14, v8

    add-double/2addr v12, v14

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    return-wide v1
.end method

.method protected computePrefWidth(DDDDD)D
    .locals 17

    .prologue
    .line 627
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-wide/from16 v4, p3

    .local v4, "topInset":D
    move-wide/from16 v6, p5

    .local v6, "rightInset":D
    move-wide/from16 v8, p7

    .local v8, "bottomInset":D
    move-wide/from16 v10, p9

    .local v10, "leftInset":D
    move-wide v12, v10

    const/16 v14, 0x38

    move-object v15, v1

    iget v15, v15, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->numCols:I

    mul-int/2addr v14, v15

    int-to-double v14, v14

    add-double/2addr v12, v14

    move-wide v14, v6

    add-double/2addr v12, v14

    move-wide v1, v12

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    return-wide v1
.end method

.method protected layoutChildren(DDDD)V
    .locals 35

    .prologue
    .line 639
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-wide/from16 v3, p1

    .local v3, "contentX":D
    move-wide/from16 v5, p3

    .local v5, "contentY":D
    move-wide/from16 v7, p5

    .local v7, "contentWidth":D
    move-wide/from16 v9, p7

    .local v9, "contentHeight":D
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->currentBoard:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    move/from16 v11, v26

    .line 640
    .local v11, "numRows":I
    move-wide/from16 v26, v7

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->numCols:I

    move/from16 v28, v0

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    const/16 v29, 0x6

    mul-int/lit8 v28, v28, 0x6

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    sub-double v26, v26, v28

    move-object/from16 v28, v2

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->numCols:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    move-wide/from16 v12, v26

    .line 641
    .local v12, "colWidth":D
    move-wide/from16 v26, v9

    move/from16 v28, v11

    const/16 v29, 0x1

    add-int/lit8 v28, v28, -0x1

    const/16 v29, 0x6

    mul-int/lit8 v28, v28, 0x6

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    sub-double v26, v26, v28

    move/from16 v28, v11

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    div-double v26, v26, v28

    move-wide/from16 v14, v26

    .line 642
    .local v14, "rowHeight":D
    move-wide/from16 v26, v5

    move-wide/from16 v16, v26

    .line 643
    .local v16, "rowY":D
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->currentBoard:Ljava/util/List;

    move-object/from16 v26, v0

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    move-object/from16 v18, v26

    :goto_0
    move-object/from16 v26, v18

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_1

    move-object/from16 v26, v18

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Ljava/util/List;

    move-object/from16 v19, v26

    .line 644
    .local v19, "row":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;>;"
    move-object/from16 v26, v19

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    move-object/from16 v20, v26

    :goto_1
    move-object/from16 v26, v20

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_0

    move-object/from16 v26, v20

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;

    move-object/from16 v21, v26

    .line 645
    .local v21, "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    move-wide/from16 v26, v3

    move-object/from16 v28, v21

    move-object/from16 v0, v28

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->col:I

    move/from16 v28, v0

    move/from16 v0, v28

    int-to-double v0, v0

    move-wide/from16 v28, v0

    move-wide/from16 v30, v12

    const-wide/high16 v32, 0x4018000000000000L    # 6.0

    add-double v30, v30, v32

    mul-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v22, v26

    .line 646
    .local v22, "startX":D
    move-object/from16 v26, v21

    move-object/from16 v0, v26

    iget v0, v0, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->colSpan:I

    move/from16 v26, v0

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    move-wide/from16 v28, v12

    const-wide/high16 v30, 0x4018000000000000L    # 6.0

    add-double v28, v28, v30

    mul-double v26, v26, v28

    const-wide/high16 v28, 0x4018000000000000L    # 6.0

    sub-double v26, v26, v28

    move-wide/from16 v24, v26

    .line 647
    .local v24, "width":D
    move-object/from16 v26, v21

    move-wide/from16 v27, v22

    const-wide/high16 v29, 0x3fe0000000000000L    # 0.5

    add-double v27, v27, v29

    move-wide/from16 v0, v27

    double-to-int v0, v0

    move/from16 v27, v0

    move/from16 v0, v27

    int-to-double v0, v0

    move-wide/from16 v27, v0

    move-wide/from16 v29, v16

    const-wide/high16 v31, 0x3fe0000000000000L    # 0.5

    add-double v29, v29, v31

    move-wide/from16 v0, v29

    double-to-int v0, v0

    move/from16 v29, v0

    move/from16 v0, v29

    int-to-double v0, v0

    move-wide/from16 v29, v0

    move-wide/from16 v31, v24

    move-wide/from16 v33, v14

    invoke-virtual/range {v26 .. v34}, Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;->resizeRelocate(DDDD)V

    .line 649
    goto :goto_1

    .line 650
    .end local v21    # "key":Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;
    .end local v22    # "startX":D
    .end local v24    # "width":D
    :cond_0
    move-wide/from16 v26, v16

    move-wide/from16 v28, v14

    const-wide/high16 v30, 0x4018000000000000L    # 6.0

    add-double v28, v28, v30

    add-double v26, v26, v28

    move-wide/from16 v16, v26

    .line 651
    goto/16 :goto_0

    .line 652
    .end local v19    # "row":Ljava/util/List;, "Ljava/util/List<Lcom/sun/javafx/scene/control/skin/FXVKSkin$Key;>;"
    :cond_1
    return-void
.end method

.method prerender(Ljavafx/scene/Node;)V
    .locals 9

    .prologue
    .line 452
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, p1

    .local v1, "node":Ljavafx/scene/Node;
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    sget-object v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->primaryVK:Lcom/sun/javafx/scene/control/skin/FXVK;

    if-eq v3, v4, :cond_0

    .line 453
    .line 473
    :goto_0
    return-void

    .line 457
    :cond_0
    move-object v3, v0

    const-string v4, "text"

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->loadBoard(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 458
    move-object v3, v0

    const-string v4, "numeric"

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->loadBoard(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 459
    move-object v3, v0

    const-string v4, "url"

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->loadBoard(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 460
    move-object v3, v0

    const-string v4, "email"

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->loadBoard(Ljava/lang/String;)Ljava/util/List;

    move-result-object v3

    .line 462
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->updateKeyboardType(Ljavafx/scene/Node;)V

    .line 463
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/FXVK;->setVisible(Z)V

    .line 465
    sget-object v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkPopup:Ljavafx/stage/Popup;

    invoke-virtual {v3}, Ljavafx/stage/Popup;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    .line 466
    move-object v3, v1

    .line 467
    invoke-static {v3}, Lcom/sun/javafx/util/Utils;->getScreen(Ljava/lang/Object;)Ljavafx/stage/Screen;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/stage/Screen;->getBounds()Ljavafx/geometry/Rectangle2D;

    move-result-object v3

    move-object v2, v3

    .line 469
    .local v2, "screenBounds":Ljavafx/geometry/Rectangle2D;
    sget-object v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkPopup:Ljavafx/stage/Popup;

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Rectangle2D;->getWidth()D

    move-result-wide v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->fxvk:Lcom/sun/javafx/scene/control/skin/FXVK;

    const-wide/high16 v7, -0x4010000000000000L    # -1.0

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/FXVK;->prefWidth(D)D

    move-result-wide v6

    sub-double/2addr v4, v6

    const-wide/high16 v6, 0x4000000000000000L    # 2.0

    div-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljavafx/stage/Popup;->setX(D)V

    .line 470
    sget-object v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->winY:Ljavafx/beans/property/DoubleProperty;

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/geometry/Rectangle2D;->getHeight()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 471
    sget-object v3, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->vkPopup:Ljavafx/stage/Popup;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Node;->getScene()Ljavafx/scene/Scene;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getWindow()Ljavafx/stage/Window;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/stage/Popup;->show(Ljavafx/stage/Window;)V

    .line 473
    .end local v2    # "screenBounds":Ljavafx/geometry/Rectangle2D;
    :cond_1
    goto :goto_0
.end method

.method pressShift()V
    .locals 8

    .prologue
    .line 100
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    move-wide v2, v4

    .line 103
    .local v2, "time":J
    move-object v4, v1

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->shiftDown:Z

    if-eqz v4, :cond_1

    move-object v4, v1

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->capsDown:Z

    if-nez v4, :cond_1

    .line 104
    move-object v4, v1

    iget-wide v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->lastTime:J

    const-wide/16 v6, 0x0

    cmp-long v4, v4, v6

    if-lez v4, :cond_0

    move-wide v4, v2

    move-object v6, v1

    iget-wide v6, v6, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->lastTime:J

    sub-long/2addr v4, v6

    const-wide/16 v6, 0x190

    cmp-long v4, v4, v6

    if-gez v4, :cond_0

    .line 106
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->shiftDown:Z

    .line 107
    move-object v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->capsDown:Z

    .line 122
    :goto_0
    move-object v4, v1

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->updateKeys()V

    .line 123
    move-object v4, v1

    move-wide v5, v2

    iput-wide v5, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->lastTime:J

    .line 124
    return-void

    .line 110
    :cond_0
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->shiftDown:Z

    .line 111
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->capsDown:Z

    goto :goto_0

    .line 113
    :cond_1
    move-object v4, v1

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->shiftDown:Z

    if-nez v4, :cond_2

    move-object v4, v1

    iget-boolean v4, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->capsDown:Z

    if-nez v4, :cond_2

    .line 115
    move-object v4, v1

    const/4 v5, 0x1

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->shiftDown:Z

    goto :goto_0

    .line 118
    :cond_2
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->shiftDown:Z

    .line 119
    move-object v4, v1

    const/4 v5, 0x0

    iput-boolean v5, v4, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->capsDown:Z

    goto :goto_0
.end method

.method pressSymbolABC()V
    .locals 3

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/FXVKSkin;
    move-object v1, v0

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->isSymbol:Z

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->isSymbol:Z

    .line 133
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/FXVKSkin;->updateKeys()V

    .line 134
    return-void

    .line 132
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method
