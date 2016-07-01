.class public Lcom/sun/javafx/application/PlatformImpl;
.super Ljava/lang/Object;
.source "PlatformImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/application/PlatformImpl$FinishListener;
    }
.end annotation


# static fields
.field private static accessibilityActive:Ljavafx/beans/property/BooleanProperty;

.field private static accessibilityTheme:Ljava/lang/String;

.field private static contextual2DNavigation:Z

.field private static finishListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lcom/sun/javafx/application/PlatformImpl$FinishListener;",
            ">;"
        }
    .end annotation
.end field

.field private static volatile firstWindowShown:Z

.field private static hasMultiTouch:Ljava/lang/Boolean;

.field private static hasPointer:Ljava/lang/Boolean;

.field private static hasTouch:Ljava/lang/Boolean;

.field private static hasTwoLevelFocus:Ljava/lang/Boolean;

.field private static hasVirtualKeyboard:Ljava/lang/Boolean;

.field private static volatile implicitExit:Z

.field private static initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static isCaspian:Z

.field private static isControlsSupported:Ljava/lang/Boolean;

.field private static isFXMLSupported:Ljava/lang/Boolean;

.field private static isGraphicsSupported:Ljava/lang/Boolean;

.field private static isMediaSupported:Ljava/lang/Boolean;

.field private static isModena:Z

.field private static isSWTSupported:Ljava/lang/Boolean;

.field private static isSwingSupported:Ljava/lang/Boolean;

.field private static isThreadMerged:Z

.field private static isWebSupported:Ljava/lang/Boolean;

.field private static volatile lastWindowClosed:Z

.field private static listenersRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static numWindows:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static pendingRunnables:Ljava/util/concurrent/atomic/AtomicInteger;

.field private static platformExit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final platformExitLatch:Ljava/util/concurrent/CountDownLatch;

.field private static reallyIdle:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static final runLaterLock:Ljava/lang/Object;

.field private static startupLatch:Ljava/util/concurrent/CountDownLatch;

.field private static taskbarApplication:Z

.field private static toolkitExit:Ljava/util/concurrent/atomic/AtomicBoolean;

.field private static toolkitListener:Lcom/sun/javafx/tk/TKListener;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 59
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 60
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->platformExit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 61
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->toolkitExit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 62
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->startupLatch:Ljava/util/concurrent/CountDownLatch;

    .line 63
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->listenersRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 64
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->toolkitListener:Lcom/sun/javafx/tk/TKListener;

    .line 65
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->implicitExit:Z

    .line 66
    const/4 v0, 0x1

    sput-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->taskbarApplication:Z

    .line 68
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->pendingRunnables:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 69
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->numWindows:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 70
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->firstWindowShown:Z

    .line 71
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->lastWindowClosed:Z

    .line 72
    new-instance v0, Ljava/util/concurrent/atomic/AtomicBoolean;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->reallyIdle:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 73
    new-instance v0, Ljava/util/concurrent/CopyOnWriteArraySet;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/util/concurrent/CopyOnWriteArraySet;-><init>()V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->finishListeners:Ljava/util/Set;

    .line 75
    new-instance v0, Ljava/lang/Object;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->runLaterLock:Ljava/lang/Object;

    .line 88
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->isThreadMerged:Z

    .line 89
    new-instance v0, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    invoke-direct {v1}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>()V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->accessibilityActive:Ljavafx/beans/property/BooleanProperty;

    .line 435
    new-instance v0, Ljava/util/concurrent/CountDownLatch;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->platformExitLatch:Ljava/util/concurrent/CountDownLatch;

    .line 515
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->isModena:Z

    .line 516
    const/4 v0, 0x0

    sput-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->isCaspian:Z

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/application/PlatformImpl;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static _setAccessibilityTheme(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 575
    move-object v0, p0

    .local v0, "platformTheme":Ljava/lang/String;
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl$$Lambda$12;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v4

    invoke-static {v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    move-object v1, v4

    .line 578
    .local v1, "userTheme":Ljava/lang/String;
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->isCaspian()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 579
    move-object v4, v0

    if-nez v4, :cond_0

    move-object v4, v1

    if-eqz v4, :cond_1

    .line 581
    :cond_0
    const-string v4, "com/sun/javafx/scene/control/skin/caspian/highcontrast.css"

    sput-object v4, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    .line 617
    :cond_1
    :goto_0
    return-void

    .line 583
    :cond_2
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->isModena()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 585
    move-object v4, v1

    if-eqz v4, :cond_4

    .line 586
    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    const/4 v4, -0x1

    move v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_0

    :cond_3
    :goto_1
    move v4, v3

    packed-switch v4, :pswitch_data_0

    .line 595
    :goto_2
    goto :goto_0

    .line 586
    :sswitch_0
    move-object v4, v2

    const-string v5, "BLACKONWHITE"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x0

    move v3, v4

    goto :goto_1

    :sswitch_1
    move-object v4, v2

    const-string v5, "WHITEONBLACK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x1

    move v3, v4

    goto :goto_1

    :sswitch_2
    move-object v4, v2

    const-string v5, "YELLOWONBLACK"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    const/4 v4, 0x2

    move v3, v4

    goto :goto_1

    .line 588
    :pswitch_0
    const-string v4, "com/sun/javafx/scene/control/skin/modena/blackOnWhite.css"

    sput-object v4, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    .line 589
    goto :goto_2

    .line 591
    :pswitch_1
    const-string v4, "com/sun/javafx/scene/control/skin/modena/whiteOnBlack.css"

    sput-object v4, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    .line 592
    goto :goto_2

    .line 594
    :pswitch_2
    const-string v4, "com/sun/javafx/scene/control/skin/modena/yellowOnBlack.css"

    sput-object v4, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    .line 595
    goto :goto_2

    .line 599
    :cond_4
    move-object v4, v0

    if-eqz v4, :cond_1

    .line 601
    move-object v4, v0

    move-object v2, v4

    const/4 v4, -0x1

    move v3, v4

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->hashCode()I

    move-result v4

    sparse-switch v4, :sswitch_data_1

    :cond_5
    :goto_3
    move v4, v3

    packed-switch v4, :pswitch_data_1

    goto :goto_0

    .line 603
    :pswitch_3
    const-string v4, "com/sun/javafx/scene/control/skin/modena/blackOnWhite.css"

    sput-object v4, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    .line 604
    goto :goto_0

    .line 601
    :sswitch_3
    move-object v4, v2

    const-string v5, "High Contrast White"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    move v3, v4

    goto :goto_3

    :sswitch_4
    move-object v4, v2

    const-string v5, "High Contrast Black"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x1

    move v3, v4

    goto :goto_3

    :sswitch_5
    move-object v4, v2

    const-string v5, "High Contrast #1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x2

    move v3, v4

    goto :goto_3

    :sswitch_6
    move-object v4, v2

    const-string v5, "High Contrast #2"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x3

    move v3, v4

    goto :goto_3

    .line 606
    :pswitch_4
    const-string v4, "com/sun/javafx/scene/control/skin/modena/whiteOnBlack.css"

    sput-object v4, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    .line 607
    goto/16 :goto_0

    .line 610
    :pswitch_5
    const-string v4, "com/sun/javafx/scene/control/skin/modena/yellowOnBlack.css"

    sput-object v4, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    .line 611
    goto/16 :goto_0

    .line 586
    nop

    :sswitch_data_0
    .sparse-switch
        -0x5d4e2194 -> :sswitch_2
        -0x574bdec9 -> :sswitch_1
        0x504abccb -> :sswitch_0
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 601
    :sswitch_data_1
    .sparse-switch
        -0x13d93c81 -> :sswitch_4
        -0x12b30057 -> :sswitch_3
        -0x12967b32 -> :sswitch_5
        -0x12967b31 -> :sswitch_6
    .end sparse-switch

    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_5
    .end packed-switch
.end method

.method private static _setPlatformUserAgentStylesheet(Ljava/lang/String;)V
    .locals 6

    .prologue
    .line 620
    move-object v0, p0

    .local v0, "stylesheetUrl":Ljava/lang/String;
    const/4 v3, 0x0

    move v5, v3

    move v3, v5

    move v4, v5

    sput-boolean v4, Lcom/sun/javafx/application/PlatformImpl;->isCaspian:Z

    sput-boolean v3, Lcom/sun/javafx/application/PlatformImpl;->isModena:Z

    .line 622
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl$$Lambda$13;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v3

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v1, v3

    .line 625
    .local v1, "overrideStylesheetUrl":Ljava/lang/String;
    move-object v3, v1

    if-eqz v3, :cond_0

    .line 626
    move-object v3, v1

    move-object v0, v3

    .line 629
    :cond_0
    new-instance v3, Ljava/util/ArrayList;

    move-object v5, v3

    move-object v3, v5

    move-object v4, v5

    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v3

    .line 632
    .local v2, "uaStylesheets":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    const-string v3, "CASPIAN"

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 633
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sun/javafx/application/PlatformImpl;->isCaspian:Z

    .line 635
    move-object v3, v2

    const-string v4, "com/sun/javafx/scene/control/skin/caspian/caspian.css"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 637
    sget-object v3, Ljavafx/application/ConditionalFeature;->INPUT_TOUCH:Ljavafx/application/ConditionalFeature;

    invoke-static {v3}, Lcom/sun/javafx/application/PlatformImpl;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 638
    move-object v3, v2

    const-string v4, "com/sun/javafx/scene/control/skin/caspian/embedded.css"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 639
    invoke-static {}, Lcom/sun/javafx/util/Utils;->isQVGAScreen()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 640
    move-object v3, v2

    const-string v4, "com/sun/javafx/scene/control/skin/caspian/embedded-qvga.css"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 642
    :cond_1
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isAndroid()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 643
    move-object v3, v2

    const-string v4, "com/sun/javafx/scene/control/skin/caspian/android.css"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 647
    :cond_2
    sget-object v3, Ljavafx/application/ConditionalFeature;->TWO_LEVEL_FOCUS:Ljavafx/application/ConditionalFeature;

    invoke-static {v3}, Lcom/sun/javafx/application/PlatformImpl;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 648
    move-object v3, v2

    const-string v4, "com/sun/javafx/scene/control/skin/caspian/two-level-focus.css"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 651
    :cond_3
    sget-object v3, Ljavafx/application/ConditionalFeature;->VIRTUAL_KEYBOARD:Ljavafx/application/ConditionalFeature;

    invoke-static {v3}, Lcom/sun/javafx/application/PlatformImpl;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 652
    move-object v3, v2

    const-string v4, "com/sun/javafx/scene/control/skin/caspian/fxvk.css"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 655
    :cond_4
    sget-object v3, Ljavafx/application/ConditionalFeature;->TRANSPARENT_WINDOW:Ljavafx/application/ConditionalFeature;

    invoke-static {v3}, Lcom/sun/javafx/application/PlatformImpl;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 656
    move-object v3, v2

    const-string v4, "com/sun/javafx/scene/control/skin/caspian/caspian-no-transparency.css"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 692
    :cond_5
    :goto_0
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v3

    invoke-virtual {v3}, Lcom/sun/javafx/tk/Toolkit;->getThemeName()Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/javafx/application/PlatformImpl;->_setAccessibilityTheme(Ljava/lang/String;)V

    .line 693
    sget-object v3, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    if-eqz v3, :cond_6

    .line 694
    move-object v3, v2

    sget-object v4, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 697
    :cond_6
    move-object v3, v2

    invoke-static {v3}, Lcom/sun/javafx/application/PlatformImpl$$Lambda$14;->lambdaFactory$(Ljava/util/List;)Ljava/security/PrivilegedAction;

    move-result-object v3

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    .line 702
    return-void

    .line 659
    :cond_7
    const-string v3, "MODENA"

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_d

    .line 660
    const/4 v3, 0x1

    sput-boolean v3, Lcom/sun/javafx/application/PlatformImpl;->isModena:Z

    .line 662
    move-object v3, v2

    const-string v4, "com/sun/javafx/scene/control/skin/modena/modena.css"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 664
    sget-object v3, Ljavafx/application/ConditionalFeature;->INPUT_TOUCH:Ljavafx/application/ConditionalFeature;

    invoke-static {v3}, Lcom/sun/javafx/application/PlatformImpl;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 665
    move-object v3, v2

    const-string v4, "com/sun/javafx/scene/control/skin/modena/touch.css"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 668
    :cond_8
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isEmbedded()Z

    move-result v3

    if-eqz v3, :cond_9

    .line 669
    move-object v3, v2

    const-string v4, "com/sun/javafx/scene/control/skin/modena/modena-embedded-performance.css"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 671
    :cond_9
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isAndroid()Z

    move-result v3

    if-eqz v3, :cond_a

    .line 672
    move-object v3, v2

    const-string v4, "com/sun/javafx/scene/control/skin/modena/android.css"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 675
    :cond_a
    sget-object v3, Ljavafx/application/ConditionalFeature;->TWO_LEVEL_FOCUS:Ljavafx/application/ConditionalFeature;

    invoke-static {v3}, Lcom/sun/javafx/application/PlatformImpl;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v3

    if-eqz v3, :cond_b

    .line 676
    move-object v3, v2

    const-string v4, "com/sun/javafx/scene/control/skin/modena/two-level-focus.css"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 679
    :cond_b
    sget-object v3, Ljavafx/application/ConditionalFeature;->VIRTUAL_KEYBOARD:Ljavafx/application/ConditionalFeature;

    invoke-static {v3}, Lcom/sun/javafx/application/PlatformImpl;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v3

    if-eqz v3, :cond_c

    .line 680
    move-object v3, v2

    const-string v4, "com/sun/javafx/scene/control/skin/caspian/fxvk.css"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 683
    :cond_c
    sget-object v3, Ljavafx/application/ConditionalFeature;->TRANSPARENT_WINDOW:Ljavafx/application/ConditionalFeature;

    invoke-static {v3}, Lcom/sun/javafx/application/PlatformImpl;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v3

    if-nez v3, :cond_5

    .line 684
    move-object v3, v2

    const-string v4, "com/sun/javafx/scene/control/skin/modena/modena-no-transparency.css"

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_0

    .line 688
    :cond_d
    move-object v3, v2

    move-object v4, v0

    invoke-interface {v3, v4}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v3

    goto/16 :goto_0
.end method

.method static synthetic access$000()Ljava/util/concurrent/atomic/AtomicInteger;
    .locals 1

    .prologue
    .line 57
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->numWindows:Ljava/util/concurrent/atomic/AtomicInteger;

    return-object v0
.end method

.method static synthetic access$100()V
    .locals 0

    .prologue
    .line 57
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->checkIdle()V

    return-void
.end method

.method static synthetic access$lambda$0(Ljava/lang/Class;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->lambda$setApplicationName$150(Ljava/lang/Class;)V

    return-void
.end method

.method static synthetic access$lambda$1()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->lambda$startup$151()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$10(Ljava/lang/String;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->lambda$setPlatformUserAgentStylesheet$161(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$lambda$11()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->lambda$_setAccessibilityTheme$162()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$12()Ljava/lang/String;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->lambda$_setPlatformUserAgentStylesheet$163()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$13(Ljava/util/List;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->lambda$_setPlatformUserAgentStylesheet$164(Ljava/util/List;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$14(Ljavafx/scene/Scene;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->lambda$addNoTransparencyStylesheetToScene$165(Ljavafx/scene/Scene;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$15(Ljavafx/scene/Scene;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->lambda$addNoTransparencyStylesheetToScene$166(Ljavafx/scene/Scene;)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$16()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->lambda$isSupportedImpl$167()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$17()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->lambda$isSupportedImpl$168()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$18(Ljava/lang/Runnable;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->lambda$null$155(Ljava/lang/Runnable;)Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$2()Ljava/lang/Void;
    .locals 1

    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->lambda$startup$152()Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$lambda$3(Ljava/lang/Runnable;)V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->lambda$startup$153(Ljava/lang/Runnable;)V

    return-void
.end method

.method static synthetic access$lambda$4(Ljava/lang/reflect/Method;)Ljava/lang/Void;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->lambda$invokeSwingFXUtilsMethod$154(Ljava/lang/reflect/Method;)Ljava/lang/Void;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static synthetic access$lambda$5(Ljava/lang/Runnable;Ljava/security/AccessControlContext;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/application/PlatformImpl;->lambda$runLater$156(Ljava/lang/Runnable;Ljava/security/AccessControlContext;)V

    return-void
.end method

.method static synthetic access$lambda$6(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/application/PlatformImpl;->lambda$runAndWait$157(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V

    return-void
.end method

.method static synthetic access$lambda$7()V
    .locals 0

    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->lambda$checkIdle$158()V

    return-void
.end method

.method static synthetic access$lambda$8()V
    .locals 0

    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->lambda$checkIdle$159()V

    return-void
.end method

.method static synthetic access$lambda$9()V
    .locals 0

    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->lambda$tkExit$160()V

    return-void
.end method

.method public static accessibilityActiveProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 1

    .prologue
    .line 464
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->accessibilityActive:Ljavafx/beans/property/BooleanProperty;

    return-object v0
.end method

.method public static addListener(Lcom/sun/javafx/application/PlatformImpl$FinishListener;)V
    .locals 3

    .prologue
    .line 354
    move-object v0, p0

    .local v0, "l":Lcom/sun/javafx/application/PlatformImpl$FinishListener;
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->listenersRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 355
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->finishListeners:Ljava/util/Set;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 356
    return-void
.end method

.method public static addNoTransparencyStylesheetToScene(Ljavafx/scene/Scene;)V
    .locals 2

    .prologue
    .line 705
    move-object v0, p0

    .local v0, "scene":Ljavafx/scene/Scene;
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->isCaspian()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 706
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl$$Lambda$15;->lambdaFactory$(Ljavafx/scene/Scene;)Ljava/security/PrivilegedAction;

    move-result-object v1

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .line 718
    :cond_0
    :goto_0
    return-void

    .line 711
    :cond_1
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->isModena()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 712
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl$$Lambda$16;->lambdaFactory$(Ljavafx/scene/Scene;)Ljava/security/PrivilegedAction;

    move-result-object v1

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    goto :goto_0
.end method

.method private static checkForClass(Ljava/lang/String;)Ljava/lang/Boolean;
    .locals 5

    .prologue
    .line 474
    move-object v0, p0

    .local v0, "classname":Ljava/lang/String;
    move-object v2, v0

    const/4 v3, 0x0

    :try_start_0
    const-class v4, Lcom/sun/javafx/application/PlatformImpl;

    invoke-virtual {v4}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v4

    invoke-static {v2, v3, v4}, Ljava/lang/Class;->forName(Ljava/lang/String;ZLjava/lang/ClassLoader;)Ljava/lang/Class;

    move-result-object v2

    .line 475
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v0, v2

    .line 477
    .end local v0    # "classname":Ljava/lang/String;
    .local v1, "cnfe":Ljava/lang/ClassNotFoundException;
    :goto_0
    return-object v0

    .line 476
    .end local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    .restart local v0    # "classname":Ljava/lang/String;
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 477
    .restart local v1    # "cnfe":Ljava/lang/ClassNotFoundException;
    sget-object v2, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v2

    goto :goto_0
.end method

.method private static checkIdle()V
    .locals 7

    .prologue
    .line 385
    sget-object v4, Lcom/sun/javafx/application/PlatformImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_0

    .line 386
    .line 432
    .local v0, "doNotify":Z
    .local v2, "numWin":I
    :goto_0
    return-void

    .line 389
    .end local v0    # "doNotify":Z
    .end local v2    # "numWin":I
    :cond_0
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->isFxApplicationThread()Z

    move-result v4

    if-nez v4, :cond_1

    .line 392
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl$$Lambda$8;->lambdaFactory$()Ljava/lang/Runnable;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/javafx/application/PlatformImpl;->runLater(Ljava/lang/Runnable;)V

    .line 394
    goto :goto_0

    .line 397
    :cond_1
    const/4 v4, 0x0

    move v0, v4

    .line 399
    .restart local v0    # "doNotify":Z
    const-class v4, Lcom/sun/javafx/application/PlatformImpl;

    move-object v6, v4

    move-object v4, v6

    move-object v5, v6

    move-object v1, v5

    monitor-enter v4

    .line 400
    :try_start_0
    sget-object v4, Lcom/sun/javafx/application/PlatformImpl;->numWindows:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    move v2, v4

    .line 401
    .restart local v2    # "numWin":I
    move v4, v2

    if-lez v4, :cond_6

    .line 402
    const/4 v4, 0x1

    sput-boolean v4, Lcom/sun/javafx/application/PlatformImpl;->firstWindowShown:Z

    .line 403
    const/4 v4, 0x0

    sput-boolean v4, Lcom/sun/javafx/application/PlatformImpl;->lastWindowClosed:Z

    .line 404
    sget-object v4, Lcom/sun/javafx/application/PlatformImpl;->reallyIdle:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 413
    :cond_2
    :goto_1
    sget-boolean v4, Lcom/sun/javafx/application/PlatformImpl;->lastWindowClosed:Z

    if-eqz v4, :cond_4

    sget-object v4, Lcom/sun/javafx/application/PlatformImpl;->pendingRunnables:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v4

    if-nez v4, :cond_4

    sget-object v4, Lcom/sun/javafx/application/PlatformImpl;->toolkitExit:Ljava/util/concurrent/atomic/AtomicBoolean;

    .line 414
    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-nez v4, :cond_3

    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/tk/Toolkit;->isNestedLoopRunning()Z

    move-result v4

    if-nez v4, :cond_4

    .line 416
    :cond_3
    sget-object v4, Lcom/sun/javafx/application/PlatformImpl;->reallyIdle:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v5, 0x1

    invoke-virtual {v4, v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v4

    if-eqz v4, :cond_7

    .line 418
    const/4 v4, 0x1

    move v0, v4

    .line 419
    const/4 v4, 0x0

    sput-boolean v4, Lcom/sun/javafx/application/PlatformImpl;->lastWindowClosed:Z

    .line 427
    :cond_4
    :goto_2
    move-object v4, v1

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    move v4, v0

    if-eqz v4, :cond_5

    .line 430
    const/4 v4, 0x0

    invoke-static {v4}, Lcom/sun/javafx/application/PlatformImpl;->notifyFinishListeners(Z)V

    .line 432
    :cond_5
    goto :goto_0

    .line 405
    :cond_6
    move v4, v2

    if-nez v4, :cond_2

    :try_start_1
    sget-boolean v4, Lcom/sun/javafx/application/PlatformImpl;->firstWindowShown:Z

    if-eqz v4, :cond_2

    .line 406
    const/4 v4, 0x1

    sput-boolean v4, Lcom/sun/javafx/application/PlatformImpl;->lastWindowClosed:Z

    goto :goto_1

    .line 427
    .end local v2    # "numWin":I
    :catchall_0
    move-exception v4

    move-object v3, v4

    move-object v4, v1

    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-object v4, v3

    throw v4

    .line 422
    .restart local v2    # "numWin":I
    :cond_7
    :try_start_2
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl$$Lambda$9;->lambdaFactory$()Ljava/lang/Runnable;

    move-result-object v4

    invoke-static {v4}, Lcom/sun/javafx/application/PlatformImpl;->runLater(Ljava/lang/Runnable;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto :goto_2
.end method

.method public static exit()V
    .locals 2

    .prologue
    .line 468
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->platformExit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 469
    const/4 v0, 0x1

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->notifyFinishListeners(Z)V

    .line 470
    return-void
.end method

.method private static installFwEventQueue()V
    .locals 1

    .prologue
    .line 223
    const-string v0, "installFwEventQueue"

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->invokeSwingFXUtilsMethod(Ljava/lang/String;)V

    .line 224
    return-void
.end method

.method private static invokeSwingFXUtilsMethod(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 233
    move-object v0, p0

    .local v0, "methodName":Ljava/lang/String;
    :try_start_0
    const-string v3, "javafx.embed.swing.SwingFXUtils"

    invoke-static {v3}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v3

    move-object v1, v3

    .line 234
    .local v1, "swingFXUtilsClass":Ljava/lang/Class;
    move-object v3, v1

    move-object v4, v0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Class;

    invoke-virtual {v3, v4, v5}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    move-object v2, v3

    .line 235
    .local v2, "installFwEventQueue":Ljava/lang/reflect/Method;
    move-object v3, v2

    invoke-static {v3}, Lcom/sun/javafx/application/PlatformImpl$$Lambda$5;->lambdaFactory$(Ljava/lang/reflect/Method;)Ljava/security/PrivilegedAction;

    move-result-object v3

    invoke-static {v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v3

    .line 240
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->waitForStart()V

    .line 241
    move-object v3, v2

    const/4 v4, 0x0

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-virtual {v3, v4, v5}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 247
    .line 248
    return-void

    .line 243
    .end local v1    # "swingFXUtilsClass":Ljava/lang/Class;
    .end local v2    # "installFwEventQueue":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v3

    :goto_0
    move-object v1, v3

    .line 244
    .local v1, "e":Ljava/lang/ReflectiveOperationException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Property javafx.embed.singleThread is not supported"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 245
    .end local v1    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_1
    move-exception v3

    move-object v1, v3

    .line 246
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    new-instance v3, Ljava/lang/RuntimeException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/Throwable;)V

    throw v3

    .line 243
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_2
    move-exception v3

    goto :goto_0

    :catch_3
    move-exception v3

    goto :goto_0
.end method

.method public static isCaspian()Z
    .locals 1

    .prologue
    .line 539
    sget-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->isCaspian:Z

    return v0
.end method

.method public static isContextual2DNavigation()Z
    .locals 1

    .prologue
    .line 130
    sget-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->contextual2DNavigation:Z

    return v0
.end method

.method public static isFxApplicationThread()Z
    .locals 1

    .prologue
    .line 264
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/javafx/tk/Toolkit;->isFxUserThread()Z

    move-result v0

    return v0
.end method

.method public static isImplicitExit()Z
    .locals 1

    .prologue
    .line 350
    sget-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->implicitExit:Z

    return v0
.end method

.method public static isModena()Z
    .locals 1

    .prologue
    .line 527
    sget-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->isModena:Z

    return v0
.end method

.method public static isSupported(Ljavafx/application/ConditionalFeature;)Z
    .locals 8

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "feature":Ljavafx/application/ConditionalFeature;
    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/application/PlatformImpl;->isSupportedImpl(Ljavafx/application/ConditionalFeature;)Z

    move-result v4

    move v1, v4

    .line 483
    .local v1, "supported":Z
    move v4, v1

    if-eqz v4, :cond_1

    move-object v4, v0

    sget-object v5, Ljavafx/application/ConditionalFeature;->TRANSPARENT_WINDOW:Ljavafx/application/ConditionalFeature;

    if-ne v4, v5, :cond_1

    .line 488
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v4

    move-object v2, v4

    .line 489
    .local v2, "securityManager":Ljava/lang/SecurityManager;
    move-object v4, v2

    if-eqz v4, :cond_0

    .line 491
    move-object v4, v2

    :try_start_0
    new-instance v5, Ljava/security/AllPermission;

    move-object v7, v5

    move-object v5, v7

    move-object v6, v7

    invoke-direct {v6}, Ljava/security/AllPermission;-><init>()V

    invoke-virtual {v4, v5}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 494
    .line 497
    :cond_0
    const/4 v4, 0x1

    move v0, v4

    .line 500
    .end local v0    # "feature":Ljavafx/application/ConditionalFeature;
    .end local v2    # "securityManager":Ljava/lang/SecurityManager;
    :goto_0
    return v0

    .line 492
    .restart local v0    # "feature":Ljavafx/application/ConditionalFeature;
    .restart local v2    # "securityManager":Ljava/lang/SecurityManager;
    :catch_0
    move-exception v4

    move-object v3, v4

    .line 493
    .local v3, "e":Ljava/lang/SecurityException;
    const/4 v4, 0x0

    move v0, v4

    goto :goto_0

    .line 500
    .end local v2    # "securityManager":Ljava/lang/SecurityManager;
    .end local v3    # "e":Ljava/lang/SecurityException;
    :cond_1
    move v4, v1

    move v0, v4

    goto :goto_0
.end method

.method private static isSupportedImpl(Ljavafx/application/ConditionalFeature;)Z
    .locals 3

    .prologue
    .line 721
    move-object v0, p0

    .local v0, "feature":Ljavafx/application/ConditionalFeature;
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 809
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/Toolkit;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v1

    move v0, v1

    .end local v0    # "feature":Ljavafx/application/ConditionalFeature;
    :goto_0
    return v0

    .line 723
    .restart local v0    # "feature":Ljavafx/application/ConditionalFeature;
    :pswitch_0
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->isGraphicsSupported:Ljava/lang/Boolean;

    if-nez v1, :cond_0

    .line 724
    const-string v1, "javafx.stage.Stage"

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->checkForClass(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/application/PlatformImpl;->isGraphicsSupported:Ljava/lang/Boolean;

    .line 726
    :cond_0
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->isGraphicsSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 728
    :pswitch_1
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->isControlsSupported:Ljava/lang/Boolean;

    if-nez v1, :cond_1

    .line 729
    const-string v1, "javafx.scene.control.Control"

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->checkForClass(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/application/PlatformImpl;->isControlsSupported:Ljava/lang/Boolean;

    .line 732
    :cond_1
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->isControlsSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 734
    :pswitch_2
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->isMediaSupported:Ljava/lang/Boolean;

    if-nez v1, :cond_2

    .line 735
    const-string v1, "javafx.scene.media.MediaView"

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->checkForClass(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/application/PlatformImpl;->isMediaSupported:Ljava/lang/Boolean;

    .line 737
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->isMediaSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_2

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 738
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl$$Lambda$17;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v1

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .line 748
    :cond_2
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->isMediaSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 750
    :pswitch_3
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->isWebSupported:Ljava/lang/Boolean;

    if-nez v1, :cond_3

    .line 751
    const-string v1, "javafx.scene.web.WebView"

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->checkForClass(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/application/PlatformImpl;->isWebSupported:Ljava/lang/Boolean;

    .line 752
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->isWebSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_3

    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isEmbedded()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 753
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl$$Lambda$18;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v1

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .line 763
    :cond_3
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->isWebSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    goto :goto_0

    .line 765
    :pswitch_4
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->isSWTSupported:Ljava/lang/Boolean;

    if-nez v1, :cond_4

    .line 766
    const-string v1, "javafx.embed.swt.FXCanvas"

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->checkForClass(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/application/PlatformImpl;->isSWTSupported:Ljava/lang/Boolean;

    .line 768
    :cond_4
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->isSWTSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    goto/16 :goto_0

    .line 770
    :pswitch_5
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->isSwingSupported:Ljava/lang/Boolean;

    if-nez v1, :cond_5

    .line 771
    const-string v1, "javax.swing.JComponent"

    .line 773
    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->checkForClass(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    const-string v1, "javafx.embed.swing.JFXPanel"

    .line 774
    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->checkForClass(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_6

    const/4 v1, 0x1

    .line 773
    :goto_1
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/application/PlatformImpl;->isSwingSupported:Ljava/lang/Boolean;

    .line 776
    :cond_5
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->isSwingSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    goto/16 :goto_0

    .line 774
    :cond_6
    const/4 v1, 0x0

    goto :goto_1

    .line 778
    :pswitch_6
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->isFXMLSupported:Ljava/lang/Boolean;

    if-nez v1, :cond_7

    .line 779
    const-string v1, "javafx.fxml.FXMLLoader"

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->checkForClass(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    const-string v1, "javax.xml.stream.XMLInputFactory"

    .line 780
    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->checkForClass(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_8

    const/4 v1, 0x1

    .line 779
    :goto_2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/application/PlatformImpl;->isFXMLSupported:Ljava/lang/Boolean;

    .line 782
    :cond_7
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->isFXMLSupported:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    goto/16 :goto_0

    .line 780
    :cond_8
    const/4 v1, 0x0

    goto :goto_2

    .line 784
    :pswitch_7
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->hasTwoLevelFocus:Ljava/lang/Boolean;

    if-nez v1, :cond_9

    .line 785
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/Toolkit;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v1

    move v0, v1

    goto/16 :goto_0

    .line 787
    :cond_9
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->hasTwoLevelFocus:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    goto/16 :goto_0

    .line 789
    :pswitch_8
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->hasVirtualKeyboard:Ljava/lang/Boolean;

    if-nez v1, :cond_a

    .line 790
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/Toolkit;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v1

    move v0, v1

    goto/16 :goto_0

    .line 792
    :cond_a
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->hasVirtualKeyboard:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    goto/16 :goto_0

    .line 794
    :pswitch_9
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->hasTouch:Ljava/lang/Boolean;

    if-nez v1, :cond_b

    .line 795
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/Toolkit;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v1

    move v0, v1

    goto/16 :goto_0

    .line 797
    :cond_b
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->hasTouch:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    goto/16 :goto_0

    .line 799
    :pswitch_a
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->hasMultiTouch:Ljava/lang/Boolean;

    if-nez v1, :cond_c

    .line 800
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/Toolkit;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v1

    move v0, v1

    goto/16 :goto_0

    .line 802
    :cond_c
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->hasMultiTouch:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    goto/16 :goto_0

    .line 804
    :pswitch_b
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->hasPointer:Ljava/lang/Boolean;

    if-nez v1, :cond_d

    .line 805
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/Toolkit;->isSupported(Ljavafx/application/ConditionalFeature;)Z

    move-result v1

    move v0, v1

    goto/16 :goto_0

    .line 807
    :cond_d
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->hasPointer:Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    move v0, v1

    goto/16 :goto_0

    .line 721
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
        :pswitch_b
    .end packed-switch
.end method

.method public static isTaskbarApplication()Z
    .locals 1

    .prologue
    .line 107
    sget-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->taskbarApplication:Z

    return v0
.end method

.method private static synthetic lambda$_setAccessibilityTheme$162()Ljava/lang/String;
    .locals 1

    .prologue
    .line 576
    const-string v0, "com.sun.javafx.highContrastTheme"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$_setPlatformUserAgentStylesheet$163()Ljava/lang/String;
    .locals 1

    .prologue
    .line 623
    const-string v0, "javafx.userAgentStylesheetUrl"

    invoke-static {v0}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private static synthetic lambda$_setPlatformUserAgentStylesheet$164(Ljava/util/List;)Ljava/lang/Object;
    .locals 3

    .prologue
    .line 698
    move-object v0, p0

    .local v0, "uaStylesheets":Ljava/util/List;
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/css/StyleManager;->setUserAgentStylesheets(Ljava/util/List;)V

    .line 699
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "uaStylesheets":Ljava/util/List;
    return-object v0
.end method

.method private static synthetic lambda$addNoTransparencyStylesheetToScene$165(Ljavafx/scene/Scene;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 707
    move-object v0, p0

    .local v0, "scene":Ljavafx/scene/Scene;
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v1

    move-object v2, v0

    const-string v3, "com/sun/javafx/scene/control/skin/caspian/caspian-no-transparency.css"

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/css/StyleManager;->addUserAgentStylesheet(Ljavafx/scene/Scene;Ljava/lang/String;)V

    .line 709
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "scene":Ljavafx/scene/Scene;
    return-object v0
.end method

.method private static synthetic lambda$addNoTransparencyStylesheetToScene$166(Ljavafx/scene/Scene;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 713
    move-object v0, p0

    .local v0, "scene":Ljavafx/scene/Scene;
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v1

    move-object v2, v0

    const-string v3, "com/sun/javafx/scene/control/skin/modena/modena-no-transparency.css"

    invoke-virtual {v1, v2, v3}, Lcom/sun/javafx/css/StyleManager;->addUserAgentStylesheet(Ljavafx/scene/Scene;Ljava/lang/String;)V

    .line 715
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "scene":Ljavafx/scene/Scene;
    return-object v0
.end method

.method private static synthetic lambda$checkIdle$158()V
    .locals 0

    .prologue
    .line 393
    return-void
.end method

.method private static synthetic lambda$checkIdle$159()V
    .locals 0

    .prologue
    .line 424
    return-void
.end method

.method private static synthetic lambda$invokeSwingFXUtilsMethod$154(Ljava/lang/reflect/Method;)Ljava/lang/Void;
    .locals 3

    .prologue
    .line 236
    move-object v0, p0

    .local v0, "installFwEventQueue":Ljava/lang/reflect/Method;
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 237
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "installFwEventQueue":Ljava/lang/reflect/Method;
    return-object v0
.end method

.method private static synthetic lambda$isSupportedImpl$167()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 739
    const-string v1, "com.sun.javafx.experimental.embedded.media"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 742
    .local v0, "s":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/application/PlatformImpl;->isMediaSupported:Ljava/lang/Boolean;

    .line 743
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    return-object v0
.end method

.method private static synthetic lambda$isSupportedImpl$168()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 754
    const-string v1, "com.sun.javafx.experimental.embedded.web"

    const-string v2, "false"

    invoke-static {v1, v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 757
    .local v0, "s":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/application/PlatformImpl;->isWebSupported:Ljava/lang/Boolean;

    .line 758
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    return-object v0
.end method

.method private static synthetic lambda$null$155(Ljava/lang/Runnable;)Ljava/lang/Void;
    .locals 2

    .prologue
    .line 295
    move-object v0, p0

    .local v0, "r":Ljava/lang/Runnable;
    move-object v1, v0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 296
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "r":Ljava/lang/Runnable;
    return-object v0
.end method

.method private static synthetic lambda$runAndWait$157(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)V
    .locals 4

    .prologue
    .line 326
    move-object v0, p0

    .local v0, "r":Ljava/lang/Runnable;
    move-object v1, p1

    .local v1, "doneLatch":Ljava/util/concurrent/CountDownLatch;
    move-object v3, v0

    :try_start_0
    invoke-interface {v3}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 328
    move-object v3, v1

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 329
    .line 330
    return-void

    .line 328
    :catchall_0
    move-exception v3

    move-object v2, v3

    move-object v3, v1

    invoke-virtual {v3}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    move-object v3, v2

    throw v3
.end method

.method private static synthetic lambda$runLater$156(Ljava/lang/Runnable;Ljava/security/AccessControlContext;)V
    .locals 5

    .prologue
    .line 294
    move-object v0, p0

    .local v0, "r":Ljava/lang/Runnable;
    move-object v1, p1

    .local v1, "acc":Ljava/security/AccessControlContext;
    move-object v3, v0

    :try_start_0
    invoke-static {v3}, Lcom/sun/javafx/application/PlatformImpl$$Lambda$19;->lambdaFactory$(Ljava/lang/Runnable;)Ljava/security/PrivilegedAction;

    move-result-object v3

    move-object v4, v1

    invoke-static {v3, v4}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 299
    sget-object v3, Lcom/sun/javafx/application/PlatformImpl;->pendingRunnables:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    .line 300
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->checkIdle()V

    .line 301
    .line 302
    return-void

    .line 299
    :catchall_0
    move-exception v3

    move-object v2, v3

    sget-object v3, Lcom/sun/javafx/application/PlatformImpl;->pendingRunnables:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v3

    .line 300
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->checkIdle()V

    move-object v3, v2

    throw v3
.end method

.method private static synthetic lambda$setApplicationName$150(Ljava/lang/Class;)V
    .locals 3

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "appClass":Ljava/lang/Class;
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/glass/ui/Application;->setName(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$setPlatformUserAgentStylesheet$161(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 550
    move-object v0, p0

    .local v0, "stylesheetUrl":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->_setPlatformUserAgentStylesheet(Ljava/lang/String;)V

    return-void
.end method

.method private static synthetic lambda$startup$151()Ljava/lang/Void;
    .locals 3

    .prologue
    .line 154
    const-string v1, "com.sun.javafx.isContextual2DNavigation"

    invoke-static {v1}, Ljava/lang/Boolean;->getBoolean(Ljava/lang/String;)Z

    move-result v1

    sput-boolean v1, Lcom/sun/javafx/application/PlatformImpl;->contextual2DNavigation:Z

    .line 156
    const-string v1, "com.sun.javafx.twoLevelFocus"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 157
    .local v0, "s":Ljava/lang/String;
    move-object v1, v0

    if-eqz v1, :cond_0

    .line 158
    move-object v1, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/application/PlatformImpl;->hasTwoLevelFocus:Ljava/lang/Boolean;

    .line 160
    :cond_0
    const-string v1, "com.sun.javafx.virtualKeyboard"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 161
    move-object v1, v0

    if-eqz v1, :cond_1

    .line 162
    move-object v1, v0

    const-string v2, "none"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_6

    .line 163
    const/4 v1, 0x0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/application/PlatformImpl;->hasVirtualKeyboard:Ljava/lang/Boolean;

    .line 170
    :cond_1
    :goto_0
    const-string v1, "com.sun.javafx.touch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 171
    move-object v1, v0

    if-eqz v1, :cond_2

    .line 172
    move-object v1, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/application/PlatformImpl;->hasTouch:Ljava/lang/Boolean;

    .line 174
    :cond_2
    const-string v1, "com.sun.javafx.multiTouch"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 175
    move-object v1, v0

    if-eqz v1, :cond_3

    .line 176
    move-object v1, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/application/PlatformImpl;->hasMultiTouch:Ljava/lang/Boolean;

    .line 178
    :cond_3
    const-string v1, "com.sun.javafx.pointer"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 179
    move-object v1, v0

    if-eqz v1, :cond_4

    .line 180
    move-object v1, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/application/PlatformImpl;->hasPointer:Ljava/lang/Boolean;

    .line 182
    :cond_4
    const-string v1, "javafx.embed.singleThread"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .line 183
    move-object v1, v0

    if-eqz v1, :cond_5

    .line 184
    move-object v1, v0

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Ljava/lang/String;)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    sput-boolean v1, Lcom/sun/javafx/application/PlatformImpl;->isThreadMerged:Z

    .line 186
    :cond_5
    const/4 v1, 0x0

    move-object v0, v1

    .end local v0    # "s":Ljava/lang/String;
    return-object v0

    .line 164
    .restart local v0    # "s":Ljava/lang/String;
    :cond_6
    move-object v1, v0

    const-string v2, "javafx"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 165
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/application/PlatformImpl;->hasVirtualKeyboard:Ljava/lang/Boolean;

    goto :goto_0

    .line 166
    :cond_7
    move-object v1, v0

    const-string v2, "native"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 167
    const/4 v1, 0x1

    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    sput-object v1, Lcom/sun/javafx/application/PlatformImpl;->hasVirtualKeyboard:Ljava/lang/Boolean;

    goto :goto_0
.end method

.method private static synthetic lambda$startup$152()Ljava/lang/Void;
    .locals 2

    .prologue
    .line 191
    const-string v0, "glass.taskbarApplication"

    const-string v1, "false"

    invoke-static {v0, v1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 192
    const/4 v0, 0x0

    return-object v0
.end method

.method private static synthetic lambda$startup$153(Ljava/lang/Runnable;)V
    .locals 2

    .prologue
    .line 212
    move-object v0, p0

    .local v0, "r":Ljava/lang/Runnable;
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->startupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v1}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 213
    move-object v1, v0

    invoke-interface {v1}, Ljava/lang/Runnable;->run()V

    .line 214
    return-void
.end method

.method private static synthetic lambda$tkExit$160()V
    .locals 1

    .prologue
    .line 450
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/sun/javafx/tk/Toolkit;->exit()V

    .line 451
    return-void
.end method

.method private static notifyFinishListeners(Z)V
    .locals 5

    .prologue
    .line 368
    move v0, p0

    .local v0, "exitCalled":Z
    sget-object v3, Lcom/sun/javafx/application/PlatformImpl;->listenersRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 369
    sget-object v3, Lcom/sun/javafx/application/PlatformImpl;->finishListeners:Ljava/util/Set;

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    move-object v1, v3

    :goto_0
    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    move-object v3, v1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/application/PlatformImpl$FinishListener;

    move-object v2, v3

    .line 370
    .local v2, "l":Lcom/sun/javafx/application/PlatformImpl$FinishListener;
    move v3, v0

    if-eqz v3, :cond_0

    .line 371
    move-object v3, v2

    invoke-interface {v3}, Lcom/sun/javafx/application/PlatformImpl$FinishListener;->exitCalled()V

    .line 375
    :goto_1
    goto :goto_0

    .line 373
    :cond_0
    move-object v3, v2

    sget-boolean v4, Lcom/sun/javafx/application/PlatformImpl;->implicitExit:Z

    invoke-interface {v3, v4}, Lcom/sun/javafx/application/PlatformImpl$FinishListener;->idle(Z)V

    goto :goto_1

    .line 375
    .line 379
    .end local v2    # "l":Lcom/sun/javafx/application/PlatformImpl$FinishListener;
    :cond_1
    :goto_2
    return-void

    .line 376
    :cond_2
    sget-boolean v3, Lcom/sun/javafx/application/PlatformImpl;->implicitExit:Z

    if-nez v3, :cond_3

    sget-object v3, Lcom/sun/javafx/application/PlatformImpl;->platformExit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 377
    :cond_3
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->tkExit()V

    goto :goto_2
.end method

.method private static removeFwEventQueue()V
    .locals 1

    .prologue
    .line 227
    const-string v0, "removeFwEventQueue"

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->invokeSwingFXUtilsMethod(Ljava/lang/String;)V

    .line 228
    return-void
.end method

.method public static removeListener(Lcom/sun/javafx/application/PlatformImpl$FinishListener;)V
    .locals 3

    .prologue
    .line 359
    move-object v0, p0

    .local v0, "l":Lcom/sun/javafx/application/PlatformImpl$FinishListener;
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->finishListeners:Ljava/util/Set;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 360
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->listenersRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    sget-object v2, Lcom/sun/javafx/application/PlatformImpl;->finishListeners:Ljava/util/Set;

    invoke-interface {v2}, Ljava/util/Set;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->set(Z)V

    .line 361
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->listenersRegistered:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 362
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->checkIdle()V

    .line 364
    :cond_0
    return-void

    .line 360
    :cond_1
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public static runAndWait(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 307
    move-object v0, p0

    .local v0, "r":Ljava/lang/Runnable;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;Z)V

    .line 308
    return-void
.end method

.method private static runAndWait(Ljava/lang/Runnable;Z)V
    .locals 8

    .prologue
    .line 311
    move-object v0, p0

    .local v0, "r":Ljava/lang/Runnable;
    move v1, p1

    .local v1, "exiting":Z
    invoke-static {}, Lcom/sun/javafx/runtime/SystemProperties;->isDebug()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 312
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v4

    invoke-virtual {v4}, Lcom/sun/javafx/tk/Toolkit;->pauseCurrentThread()V

    .line 315
    :cond_0
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->isFxApplicationThread()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 317
    move-object v4, v0

    :try_start_0
    invoke-interface {v4}, Ljava/lang/Runnable;->run()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 321
    .line 342
    :goto_0
    return-void

    .line 318
    :catch_0
    move-exception v4

    move-object v2, v4

    .line 319
    .local v2, "t":Ljava/lang/Throwable;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    const-string v5, "Exception in runnable"

    invoke-virtual {v4, v5}, Ljava/io/PrintStream;->println(Ljava/lang/String;)V

    .line 320
    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Throwable;->printStackTrace()V

    .line 321
    goto :goto_0

    .line 323
    .end local v2    # "t":Ljava/lang/Throwable;
    :cond_1
    new-instance v4, Ljava/util/concurrent/CountDownLatch;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const/4 v6, 0x1

    invoke-direct {v5, v6}, Ljava/util/concurrent/CountDownLatch;-><init>(I)V

    move-object v2, v4

    .line 324
    .local v2, "doneLatch":Ljava/util/concurrent/CountDownLatch;
    move-object v4, v0

    move-object v5, v2

    invoke-static {v4, v5}, Lcom/sun/javafx/application/PlatformImpl$$Lambda$7;->lambdaFactory$(Ljava/lang/Runnable;Ljava/util/concurrent/CountDownLatch;)Ljava/lang/Runnable;

    move-result-object v4

    move v5, v1

    invoke-static {v4, v5}, Lcom/sun/javafx/application/PlatformImpl;->runLater(Ljava/lang/Runnable;Z)V

    .line 332
    move v4, v1

    if-nez v4, :cond_2

    sget-object v4, Lcom/sun/javafx/application/PlatformImpl;->toolkitExit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 333
    new-instance v4, Ljava/lang/IllegalStateException;

    move-object v7, v4

    move-object v4, v7

    move-object v5, v7

    const-string v6, "Toolkit has exited"

    invoke-direct {v5, v6}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 337
    :cond_2
    move-object v4, v2

    :try_start_1
    invoke-virtual {v4}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_1
    .catch Ljava/lang/InterruptedException; {:try_start_1 .. :try_end_1} :catch_1

    .line 340
    goto :goto_0

    .line 338
    :catch_1
    move-exception v4

    move-object v3, v4

    .line 339
    .local v3, "ex":Ljava/lang/InterruptedException;
    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method

.method public static runLater(Ljava/lang/Runnable;)V
    .locals 3

    .prologue
    .line 268
    move-object v0, p0

    .local v0, "r":Ljava/lang/Runnable;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lcom/sun/javafx/application/PlatformImpl;->runLater(Ljava/lang/Runnable;Z)V

    .line 269
    return-void
.end method

.method private static runLater(Ljava/lang/Runnable;Z)V
    .locals 9

    .prologue
    .line 272
    move-object v0, p0

    .local v0, "r":Ljava/lang/Runnable;
    move v1, p1

    .local v1, "exiting":Z
    sget-object v5, Lcom/sun/javafx/application/PlatformImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-nez v5, :cond_0

    .line 273
    new-instance v5, Ljava/lang/IllegalStateException;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    const-string v7, "Toolkit not initialized"

    invoke-direct {v6, v7}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 276
    :cond_0
    sget-object v5, Lcom/sun/javafx/application/PlatformImpl;->pendingRunnables:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->incrementAndGet()I

    move-result v5

    .line 277
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->waitForStart()V

    .line 279
    invoke-static {}, Lcom/sun/javafx/runtime/SystemProperties;->isDebug()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 280
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v5

    invoke-virtual {v5}, Lcom/sun/javafx/tk/Toolkit;->pauseCurrentThread()V

    .line 283
    :cond_1
    sget-object v5, Lcom/sun/javafx/application/PlatformImpl;->runLaterLock:Ljava/lang/Object;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    move-object v2, v6

    monitor-enter v5

    .line 284
    move v5, v1

    if-nez v5, :cond_2

    :try_start_0
    sget-object v5, Lcom/sun/javafx/application/PlatformImpl;->toolkitExit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 286
    sget-object v5, Lcom/sun/javafx/application/PlatformImpl;->pendingRunnables:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v5}, Ljava/util/concurrent/atomic/AtomicInteger;->decrementAndGet()I

    move-result v5

    .line 287
    move-object v5, v2

    monitor-exit v5

    .line 304
    :goto_0
    return-void

    .line 290
    :cond_2
    invoke-static {}, Ljava/security/AccessController;->getContext()Ljava/security/AccessControlContext;

    move-result-object v5

    move-object v3, v5

    .line 292
    .local v3, "acc":Ljava/security/AccessControlContext;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v5

    move-object v6, v0

    move-object v7, v3

    invoke-static {v6, v7}, Lcom/sun/javafx/application/PlatformImpl$$Lambda$6;->lambdaFactory$(Ljava/lang/Runnable;Ljava/security/AccessControlContext;)Ljava/lang/Runnable;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/tk/Toolkit;->defer(Ljava/lang/Runnable;)V

    .line 303
    move-object v5, v2

    monitor-exit v5

    .line 304
    goto :goto_0

    .line 303
    .end local v3    # "acc":Ljava/security/AccessControlContext;
    :catchall_0
    move-exception v5

    move-object v4, v5

    move-object v5, v2

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-object v5, v4

    throw v5
.end method

.method public static setAccessibilityTheme(Ljava/lang/String;)Z
    .locals 3

    .prologue
    .line 557
    move-object v0, p0

    .local v0, "platformTheme":Ljava/lang/String;
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    if-eqz v1, :cond_0

    .line 558
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v1

    sget-object v2, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/css/StyleManager;->removeUserAgentStylesheet(Ljava/lang/String;)V

    .line 559
    const/4 v1, 0x0

    sput-object v1, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    .line 562
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->_setAccessibilityTheme(Ljava/lang/String;)V

    .line 564
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    if-eqz v1, :cond_1

    .line 565
    invoke-static {}, Lcom/sun/javafx/css/StyleManager;->getInstance()Lcom/sun/javafx/css/StyleManager;

    move-result-object v1

    sget-object v2, Lcom/sun/javafx/application/PlatformImpl;->accessibilityTheme:Ljava/lang/String;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/css/StyleManager;->addUserAgentStylesheet(Ljava/lang/String;)V

    .line 566
    const/4 v1, 0x1

    move v0, v1

    .line 568
    .end local v0    # "platformTheme":Ljava/lang/String;
    :goto_0
    return v0

    .restart local v0    # "platformTheme":Ljava/lang/String;
    :cond_1
    const/4 v1, 0x0

    move v0, v1

    goto :goto_0
.end method

.method public static setApplicationName(Ljava/lang/Class;)V
    .locals 2

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "appClass":Ljava/lang/Class;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl$$Lambda$1;->lambdaFactory$(Ljava/lang/Class;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->runLater(Ljava/lang/Runnable;)V

    .line 121
    return-void
.end method

.method public static setDefaultPlatformUserAgentStylesheet()V
    .locals 1

    .prologue
    .line 512
    const-string v0, "MODENA"

    invoke-static {v0}, Lcom/sun/javafx/application/PlatformImpl;->setPlatformUserAgentStylesheet(Ljava/lang/String;)V

    .line 513
    return-void
.end method

.method public static setImplicitExit(Z)V
    .locals 2

    .prologue
    .line 345
    move v0, p0

    .local v0, "implicitExit":Z
    move v1, v0

    sput-boolean v1, Lcom/sun/javafx/application/PlatformImpl;->implicitExit:Z

    .line 346
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->checkIdle()V

    .line 347
    return-void
.end method

.method public static setPlatformUserAgentStylesheet(Ljava/lang/String;)V
    .locals 2

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "stylesheetUrl":Ljava/lang/String;
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->isFxApplicationThread()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 548
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->_setPlatformUserAgentStylesheet(Ljava/lang/String;)V

    .line 552
    :goto_0
    return-void

    .line 550
    :cond_0
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl$$Lambda$11;->lambdaFactory$(Ljava/lang/String;)Ljava/lang/Runnable;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->runLater(Ljava/lang/Runnable;)V

    goto :goto_0
.end method

.method public static setTaskbarApplication(Z)V
    .locals 2

    .prologue
    .line 98
    move v0, p0

    .local v0, "taskbarApplication":Z
    move v1, v0

    sput-boolean v1, Lcom/sun/javafx/application/PlatformImpl;->taskbarApplication:Z

    .line 99
    return-void
.end method

.method public static startup(Ljava/lang/Runnable;)V
    .locals 5

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "r":Ljava/lang/Runnable;
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->platformExit:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 145
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Platform.exit has been called"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 148
    :cond_0
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 150
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/application/PlatformImpl;->runLater(Ljava/lang/Runnable;)V

    .line 151
    .line 220
    :goto_0
    return-void

    .line 153
    :cond_1
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl$$Lambda$2;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v1

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .line 189
    sget-boolean v1, Lcom/sun/javafx/application/PlatformImpl;->taskbarApplication:Z

    if-nez v1, :cond_2

    .line 190
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl$$Lambda$3;->lambdaFactory$()Ljava/security/PrivilegedAction;

    move-result-object v1

    invoke-static {v1}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;)Ljava/lang/Object;

    move-result-object v1

    .line 198
    :cond_2
    new-instance v1, Lcom/sun/javafx/application/PlatformImpl$1;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Lcom/sun/javafx/application/PlatformImpl$1;-><init>()V

    sput-object v1, Lcom/sun/javafx/application/PlatformImpl;->toolkitListener:Lcom/sun/javafx/tk/TKListener;

    .line 209
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    sget-object v2, Lcom/sun/javafx/application/PlatformImpl;->toolkitListener:Lcom/sun/javafx/tk/TKListener;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/Toolkit;->addTkListener(Lcom/sun/javafx/tk/TKListener;)V

    .line 211
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/application/PlatformImpl$$Lambda$4;->lambdaFactory$(Ljava/lang/Runnable;)Ljava/lang/Runnable;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/Toolkit;->startup(Ljava/lang/Runnable;)V

    .line 217
    sget-boolean v1, Lcom/sun/javafx/application/PlatformImpl;->isThreadMerged:Z

    if-eqz v1, :cond_3

    .line 218
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->installFwEventQueue()V

    .line 220
    :cond_3
    goto :goto_0
.end method

.method static test_getPlatformExitLatch()Ljava/util/concurrent/CountDownLatch;
    .locals 1

    .prologue
    .line 437
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->platformExitLatch:Ljava/util/concurrent/CountDownLatch;

    return-object v0
.end method

.method public static tkExit()V
    .locals 2

    .prologue
    .line 441
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->toolkitExit:Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;->getAndSet(Z)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 442
    .line 461
    :goto_0
    return-void

    .line 445
    :cond_0
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->initialized:Ljava/util/concurrent/atomic/AtomicBoolean;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 448
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl$$Lambda$10;->lambdaFactory$()Ljava/lang/Runnable;

    move-result-object v0

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/sun/javafx/application/PlatformImpl;->runAndWait(Ljava/lang/Runnable;Z)V

    .line 453
    sget-boolean v0, Lcom/sun/javafx/application/PlatformImpl;->isThreadMerged:Z

    if-eqz v0, :cond_1

    .line 454
    invoke-static {}, Lcom/sun/javafx/application/PlatformImpl;->removeFwEventQueue()V

    .line 457
    :cond_1
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v0

    sget-object v1, Lcom/sun/javafx/application/PlatformImpl;->toolkitListener:Lcom/sun/javafx/tk/TKListener;

    invoke-virtual {v0, v1}, Lcom/sun/javafx/tk/Toolkit;->removeTkListener(Lcom/sun/javafx/tk/TKListener;)V

    .line 458
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/application/PlatformImpl;->toolkitListener:Lcom/sun/javafx/tk/TKListener;

    .line 459
    sget-object v0, Lcom/sun/javafx/application/PlatformImpl;->platformExitLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v0}, Ljava/util/concurrent/CountDownLatch;->countDown()V

    .line 461
    :cond_2
    goto :goto_0
.end method

.method private static waitForStart()V
    .locals 6

    .prologue
    .line 254
    sget-object v2, Lcom/sun/javafx/application/PlatformImpl;->startupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->getCount()J

    move-result-wide v2

    const-wide/16 v4, 0x0

    cmp-long v2, v2, v4

    if-lez v2, :cond_0

    .line 256
    :try_start_0
    sget-object v2, Lcom/sun/javafx/application/PlatformImpl;->startupLatch:Ljava/util/concurrent/CountDownLatch;

    invoke-virtual {v2}, Ljava/util/concurrent/CountDownLatch;->await()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 259
    .line 261
    :cond_0
    :goto_0
    return-void

    .line 257
    :catch_0
    move-exception v2

    move-object v1, v2

    .line 258
    .local v1, "ex":Ljava/lang/InterruptedException;
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0
.end method
