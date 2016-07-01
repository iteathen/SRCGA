.class Lcom/sun/javafx/tk/quantum/WindowStage;
.super Lcom/sun/javafx/tk/quantum/GlassStage;
.source "WindowStage.java"


# static fields
.field private static final LOCALE:Ljava/util/Locale;

.field private static final RESOURCES:Ljava/util/ResourceBundle;

.field private static activeWindows:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/sun/javafx/tk/quantum/WindowStage;",
            ">;"
        }
    .end annotation
.end field

.field private static final alwaysOnTopPermission:Ljava/security/Permission;

.field private static appletWindow:Lcom/sun/javafx/tk/quantum/GlassAppletWindow;

.field private static final fullScreenPermission:Ljava/security/Permission;

.field private static platformWindows:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lcom/sun/glass/ui/Window;",
            "Lcom/sun/javafx/tk/quantum/WindowStage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private fullScreenFromUserEvent:Z

.field protected fxStage:Ljavafx/stage/Stage;

.field private inEventHandler:Z

.field private isAppletStage:Z

.field private isInFullScreen:Z

.field private isPopupStage:Z

.field private isPrimaryStage:Z

.field private modality:Ljavafx/stage/Modality;

.field private owner:Lcom/sun/javafx/tk/quantum/GlassStage;

.field protected platformWindow:Lcom/sun/glass/ui/Window;

.field private rtl:Z

.field private savedFullScreenExitKey:Ljavafx/scene/input/KeyCombination;

.field private final securityDialog:Z

.field private style:Ljavafx/stage/StageStyle;

.field private transparent:Z

.field private warning:Lcom/sun/javafx/tk/quantum/OverlayWarning;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 86
    new-instance v0, Ljava/util/LinkedList;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/LinkedList;-><init>()V

    sput-object v0, Lcom/sun/javafx/tk/quantum/WindowStage;->activeWindows:Ljava/util/List;

    .line 88
    new-instance v0, Ljava/util/HashMap;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindows:Ljava/util/Map;

    .line 90
    const/4 v0, 0x0

    sput-object v0, Lcom/sun/javafx/tk/quantum/WindowStage;->appletWindow:Lcom/sun/javafx/tk/quantum/GlassAppletWindow;

    .line 98
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/tk/quantum/WindowStage;->LOCALE:Ljava/util/Locale;

    .line 100
    new-instance v0, Ljava/lang/StringBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Lcom/sun/javafx/tk/quantum/WindowStage;

    .line 101
    invoke-virtual {v1}, Ljava/lang/Class;->getPackage()Ljava/lang/Package;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Package;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ".QuantumMessagesBundle"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    sget-object v1, Lcom/sun/javafx/tk/quantum/WindowStage;->LOCALE:Ljava/util/Locale;

    invoke-static {v0, v1}, Ljava/util/ResourceBundle;->getBundle(Ljava/lang/String;Ljava/util/Locale;)Ljava/util/ResourceBundle;

    move-result-object v0

    sput-object v0, Lcom/sun/javafx/tk/quantum/WindowStage;->RESOURCES:Ljava/util/ResourceBundle;

    .line 602
    new-instance v0, Ljava/security/AllPermission;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/security/AllPermission;-><init>()V

    sput-object v0, Lcom/sun/javafx/tk/quantum/WindowStage;->fullScreenPermission:Ljava/security/Permission;

    .line 603
    new-instance v0, Ljava/security/AllPermission;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljava/security/AllPermission;-><init>()V

    sput-object v0, Lcom/sun/javafx/tk/quantum/WindowStage;->alwaysOnTopPermission:Ljava/security/Permission;

    return-void
.end method

.method public constructor <init>(Ljavafx/stage/Window;ZLjavafx/stage/StageStyle;Ljavafx/stage/Modality;Lcom/sun/javafx/tk/TKStage;)V
    .locals 9

    .prologue
    .line 105
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, p1

    .local v1, "peerWindow":Ljavafx/stage/Window;
    move v2, p2

    .local v2, "securityDialog":Z
    move-object v3, p3

    .local v3, "stageStyle":Ljavafx/stage/StageStyle;
    move-object v4, p4

    .local v4, "modality":Ljavafx/stage/Modality;
    move-object v5, p5

    .local v5, "owner":Lcom/sun/javafx/tk/TKStage;
    move-object v6, v0

    invoke-direct {v6}, Lcom/sun/javafx/tk/quantum/GlassStage;-><init>()V

    .line 66
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->owner:Lcom/sun/javafx/tk/quantum/GlassStage;

    .line 67
    move-object v6, v0

    sget-object v7, Ljavafx/stage/Modality;->NONE:Ljavafx/stage/Modality;

    iput-object v7, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->modality:Ljavafx/stage/Modality;

    .line 70
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->warning:Lcom/sun/javafx/tk/quantum/OverlayWarning;

    .line 71
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->rtl:Z

    .line 72
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->transparent:Z

    .line 73
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->isPrimaryStage:Z

    .line 74
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->isAppletStage:Z

    .line 75
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->isPopupStage:Z

    .line 76
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->isInFullScreen:Z

    .line 80
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->inEventHandler:Z

    .line 605
    move-object v6, v0

    const/4 v7, 0x0

    iput-boolean v7, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->fullScreenFromUserEvent:Z

    .line 607
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->savedFullScreenExitKey:Ljavafx/scene/input/KeyCombination;

    .line 106
    move-object v6, v0

    move-object v7, v3

    iput-object v7, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->style:Ljavafx/stage/StageStyle;

    .line 107
    move-object v6, v0

    move-object v7, v5

    check-cast v7, Lcom/sun/javafx/tk/quantum/GlassStage;

    iput-object v7, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->owner:Lcom/sun/javafx/tk/quantum/GlassStage;

    .line 108
    move-object v6, v0

    move-object v7, v4

    iput-object v7, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->modality:Ljavafx/stage/Modality;

    .line 109
    move-object v6, v0

    move v7, v2

    iput-boolean v7, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->securityDialog:Z

    .line 111
    move-object v6, v1

    instance-of v6, v6, Ljavafx/stage/Stage;

    if-eqz v6, :cond_1

    .line 112
    move-object v6, v0

    move-object v7, v1

    check-cast v7, Ljavafx/stage/Stage;

    iput-object v7, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->fxStage:Ljavafx/stage/Stage;

    .line 117
    :goto_0
    move-object v6, v0

    move-object v7, v3

    sget-object v8, Ljavafx/stage/StageStyle;->TRANSPARENT:Ljavafx/stage/StageStyle;

    if-ne v7, v8, :cond_2

    const/4 v7, 0x1

    :goto_1
    iput-boolean v7, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->transparent:Z

    .line 118
    move-object v6, v5

    if-nez v6, :cond_0

    .line 119
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->modality:Ljavafx/stage/Modality;

    sget-object v7, Ljavafx/stage/Modality;->WINDOW_MODAL:Ljavafx/stage/Modality;

    if-ne v6, v7, :cond_0

    .line 120
    move-object v6, v0

    sget-object v7, Ljavafx/stage/Modality;->NONE:Ljavafx/stage/Modality;

    iput-object v7, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->modality:Ljavafx/stage/Modality;

    .line 123
    :cond_0
    return-void

    .line 114
    :cond_1
    move-object v6, v0

    const/4 v7, 0x0

    iput-object v7, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->fxStage:Ljavafx/stage/Stage;

    goto :goto_0

    .line 117
    :cond_2
    const/4 v7, 0x0

    goto :goto_1
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/tk/quantum/WindowStage;Lcom/sun/glass/ui/View;Lcom/sun/javafx/tk/quantum/GlassScene;Lcom/sun/javafx/tk/quantum/GlassScene;)Ljava/lang/Object;
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/tk/quantum/WindowStage;->lambda$setScene$370(Lcom/sun/glass/ui/View;Lcom/sun/javafx/tk/quantum/GlassScene;Lcom/sun/javafx/tk/quantum/GlassScene;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/tk/quantum/WindowStage;Lcom/sun/javafx/tk/quantum/GlassScene;)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/WindowStage;->lambda$setScene$371(Lcom/sun/javafx/tk/quantum/GlassScene;)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/tk/quantum/WindowStage;Z)Ljava/lang/Object;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/WindowStage;->lambda$setVisible$372(Z)Ljava/lang/Object;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$3(Lcom/sun/javafx/tk/quantum/WindowStage;Z)Ljava/lang/Void;
    .locals 4

    move-object v0, p0

    move v1, p1

    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/WindowStage;->lambda$fullscreenChanged$373(Z)Ljava/lang/Void;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$4(Lcom/sun/javafx/tk/quantum/WindowStage;)Ljava/lang/Object;
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/tk/quantum/WindowStage;->lambda$close$374()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    return-object v0
.end method

.method static addActiveWindow(Lcom/sun/javafx/tk/quantum/WindowStage;)V
    .locals 3

    .prologue
    .line 783
    move-object v0, p0

    .local v0, "window":Lcom/sun/javafx/tk/quantum/WindowStage;
    sget-object v1, Lcom/sun/javafx/tk/quantum/WindowStage;->activeWindows:Ljava/util/List;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 784
    sget-object v1, Lcom/sun/javafx/tk/quantum/WindowStage;->activeWindows:Ljava/util/List;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 785
    return-void
.end method

.method private applyFullScreen()V
    .locals 13

    .prologue
    .line 614
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    if-nez v7, :cond_0

    .line 617
    .line 693
    :goto_0
    return-void

    .line 619
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v7}, Lcom/sun/glass/ui/Window;->getView()Lcom/sun/glass/ui/View;

    move-result-object v7

    move-object v1, v7

    .line 620
    .local v1, "v":Lcom/sun/glass/ui/View;
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/tk/quantum/WindowStage;->isVisible()Z

    move-result v7

    if-eqz v7, :cond_e

    move-object v7, v1

    if-eqz v7, :cond_e

    move-object v7, v1

    invoke-virtual {v7}, Lcom/sun/glass/ui/View;->isInFullscreen()Z

    move-result v7

    move-object v8, v0

    iget-boolean v8, v8, Lcom/sun/javafx/tk/quantum/WindowStage;->isInFullScreen:Z

    if-eq v7, v8, :cond_e

    .line 621
    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/tk/quantum/WindowStage;->isInFullScreen:Z

    if-eqz v7, :cond_c

    .line 626
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/tk/quantum/WindowStage;->isTrustedFullScreen()Z

    move-result v7

    move v2, v7

    .line 627
    .local v2, "isTrusted":Z
    move v7, v2

    if-nez v7, :cond_3

    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/tk/quantum/WindowStage;->fullScreenFromUserEvent:Z

    if-nez v7, :cond_3

    .line 628
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/tk/quantum/WindowStage;->exitFullScreen()V

    .line 679
    .line 687
    .end local v2    # "isTrusted":Z
    :cond_1
    :goto_1
    move-object v7, v0

    const/4 v8, 0x0

    iput-boolean v8, v7, Lcom/sun/javafx/tk/quantum/WindowStage;->fullScreenFromUserEvent:Z

    .line 693
    :cond_2
    :goto_2
    goto :goto_0

    .line 630
    .restart local v2    # "isTrusted":Z
    :cond_3
    move-object v7, v1

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Lcom/sun/glass/ui/View;->enterFullscreen(ZZZ)Z

    move-result v7

    .line 631
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/WindowStage;->warning:Lcom/sun/javafx/tk/quantum/OverlayWarning;

    if-eqz v7, :cond_4

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/WindowStage;->warning:Lcom/sun/javafx/tk/quantum/OverlayWarning;

    invoke-virtual {v7}, Lcom/sun/javafx/tk/quantum/OverlayWarning;->inWarningTransition()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 632
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/WindowStage;->warning:Lcom/sun/javafx/tk/quantum/OverlayWarning;

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/tk/quantum/WindowStage;->getViewScene()Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v8

    invoke-virtual {v7, v8}, Lcom/sun/javafx/tk/quantum/OverlayWarning;->setView(Lcom/sun/javafx/tk/quantum/ViewScene;)V

    goto :goto_1

    .line 634
    :cond_4
    const/4 v7, 0x1

    move v3, v7

    .line 636
    .local v3, "showWarning":Z
    const/4 v7, 0x0

    move-object v4, v7

    .line 637
    .local v4, "key":Ljavafx/scene/input/KeyCombination;
    const/4 v7, 0x0

    move-object v5, v7

    .line 639
    .local v5, "exitMessage":Ljava/lang/String;
    move v7, v2

    if-eqz v7, :cond_5

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/WindowStage;->fxStage:Ljavafx/stage/Stage;

    if-eqz v7, :cond_5

    .line 641
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/WindowStage;->fxStage:Ljavafx/stage/Stage;

    invoke-virtual {v7}, Ljavafx/stage/Stage;->getFullScreenExitKeyCombination()Ljavafx/scene/input/KeyCombination;

    move-result-object v7

    move-object v4, v7

    .line 643
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/WindowStage;->fxStage:Ljavafx/stage/Stage;

    invoke-virtual {v7}, Ljavafx/stage/Stage;->getFullScreenExitHint()Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 646
    :cond_5
    move-object v7, v0

    move-object v8, v4

    if-nez v8, :cond_a

    sget-object v8, Lcom/sun/javafx/tk/quantum/WindowStage;->defaultFullScreenExitKeycombo:Ljavafx/scene/input/KeyCodeCombination;

    :goto_3
    iput-object v8, v7, Lcom/sun/javafx/tk/quantum/WindowStage;->savedFullScreenExitKey:Ljavafx/scene/input/KeyCombination;

    .line 651
    const-string v7, ""

    move-object v8, v5

    .line 653
    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/WindowStage;->savedFullScreenExitKey:Ljavafx/scene/input/KeyCombination;

    sget-object v8, Ljavafx/scene/input/KeyCombination;->NO_MATCH:Ljavafx/scene/input/KeyCombination;

    .line 655
    invoke-virtual {v7, v8}, Ljavafx/scene/input/KeyCombination;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_7

    .line 657
    :cond_6
    const/4 v7, 0x0

    move v3, v7

    .line 661
    :cond_7
    move v7, v3

    if-eqz v7, :cond_8

    move-object v7, v5

    if-nez v7, :cond_8

    .line 662
    move-object v7, v4

    if-nez v7, :cond_b

    .line 663
    sget-object v7, Lcom/sun/javafx/tk/quantum/WindowStage;->RESOURCES:Ljava/util/ResourceBundle;

    const-string v8, "OverlayWarningESC"

    invoke-virtual {v7, v8}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    .line 670
    :cond_8
    :goto_4
    move v7, v3

    if-eqz v7, :cond_9

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/WindowStage;->warning:Lcom/sun/javafx/tk/quantum/OverlayWarning;

    if-nez v7, :cond_9

    .line 671
    move-object v7, v0

    new-instance v8, Lcom/sun/javafx/tk/quantum/OverlayWarning;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    move-object v10, v0

    invoke-virtual {v10}, Lcom/sun/javafx/tk/quantum/WindowStage;->getViewScene()Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v10

    invoke-direct {v9, v10}, Lcom/sun/javafx/tk/quantum/OverlayWarning;-><init>(Lcom/sun/javafx/tk/quantum/ViewScene;)V

    invoke-virtual {v7, v8}, Lcom/sun/javafx/tk/quantum/WindowStage;->setWarning(Lcom/sun/javafx/tk/quantum/OverlayWarning;)V

    .line 674
    :cond_9
    move v7, v3

    if-eqz v7, :cond_1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/WindowStage;->warning:Lcom/sun/javafx/tk/quantum/OverlayWarning;

    if-eqz v7, :cond_1

    .line 675
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/WindowStage;->warning:Lcom/sun/javafx/tk/quantum/OverlayWarning;

    move-object v8, v5

    invoke-virtual {v7, v8}, Lcom/sun/javafx/tk/quantum/OverlayWarning;->warn(Ljava/lang/String;)V

    goto/16 :goto_1

    .line 646
    :cond_a
    move-object v8, v4

    goto :goto_3

    .line 665
    :cond_b
    sget-object v7, Lcom/sun/javafx/tk/quantum/WindowStage;->RESOURCES:Ljava/util/ResourceBundle;

    const-string v8, "OverlayWarningKey"

    invoke-virtual {v7, v8}, Ljava/util/ResourceBundle;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    move-object v6, v7

    .line 666
    .local v6, "f":Ljava/lang/String;
    move-object v7, v6

    move-object v7, v6

    const/4 v8, 0x1

    new-array v8, v8, [Ljava/lang/Object;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v0

    iget-object v11, v11, Lcom/sun/javafx/tk/quantum/WindowStage;->savedFullScreenExitKey:Ljavafx/scene/input/KeyCombination;

    invoke-virtual {v11}, Ljavafx/scene/input/KeyCombination;->toString()Ljava/lang/String;

    move-result-object v11

    aput-object v11, v9, v10

    invoke-static {v7, v8}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v7

    move-object v5, v7

    goto :goto_4

    .line 680
    .end local v2    # "isTrusted":Z
    .end local v3    # "showWarning":Z
    .end local v4    # "key":Ljavafx/scene/input/KeyCombination;
    .end local v5    # "exitMessage":Ljava/lang/String;
    .end local v6    # "f":Ljava/lang/String;
    :cond_c
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/WindowStage;->warning:Lcom/sun/javafx/tk/quantum/OverlayWarning;

    if-eqz v7, :cond_d

    .line 681
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/WindowStage;->warning:Lcom/sun/javafx/tk/quantum/OverlayWarning;

    invoke-virtual {v7}, Lcom/sun/javafx/tk/quantum/OverlayWarning;->cancel()V

    .line 682
    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sun/javafx/tk/quantum/WindowStage;->setWarning(Lcom/sun/javafx/tk/quantum/OverlayWarning;)V

    .line 684
    :cond_d
    move-object v7, v1

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sun/glass/ui/View;->exitFullscreen(Z)V

    goto/16 :goto_1

    .line 688
    :cond_e
    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/tk/quantum/WindowStage;->isVisible()Z

    move-result v7

    if-nez v7, :cond_2

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/WindowStage;->warning:Lcom/sun/javafx/tk/quantum/OverlayWarning;

    if-eqz v7, :cond_2

    .line 690
    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/WindowStage;->warning:Lcom/sun/javafx/tk/quantum/OverlayWarning;

    invoke-virtual {v7}, Lcom/sun/javafx/tk/quantum/OverlayWarning;->cancel()V

    .line 691
    move-object v7, v0

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/sun/javafx/tk/quantum/WindowStage;->setWarning(Lcom/sun/javafx/tk/quantum/OverlayWarning;)V

    goto/16 :goto_2
.end method

.method static findBestImage(Ljava/util/List;II)Lcom/sun/prism/Image;
    .locals 28

    .prologue
    .line 342
    move-object/from16 v3, p0

    .local v3, "icons":Ljava/util/List;
    move/from16 v4, p1

    .local v4, "width":I
    move/from16 v5, p2

    .local v5, "height":I
    const/16 v22, 0x0

    move-object/from16 v6, v22

    .line 343
    .local v6, "image":Lcom/sun/prism/Image;
    const-wide/high16 v22, 0x4008000000000000L    # 3.0

    move-wide/from16 v7, v22

    .line 344
    .local v7, "bestSimilarity":D
    move-object/from16 v22, v3

    invoke-interface/range {v22 .. v22}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v22

    move-object/from16 v9, v22

    :cond_0
    :goto_0
    move-object/from16 v22, v9

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_3

    move-object/from16 v22, v9

    invoke-interface/range {v22 .. v22}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v10, v22

    .line 351
    .local v10, "icon":Ljava/lang/Object;
    move-object/from16 v22, v10

    check-cast v22, Lcom/sun/prism/Image;

    move-object/from16 v11, v22

    .line 352
    .local v11, "im":Lcom/sun/prism/Image;
    move-object/from16 v22, v11

    if-eqz v22, :cond_0

    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Lcom/sun/prism/Image;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v22

    sget-object v23, Lcom/sun/prism/PixelFormat;->BYTE_RGB:Lcom/sun/prism/PixelFormat;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_1

    move-object/from16 v22, v11

    .line 353
    invoke-virtual/range {v22 .. v22}, Lcom/sun/prism/Image;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v22

    sget-object v23, Lcom/sun/prism/PixelFormat;->BYTE_BGRA_PRE:Lcom/sun/prism/PixelFormat;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_1

    move-object/from16 v22, v11

    .line 354
    invoke-virtual/range {v22 .. v22}, Lcom/sun/prism/Image;->getPixelFormat()Lcom/sun/prism/PixelFormat;

    move-result-object v22

    sget-object v23, Lcom/sun/prism/PixelFormat;->BYTE_GRAY:Lcom/sun/prism/PixelFormat;

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    if-eq v0, v1, :cond_1

    .line 356
    goto :goto_0

    .line 359
    :cond_1
    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Lcom/sun/prism/Image;->getWidth()I

    move-result v22

    move/from16 v12, v22

    .line 360
    .local v12, "iw":I
    move-object/from16 v22, v11

    invoke-virtual/range {v22 .. v22}, Lcom/sun/prism/Image;->getHeight()I

    move-result v22

    move/from16 v13, v22

    .line 362
    .local v13, "ih":I
    move/from16 v22, v12

    if-lez v22, :cond_8

    move/from16 v22, v13

    if-lez v22, :cond_8

    .line 364
    move/from16 v22, v4

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move/from16 v24, v12

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move/from16 v24, v5

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v26, v13

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->min(DD)D

    move-result-wide v22

    move-wide/from16 v14, v22

    .line 370
    .local v14, "scaleFactor":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v18, v22

    .line 371
    .local v18, "scaleMeasure":D
    move-wide/from16 v22, v14

    const-wide/high16 v24, 0x4000000000000000L    # 2.0

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_4

    .line 374
    move-wide/from16 v22, v14

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->floor(D)D

    move-result-wide v22

    move-wide/from16 v14, v22

    .line 375
    move/from16 v22, v12

    move-wide/from16 v23, v14

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v23, v0

    mul-int v22, v22, v23

    move/from16 v16, v22

    .line 376
    .local v16, "adjw":I
    move/from16 v22, v13

    move-wide/from16 v23, v14

    move-wide/from16 v0, v23

    double-to-int v0, v0

    move/from16 v23, v0

    mul-int v22, v22, v23

    move/from16 v17, v22

    .line 377
    .local v17, "adjh":I
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v24, 0x3fe0000000000000L    # 0.5

    move-wide/from16 v26, v14

    div-double v24, v24, v26

    sub-double v22, v22, v24

    move-wide/from16 v18, v22

    .line 406
    :goto_1
    move/from16 v22, v4

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move/from16 v24, v16

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    sub-double v22, v22, v24

    move/from16 v24, v4

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    div-double v22, v22, v24

    move/from16 v24, v5

    move/from16 v0, v24

    int-to-double v0, v0

    move-wide/from16 v24, v0

    move/from16 v26, v17

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    sub-double v24, v24, v26

    move/from16 v26, v5

    move/from16 v0, v26

    int-to-double v0, v0

    move-wide/from16 v26, v0

    div-double v24, v24, v26

    add-double v22, v22, v24

    move-wide/from16 v24, v18

    add-double v22, v22, v24

    move-wide/from16 v20, v22

    .line 409
    .local v20, "similarity":D
    move-wide/from16 v22, v20

    move-wide/from16 v24, v7

    cmpg-double v22, v22, v24

    if-gez v22, :cond_2

    .line 410
    move-wide/from16 v22, v20

    move-wide/from16 v7, v22

    .line 411
    move-object/from16 v22, v11

    move-object/from16 v6, v22

    .line 413
    :cond_2
    move-wide/from16 v22, v20

    const-wide/16 v24, 0x0

    cmpl-double v22, v22, v24

    if-nez v22, :cond_8

    .line 416
    .end local v10    # "icon":Ljava/lang/Object;
    .end local v11    # "im":Lcom/sun/prism/Image;
    .end local v12    # "iw":I
    .end local v13    # "ih":I
    .end local v14    # "scaleFactor":D
    .end local v16    # "adjw":I
    .end local v17    # "adjh":I
    .end local v18    # "scaleMeasure":D
    .end local v20    # "similarity":D
    :cond_3
    move-object/from16 v22, v6

    move-object/from16 v3, v22

    .end local v3    # "icons":Ljava/util/List;
    return-object v3

    .line 378
    .restart local v3    # "icons":Ljava/util/List;
    .restart local v10    # "icon":Ljava/lang/Object;
    .restart local v11    # "im":Lcom/sun/prism/Image;
    .restart local v12    # "iw":I
    .restart local v13    # "ih":I
    .restart local v14    # "scaleFactor":D
    .restart local v18    # "scaleMeasure":D
    :cond_4
    move-wide/from16 v22, v14

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_5

    .line 380
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v14, v22

    .line 381
    move/from16 v22, v12

    move/from16 v16, v22

    .line 382
    .restart local v16    # "adjw":I
    move/from16 v22, v13

    move/from16 v17, v22

    .line 383
    .restart local v17    # "adjh":I
    const-wide/16 v22, 0x0

    move-wide/from16 v18, v22

    goto :goto_1

    .line 384
    .end local v16    # "adjw":I
    .end local v17    # "adjh":I
    :cond_5
    move-wide/from16 v22, v14

    const-wide/high16 v24, 0x3fe8000000000000L    # 0.75

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_6

    .line 386
    const-wide/high16 v22, 0x3fe8000000000000L    # 0.75

    move-wide/from16 v14, v22

    .line 387
    move/from16 v22, v12

    const/16 v23, 0x3

    mul-int/lit8 v22, v22, 0x3

    const/16 v23, 0x4

    div-int/lit8 v22, v22, 0x4

    move/from16 v16, v22

    .line 388
    .restart local v16    # "adjw":I
    move/from16 v22, v13

    const/16 v23, 0x3

    mul-int/lit8 v22, v22, 0x3

    const/16 v23, 0x4

    div-int/lit8 v22, v22, 0x4

    move/from16 v17, v22

    .line 389
    .restart local v17    # "adjh":I
    const-wide v22, 0x3fd3333333333333L    # 0.3

    move-wide/from16 v18, v22

    goto/16 :goto_1

    .line 390
    .end local v16    # "adjw":I
    .end local v17    # "adjh":I
    :cond_6
    move-wide/from16 v22, v14

    const-wide v24, 0x3fe554c985f06f69L    # 0.6666

    cmpl-double v22, v22, v24

    if-ltz v22, :cond_7

    .line 392
    const-wide v22, 0x3fe554c985f06f69L    # 0.6666

    move-wide/from16 v14, v22

    .line 393
    move/from16 v22, v12

    const/16 v23, 0x2

    mul-int/lit8 v22, v22, 0x2

    const/16 v23, 0x3

    div-int/lit8 v22, v22, 0x3

    move/from16 v16, v22

    .line 394
    .restart local v16    # "adjw":I
    move/from16 v22, v13

    const/16 v23, 0x2

    mul-int/lit8 v22, v22, 0x2

    const/16 v23, 0x3

    div-int/lit8 v22, v22, 0x3

    move/from16 v17, v22

    .line 395
    .restart local v17    # "adjh":I
    const-wide v22, 0x3fd51eb851eb851fL    # 0.33

    move-wide/from16 v18, v22

    goto/16 :goto_1

    .line 400
    .end local v16    # "adjw":I
    .end local v17    # "adjh":I
    :cond_7
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v24, v14

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v22

    move-wide/from16 v20, v22

    .line 401
    .local v20, "scaleDivider":D
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v24, v20

    div-double v22, v22, v24

    move-wide/from16 v14, v22

    .line 402
    move/from16 v22, v12

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v20

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v16, v22

    .line 403
    .restart local v16    # "adjw":I
    move/from16 v22, v13

    move/from16 v0, v22

    int-to-double v0, v0

    move-wide/from16 v22, v0

    move-wide/from16 v24, v20

    div-double v22, v22, v24

    invoke-static/range {v22 .. v23}, Ljava/lang/Math;->round(D)J

    move-result-wide v22

    move-wide/from16 v0, v22

    long-to-int v0, v0

    move/from16 v22, v0

    move/from16 v17, v22

    .line 404
    .restart local v17    # "adjh":I
    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    move-wide/from16 v26, v20

    div-double v24, v24, v26

    sub-double v22, v22, v24

    move-wide/from16 v18, v22

    goto/16 :goto_1

    .line 415
    .end local v14    # "scaleFactor":D
    .end local v16    # "adjw":I
    .end local v17    # "adjh":I
    .end local v18    # "scaleMeasure":D
    .end local v20    # "scaleDivider":D
    :cond_8
    goto/16 :goto_0
.end method

.method static findWindowStage(Lcom/sun/glass/ui/Window;)Lcom/sun/javafx/tk/quantum/WindowStage;
    .locals 3

    .prologue
    .line 214
    move-object v0, p0

    .local v0, "platformWindow":Lcom/sun/glass/ui/Window;
    sget-object v1, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindows:Ljava/util/Map;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/tk/quantum/WindowStage;

    move-object v0, v1

    .end local v0    # "platformWindow":Lcom/sun/glass/ui/Window;
    return-object v0
.end method

.method static getAppletWindow()Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    .locals 1

    .prologue
    .line 95
    sget-object v0, Lcom/sun/javafx/tk/quantum/WindowStage;->appletWindow:Lcom/sun/javafx/tk/quantum/GlassAppletWindow;

    return-object v0
.end method

.method private hasPermission(Ljava/security/Permission;)Z
    .locals 5

    .prologue
    .line 590
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, p1

    .local v1, "perm":Ljava/security/Permission;
    :try_start_0
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 591
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/WindowStage;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/security/AccessControlContext;->checkPermission(Ljava/security/Permission;)V
    :try_end_0
    .catch Ljava/security/AccessControlException; {:try_start_0 .. :try_end_0} :catch_0

    .line 593
    :cond_0
    const/4 v3, 0x1

    move v0, v3

    .line 595
    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    :goto_0
    return v0

    .line 594
    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    :catch_0
    move-exception v3

    move-object v2, v3

    .line 595
    .local v2, "ae":Ljava/security/AccessControlException;
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0
.end method

.method private initPlatformWindow()V
    .locals 11

    .prologue
    .line 153
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    if-nez v6, :cond_0

    .line 154
    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v6

    move-object v1, v6

    .line 155
    .local v1, "app":Lcom/sun/glass/ui/Application;
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->isPrimaryStage:Z

    if-eqz v6, :cond_1

    const/4 v6, 0x0

    sget-object v7, Lcom/sun/javafx/tk/quantum/WindowStage;->appletWindow:Lcom/sun/javafx/tk/quantum/GlassAppletWindow;

    if-eq v6, v7, :cond_1

    .line 156
    move-object v6, v0

    move-object v7, v1

    sget-object v8, Lcom/sun/javafx/tk/quantum/WindowStage;->appletWindow:Lcom/sun/javafx/tk/quantum/GlassAppletWindow;

    invoke-virtual {v8}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->getGlassWindow()Lcom/sun/glass/ui/Window;

    move-result-object v8

    invoke-virtual {v8}, Lcom/sun/glass/ui/Window;->getNativeWindow()J

    move-result-wide v8

    invoke-virtual {v7, v8, v9}, Lcom/sun/glass/ui/Application;->createWindow(J)Lcom/sun/glass/ui/Window;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    .line 206
    .end local v1    # "app":Lcom/sun/glass/ui/Application;
    :cond_0
    :goto_0
    sget-object v6, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindows:Ljava/util/Map;

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    move-object v8, v0

    invoke-interface {v6, v7, v8}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    .line 207
    return-void

    .line 158
    .restart local v1    # "app":Lcom/sun/glass/ui/Application;
    :cond_1
    const/4 v6, 0x0

    move-object v2, v6

    .line 159
    .local v2, "ownerWindow":Lcom/sun/glass/ui/Window;
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->owner:Lcom/sun/javafx/tk/quantum/GlassStage;

    instance-of v6, v6, Lcom/sun/javafx/tk/quantum/WindowStage;

    if-eqz v6, :cond_2

    .line 160
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->owner:Lcom/sun/javafx/tk/quantum/GlassStage;

    check-cast v6, Lcom/sun/javafx/tk/quantum/WindowStage;

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    move-object v2, v6

    .line 162
    :cond_2
    const/4 v6, 0x0

    move v3, v6

    .line 163
    .local v3, "resizable":Z
    const/4 v6, 0x1

    move v4, v6

    .line 164
    .local v4, "focusable":Z
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->rtl:Z

    if-eqz v6, :cond_4

    const/16 v6, 0x80

    :goto_1
    move v5, v6

    .line 165
    .local v5, "windowMask":I
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->isPopupStage:Z

    if-eqz v6, :cond_5

    .line 166
    move v6, v5

    const/16 v7, 0x8

    or-int/lit8 v6, v6, 0x8

    move v5, v6

    .line 167
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->style:Ljavafx/stage/StageStyle;

    sget-object v7, Ljavafx/stage/StageStyle;->TRANSPARENT:Ljavafx/stage/StageStyle;

    if-ne v6, v7, :cond_3

    .line 168
    move v6, v5

    const/4 v7, 0x2

    or-int/lit8 v6, v6, 0x2

    move v5, v6

    .line 170
    :cond_3
    const/4 v6, 0x0

    move v4, v6

    .line 197
    :goto_2
    move-object v6, v0

    move-object v7, v1

    move-object v8, v2

    .line 198
    invoke-static {}, Lcom/sun/glass/ui/Screen;->getMainScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v9

    move v10, v5

    invoke-virtual {v7, v8, v9, v10}, Lcom/sun/glass/ui/Application;->createWindow(Lcom/sun/glass/ui/Window;Lcom/sun/glass/ui/Screen;I)Lcom/sun/glass/ui/Window;

    move-result-object v7

    iput-object v7, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    .line 199
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    move v7, v3

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/Window;->setResizable(Z)Z

    move-result v6

    .line 200
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    move v7, v4

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/Window;->setFocusable(Z)V

    .line 201
    move-object v6, v0

    iget-boolean v6, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->securityDialog:Z

    if-eqz v6, :cond_0

    .line 202
    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    const/4 v7, 0x2

    invoke-virtual {v6, v7}, Lcom/sun/glass/ui/Window;->setLevel(I)V

    goto :goto_0

    .line 164
    .end local v5    # "windowMask":I
    :cond_4
    const/4 v6, 0x0

    goto :goto_1

    .line 172
    .restart local v5    # "windowMask":I
    :cond_5
    sget-object v6, Lcom/sun/javafx/tk/quantum/WindowStage$1;->$SwitchMap$javafx$stage$StageStyle:[I

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/tk/quantum/WindowStage;->style:Ljavafx/stage/StageStyle;

    invoke-virtual {v7}, Ljavafx/stage/StageStyle;->ordinal()I

    move-result v7

    aget v6, v6, v7

    packed-switch v6, :pswitch_data_0

    .line 192
    move v6, v5

    move-object v7, v0

    iget-boolean v7, v7, Lcom/sun/javafx/tk/quantum/WindowStage;->transparent:Z

    if-eqz v7, :cond_9

    const/4 v7, 0x2

    :goto_3
    const/16 v8, 0x10

    or-int/lit8 v7, v7, 0x10

    or-int/2addr v6, v7

    move v5, v6

    goto :goto_2

    .line 174
    :pswitch_0
    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/glass/ui/Application;->supportsUnifiedWindows()Z

    move-result v6

    if-eqz v6, :cond_6

    .line 175
    move v6, v5

    const/16 v7, 0x100

    or-int/lit16 v6, v6, 0x100

    move v5, v6

    .line 179
    :cond_6
    :pswitch_1
    move v6, v5

    const/16 v7, 0x71

    or-int/lit8 v6, v6, 0x71

    move v5, v6

    .line 182
    move-object v6, v2

    if-nez v6, :cond_7

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/WindowStage;->modality:Ljavafx/stage/Modality;

    sget-object v7, Ljavafx/stage/Modality;->NONE:Ljavafx/stage/Modality;

    if-eq v6, v7, :cond_8

    .line 183
    :cond_7
    move v6, v5

    const/16 v7, -0x61

    and-int/lit8 v6, v6, -0x61

    move v5, v6

    .line 186
    :cond_8
    const/4 v6, 0x1

    move v3, v6

    .line 187
    goto :goto_2

    .line 189
    :pswitch_2
    move v6, v5

    const/16 v7, 0x15

    or-int/lit8 v6, v6, 0x15

    move v5, v6

    .line 190
    goto :goto_2

    .line 192
    :cond_9
    const/4 v7, 0x0

    goto :goto_3

    .line 172
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method private synthetic lambda$close$374()Ljava/lang/Object;
    .locals 4

    .prologue
    .line 762
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    if-eqz v2, :cond_0

    .line 763
    sget-object v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindows:Ljava/util/Map;

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    invoke-interface {v2, v3}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 764
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v2}, Lcom/sun/glass/ui/Window;->close()V

    .line 765
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    .line 767
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/WindowStage;->getViewScene()Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v2

    move-object v1, v2

    .line 768
    .local v1, "oldScene":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 769
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/GlassScene;->updateSceneState()V

    .line 771
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    return-object v0
.end method

.method private synthetic lambda$fullscreenChanged$373(Z)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 736
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move v1, p1

    .local v1, "fs":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    if-eqz v2, :cond_0

    .line 737
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->stageListener:Lcom/sun/javafx/tk/TKStageListener;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/TKStageListener;->changedFullscreen(Z)V

    .line 739
    :cond_0
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    return-object v0
.end method

.method private synthetic lambda$setScene$370(Lcom/sun/glass/ui/View;Lcom/sun/javafx/tk/quantum/GlassScene;Lcom/sun/javafx/tk/quantum/GlassScene;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, p1

    .local v1, "view":Lcom/sun/glass/ui/View;
    move-object v2, p2

    .local v2, "oldScene":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v3, p3

    .local v3, "newScene":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    move-object v5, v1

    invoke-virtual {v4, v5}, Lcom/sun/glass/ui/Window;->setView(Lcom/sun/glass/ui/View;)V

    .line 255
    move-object v4, v2

    if-eqz v4, :cond_0

    move-object v4, v2

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/GlassScene;->updateSceneState()V

    .line 256
    :cond_0
    move-object v4, v3

    invoke-virtual {v4}, Lcom/sun/javafx/tk/quantum/GlassScene;->updateSceneState()V

    .line 257
    const/4 v4, 0x0

    move-object v0, v4

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    return-object v0
.end method

.method private synthetic lambda$setScene$371(Lcom/sun/javafx/tk/quantum/GlassScene;)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 264
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, p1

    .local v1, "oldScene":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    if-eqz v2, :cond_0

    .line 265
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Window;->setView(Lcom/sun/glass/ui/View;)V

    .line 267
    :cond_0
    move-object v2, v1

    if-eqz v2, :cond_1

    .line 268
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/GlassScene;->updateSceneState()V

    .line 270
    :cond_1
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    return-object v0
.end method

.method private synthetic lambda$setVisible$372(Z)Ljava/lang/Object;
    .locals 4

    .prologue
    .line 498
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move v1, p1

    .local v1, "visible":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    if-eqz v2, :cond_0

    .line 499
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Window;->setVisible(Z)V

    .line 501
    :cond_0
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassStage;->setVisible(Z)V

    .line 502
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    return-object v0
.end method

.method static removeActiveWindow(Lcom/sun/javafx/tk/quantum/WindowStage;)V
    .locals 3

    .prologue
    .line 788
    move-object v0, p0

    .local v0, "window":Lcom/sun/javafx/tk/quantum/WindowStage;
    sget-object v1, Lcom/sun/javafx/tk/quantum/WindowStage;->activeWindows:Ljava/util/List;

    move-object v2, v0

    invoke-interface {v1, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 789
    return-void
.end method

.method static setAppletWindow(Lcom/sun/javafx/tk/quantum/GlassAppletWindow;)V
    .locals 2

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "aw":Lcom/sun/javafx/tk/quantum/GlassAppletWindow;
    move-object v1, v0

    sput-object v1, Lcom/sun/javafx/tk/quantum/WindowStage;->appletWindow:Lcom/sun/javafx/tk/quantum/GlassAppletWindow;

    .line 93
    return-void
.end method


# virtual methods
.method public close()V
    .locals 2

    .prologue
    .line 759
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    invoke-super {v1}, Lcom/sun/javafx/tk/quantum/GlassStage;->close()V

    .line 760
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/WindowStage$$Lambda$5;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/WindowStage;)Ljava/util/function/Supplier;

    move-result-object v1

    invoke-static {v1}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v1

    .line 773
    return-void
.end method

.method public createTKScene(ZZLjava/security/AccessControlContext;)Lcom/sun/javafx/tk/TKScene;
    .locals 10

    .prologue
    .line 230
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move v1, p1

    .local v1, "depthBuffer":Z
    move v2, p2

    .local v2, "msaa":Z
    move-object v3, p3

    .local v3, "acc":Ljava/security/AccessControlContext;
    new-instance v5, Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    move v7, v1

    move v8, v2

    invoke-direct {v6, v7, v8}, Lcom/sun/javafx/tk/quantum/ViewScene;-><init>(ZZ)V

    move-object v4, v5

    .line 231
    .local v4, "scene":Lcom/sun/javafx/tk/quantum/ViewScene;
    move-object v5, v4

    move-object v6, v3

    invoke-virtual {v5, v6}, Lcom/sun/javafx/tk/quantum/ViewScene;->setSecurityContext(Ljava/security/AccessControlContext;)V

    .line 232
    move-object v5, v4

    move-object v0, v5

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    return-object v0
.end method

.method exitFullScreen()V
    .locals 3

    .prologue
    .line 581
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/quantum/WindowStage;->setFullScreen(Z)V

    .line 582
    return-void
.end method

.method fullscreenChanged(Z)V
    .locals 5

    .prologue
    .line 727
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move v1, p1

    .local v1, "fs":Z
    move v2, v1

    if-nez v2, :cond_1

    .line 728
    sget-object v2, Lcom/sun/javafx/tk/quantum/WindowStage;->activeFSWindow:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->compareAndSet(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 729
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->isInFullScreen:Z

    .line 735
    :cond_0
    :goto_0
    move-object v2, v0

    move v3, v1

    invoke-static {v2, v3}, Lcom/sun/javafx/tk/quantum/WindowStage$$Lambda$4;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/WindowStage;Z)Ljava/security/PrivilegedAction;

    move-result-object v2

    move-object v3, v0

    .line 740
    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/WindowStage;->getAccessControlContext()Ljava/security/AccessControlContext;

    move-result-object v3

    .line 735
    invoke-static {v2, v3}, Ljava/security/AccessController;->doPrivileged(Ljava/security/PrivilegedAction;Ljava/security/AccessControlContext;)Ljava/lang/Object;

    move-result-object v2

    .line 741
    return-void

    .line 732
    :cond_1
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->isInFullScreen:Z

    .line 733
    sget-object v2, Lcom/sun/javafx/tk/quantum/WindowStage;->activeFSWindow:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v3, v0

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method protected getOwner()Lcom/sun/javafx/tk/quantum/GlassStage;
    .locals 2

    .prologue
    .line 218
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->owner:Lcom/sun/javafx/tk/quantum/GlassStage;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    return-object v0
.end method

.method final getPlatformWindow()Lcom/sun/glass/ui/Window;
    .locals 2

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    return-object v0
.end method

.method public getRenderScale()F
    .locals 2

    .prologue
    .line 330
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v1}, Lcom/sun/glass/ui/Window;->getRenderScale()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    return v0
.end method

.method public final getSavedFullScreenExitKey()Ljavafx/scene/input/KeyCombination;
    .locals 2

    .prologue
    .line 610
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->savedFullScreenExitKey:Ljavafx/scene/input/KeyCombination;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    return-object v0
.end method

.method getStyle()Ljavafx/stage/StageStyle;
    .locals 2

    .prologue
    .line 226
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->style:Ljavafx/stage/StageStyle;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    return-object v0
.end method

.method public getUIScale()F
    .locals 2

    .prologue
    .line 325
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v1}, Lcom/sun/glass/ui/Window;->getPlatformScale()F

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    return v0
.end method

.method protected getViewScene()Lcom/sun/javafx/tk/quantum/ViewScene;
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/WindowStage;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/tk/quantum/ViewScene;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    return-object v0
.end method

.method getWarning()Lcom/sun/javafx/tk/quantum/OverlayWarning;
    .locals 2

    .prologue
    .line 701
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->warning:Lcom/sun/javafx/tk/quantum/OverlayWarning;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    return-object v0
.end method

.method public grabFocus()Z
    .locals 2

    .prologue
    .line 802
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v1}, Lcom/sun/glass/ui/Window;->grabFocus()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    return v0
.end method

.method final handleFocusDisabled()V
    .locals 5

    .prologue
    .line 792
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    sget-object v2, Lcom/sun/javafx/tk/quantum/WindowStage;->activeWindows:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->isEmpty()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 793
    .line 799
    :goto_0
    return-void

    .line 795
    :cond_0
    sget-object v2, Lcom/sun/javafx/tk/quantum/WindowStage;->activeWindows:Ljava/util/List;

    sget-object v3, Lcom/sun/javafx/tk/quantum/WindowStage;->activeWindows:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    const/4 v4, 0x1

    add-int/lit8 v3, v3, -0x1

    invoke-interface {v2, v3}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/sun/javafx/tk/quantum/WindowStage;

    move-object v1, v2

    .line 796
    .local v1, "window":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v2, v1

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/WindowStage;->setIconified(Z)V

    .line 797
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/WindowStage;->requestToFront()V

    .line 798
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/WindowStage;->requestFocus()V

    .line 799
    goto :goto_0
.end method

.method public final init(Lcom/sun/javafx/tk/quantum/GlassSystemMenu;)Lcom/sun/javafx/tk/quantum/WindowStage;
    .locals 7

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, p1

    .local v1, "sysmenu":Lcom/sun/javafx/tk/quantum/GlassSystemMenu;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/tk/quantum/WindowStage;->initPlatformWindow()V

    .line 144
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    new-instance v3, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v0

    invoke-direct {v4, v5}, Lcom/sun/javafx/tk/quantum/GlassWindowEventHandler;-><init>(Lcom/sun/javafx/tk/quantum/WindowStage;)V

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Window;->setEventHandler(Lcom/sun/glass/ui/Window$EventHandler;)V

    .line 145
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->isSupported()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 146
    move-object v2, v1

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->createMenuBar()V

    .line 147
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/GlassSystemMenu;->getMenuBar()Lcom/sun/glass/ui/MenuBar;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Window;->setMenuBar(Lcom/sun/glass/ui/MenuBar;)V

    .line 149
    :cond_0
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    return-object v0
.end method

.method isApplet()Z
    .locals 3

    .prologue
    .line 585
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->isPrimaryStage:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sget-object v2, Lcom/sun/javafx/tk/quantum/WindowStage;->appletWindow:Lcom/sun/javafx/tk/quantum/GlassAppletWindow;

    if-eq v1, v2, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public isInEventHandler()Z
    .locals 2

    .prologue
    .line 877
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->inEventHandler:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    return v0
.end method

.method final isSecurityDialog()Z
    .locals 2

    .prologue
    .line 138
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->securityDialog:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    return v0
.end method

.method isTrustedFullScreen()Z
    .locals 3

    .prologue
    .line 576
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    sget-object v2, Lcom/sun/javafx/tk/quantum/WindowStage;->fullScreenPermission:Ljava/security/Permission;

    invoke-direct {v1, v2}, Lcom/sun/javafx/tk/quantum/WindowStage;->hasPermission(Ljava/security/Permission;)Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    return v0
.end method

.method isVisible()Z
    .locals 2

    .prologue
    .line 523
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v1}, Lcom/sun/glass/ui/Window;->isVisible()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    return v0
.end method

.method public needsUpdateWindow()Z
    .locals 2

    .prologue
    .line 535
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->transparent:Z

    if-eqz v1, :cond_0

    invoke-static {}, Lcom/sun/glass/ui/Application;->GetApplication()Lcom/sun/glass/ui/Application;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/glass/ui/Application;->shouldUpdateWindow()Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public releaseInput()V
    .locals 2

    .prologue
    .line 893
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v1}, Lcom/sun/glass/ui/Window;->releaseInput()V

    .line 894
    return-void
.end method

.method public requestFocus()V
    .locals 2

    .prologue
    .line 810
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v1}, Lcom/sun/glass/ui/Window;->requestFocus()Z

    move-result v1

    .line 811
    return-void
.end method

.method public requestFocus(Lcom/sun/javafx/tk/FocusCause;)V
    .locals 4

    .prologue
    .line 814
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, p1

    .local v1, "cause":Lcom/sun/javafx/tk/FocusCause;
    sget-object v2, Lcom/sun/javafx/tk/quantum/WindowStage$1;->$SwitchMap$com$sun$javafx$tk$FocusCause:[I

    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/tk/FocusCause;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 828
    :goto_0
    return-void

    .line 816
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    const/16 v3, 0x21f

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Window;->requestFocus(I)Z

    move-result v2

    .line 817
    goto :goto_0

    .line 819
    :pswitch_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    const/16 v3, 0x220

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Window;->requestFocus(I)Z

    move-result v2

    .line 820
    goto :goto_0

    .line 822
    :pswitch_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    const/16 v3, 0x21e

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Window;->requestFocus(I)Z

    move-result v2

    .line 823
    goto :goto_0

    .line 825
    :pswitch_3
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    const/16 v3, 0x21d

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Window;->requestFocus(I)Z

    move-result v2

    goto :goto_0

    .line 814
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public requestInput(Ljava/lang/String;IDDDDDDDDDDDDDD)V
    .locals 63

    .prologue
    .line 885
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object/from16 v2, p1

    .local v2, "text":Ljava/lang/String;
    move/from16 v3, p2

    .local v3, "type":I
    move-wide/from16 v4, p3

    .local v4, "width":D
    move-wide/from16 v6, p5

    .local v6, "height":D
    move-wide/from16 v8, p7

    .local v8, "Mxx":D
    move-wide/from16 v10, p9

    .local v10, "Mxy":D
    move-wide/from16 v12, p11

    .local v12, "Mxz":D
    move-wide/from16 v14, p13

    .local v14, "Mxt":D
    move-wide/from16 v16, p15

    .local v16, "Myx":D
    move-wide/from16 v18, p17

    .local v18, "Myy":D
    move-wide/from16 v20, p19

    .local v20, "Myz":D
    move-wide/from16 v22, p21

    .local v22, "Myt":D
    move-wide/from16 v24, p23

    .local v24, "Mzx":D
    move-wide/from16 v26, p25

    .local v26, "Mzy":D
    move-wide/from16 v28, p27

    .local v28, "Mzz":D
    move-wide/from16 v30, p29

    .local v30, "Mzt":D
    move-object/from16 v32, v1

    move-object/from16 v0, v32

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    move-object/from16 v32, v0

    move-object/from16 v33, v2

    move/from16 v34, v3

    move-wide/from16 v35, v4

    move-wide/from16 v37, v6

    move-wide/from16 v39, v8

    move-wide/from16 v41, v10

    move-wide/from16 v43, v12

    move-wide/from16 v45, v14

    move-wide/from16 v47, v16

    move-wide/from16 v49, v18

    move-wide/from16 v51, v20

    move-wide/from16 v53, v22

    move-wide/from16 v55, v24

    move-wide/from16 v57, v26

    move-wide/from16 v59, v28

    move-wide/from16 v61, v30

    invoke-virtual/range {v32 .. v62}, Lcom/sun/glass/ui/Window;->requestInput(Ljava/lang/String;IDDDDDDDDDDDDDD)V

    .line 889
    return-void
.end method

.method protected requestToFront()V
    .locals 2

    .prologue
    .line 866
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    if-eqz v1, :cond_0

    .line 867
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v1}, Lcom/sun/glass/ui/Window;->toFront()V

    .line 868
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v1}, Lcom/sun/glass/ui/Window;->requestFocus()Z

    move-result v1

    .line 870
    :cond_0
    return-void
.end method

.method public setAlwaysOnTop(Z)V
    .locals 4

    .prologue
    .line 555
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move v1, p1

    .local v1, "alwaysOnTop":Z
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->securityDialog:Z

    if-eqz v2, :cond_0

    .line 565
    :goto_0
    return-void

    .line 557
    :cond_0
    move v2, v1

    if-eqz v2, :cond_2

    .line 558
    move-object v2, v0

    sget-object v3, Lcom/sun/javafx/tk/quantum/WindowStage;->alwaysOnTopPermission:Ljava/security/Permission;

    invoke-direct {v2, v3}, Lcom/sun/javafx/tk/quantum/WindowStage;->hasPermission(Ljava/security/Permission;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 559
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Window;->setLevel(I)V

    .line 565
    :cond_1
    :goto_1
    goto :goto_0

    .line 562
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Window;->setLevel(I)V

    goto :goto_1
.end method

.method public setBounds(FFZZFFFFFF)V
    .locals 38

    .prologue
    .line 283
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move/from16 v3, p1

    .local v3, "x":F
    move/from16 v4, p2

    .local v4, "y":F
    move/from16 v5, p3

    .local v5, "xSet":Z
    move/from16 v6, p4

    .local v6, "ySet":Z
    move/from16 v7, p5

    .local v7, "w":F
    move/from16 v8, p6

    .local v8, "h":F
    move/from16 v9, p7

    .local v9, "cw":F
    move/from16 v10, p8

    .local v10, "ch":F
    move/from16 v11, p9

    .local v11, "xGravity":F
    move/from16 v12, p10

    .local v12, "yGravity":F
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-boolean v0, v0, Lcom/sun/javafx/tk/quantum/WindowStage;->isAppletStage:Z

    move/from16 v26, v0

    if-eqz v26, :cond_0

    .line 284
    const/16 v26, 0x0

    move/from16 v37, v26

    move/from16 v26, v37

    move/from16 v27, v37

    move/from16 v6, v27

    move/from16 v5, v26

    .line 286
    :cond_0
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sun/glass/ui/Window;->getPlatformScale()F

    move-result v26

    move/from16 v13, v26

    .line 288
    .local v13, "pScale":F
    move/from16 v26, v5

    if-nez v26, :cond_1

    move/from16 v26, v6

    if-eqz v26, :cond_a

    .line 289
    :cond_1
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sun/glass/ui/Window;->getScreen()Lcom/sun/glass/ui/Screen;

    move-result-object v26

    move-object/from16 v16, v26

    .line 290
    .local v16, "screen":Lcom/sun/glass/ui/Screen;
    invoke-static {}, Lcom/sun/glass/ui/Screen;->getScreens()Ljava/util/List;

    move-result-object v26

    move-object/from16 v17, v26

    .line 291
    .local v17, "screens":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Screen;>;"
    move-object/from16 v26, v17

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->size()I

    move-result v26

    const/16 v27, 0x1

    move/from16 v0, v26

    move/from16 v1, v27

    if-le v0, v1, :cond_5

    .line 292
    move/from16 v26, v5

    if-eqz v26, :cond_3

    move/from16 v26, v3

    :goto_0
    move/from16 v18, v26

    .line 293
    .local v18, "wx":F
    move/from16 v26, v6

    if-eqz v26, :cond_4

    move/from16 v26, v4

    :goto_1
    move/from16 v19, v26

    .line 294
    .local v19, "wy":F
    move-object/from16 v26, v16

    invoke-virtual/range {v26 .. v26}, Lcom/sun/glass/ui/Screen;->getX()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v27, v16

    invoke-virtual/range {v27 .. v27}, Lcom/sun/glass/ui/Screen;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v27, v18

    sub-float v26, v26, v27

    move/from16 v20, v26

    .line 295
    .local v20, "relx":F
    move-object/from16 v26, v16

    invoke-virtual/range {v26 .. v26}, Lcom/sun/glass/ui/Screen;->getY()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v27, v16

    invoke-virtual/range {v27 .. v27}, Lcom/sun/glass/ui/Screen;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v27, v19

    sub-float v26, v26, v27

    move/from16 v21, v26

    .line 296
    .local v21, "rely":F
    move/from16 v26, v20

    move/from16 v27, v20

    mul-float v26, v26, v27

    move/from16 v27, v21

    move/from16 v28, v21

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v22, v26

    .line 297
    .local v22, "distsq":F
    invoke-static {}, Lcom/sun/glass/ui/Screen;->getScreens()Ljava/util/List;

    move-result-object v26

    invoke-interface/range {v26 .. v26}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v26

    move-object/from16 v23, v26

    :goto_2
    move-object/from16 v26, v23

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->hasNext()Z

    move-result v26

    if-eqz v26, :cond_5

    move-object/from16 v26, v23

    invoke-interface/range {v26 .. v26}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v26

    check-cast v26, Lcom/sun/glass/ui/Screen;

    move-object/from16 v24, v26

    .line 298
    .local v24, "s":Lcom/sun/glass/ui/Screen;
    move-object/from16 v26, v24

    invoke-virtual/range {v26 .. v26}, Lcom/sun/glass/ui/Screen;->getX()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v27, v24

    invoke-virtual/range {v27 .. v27}, Lcom/sun/glass/ui/Screen;->getWidth()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v27, v18

    sub-float v26, v26, v27

    move/from16 v20, v26

    .line 299
    move-object/from16 v26, v24

    invoke-virtual/range {v26 .. v26}, Lcom/sun/glass/ui/Screen;->getY()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    move-object/from16 v27, v24

    invoke-virtual/range {v27 .. v27}, Lcom/sun/glass/ui/Screen;->getHeight()I

    move-result v27

    move/from16 v0, v27

    int-to-float v0, v0

    move/from16 v27, v0

    const/high16 v28, 0x40000000    # 2.0f

    div-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v27, v19

    sub-float v26, v26, v27

    move/from16 v21, v26

    .line 300
    move/from16 v26, v20

    move/from16 v27, v20

    mul-float v26, v26, v27

    move/from16 v27, v21

    move/from16 v28, v21

    mul-float v27, v27, v28

    add-float v26, v26, v27

    move/from16 v25, v26

    .line 301
    .local v25, "distsq2":F
    move/from16 v26, v25

    move/from16 v27, v22

    cmpg-float v26, v26, v27

    if-gez v26, :cond_2

    .line 302
    move-object/from16 v26, v24

    move-object/from16 v16, v26

    .line 303
    move/from16 v26, v25

    move/from16 v22, v26

    .line 305
    :cond_2
    goto :goto_2

    .line 292
    .end local v18    # "wx":F
    .end local v19    # "wy":F
    .end local v20    # "relx":F
    .end local v21    # "rely":F
    .end local v22    # "distsq":F
    .end local v24    # "s":Lcom/sun/glass/ui/Screen;
    .end local v25    # "distsq2":F
    :cond_3
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sun/glass/ui/Window;->getX()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    goto/16 :goto_0

    .line 293
    .restart local v18    # "wx":F
    :cond_4
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    move-object/from16 v26, v0

    invoke-virtual/range {v26 .. v26}, Lcom/sun/glass/ui/Window;->getY()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    goto/16 :goto_1

    .line 307
    .end local v18    # "wx":F
    :cond_5
    move-object/from16 v26, v16

    if-nez v26, :cond_6

    const/16 v26, 0x0

    :goto_3
    move/from16 v18, v26

    .line 308
    .local v18, "sx":F
    move-object/from16 v26, v16

    if-nez v26, :cond_7

    const/16 v26, 0x0

    :goto_4
    move/from16 v19, v26

    .line 309
    .local v19, "sy":F
    move/from16 v26, v5

    if-eqz v26, :cond_8

    move/from16 v26, v18

    move/from16 v27, v3

    move/from16 v28, v18

    sub-float v27, v27, v28

    move/from16 v28, v13

    mul-float v27, v27, v28

    add-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v26

    :goto_5
    move/from16 v14, v26

    .line 310
    .local v14, "px":I
    move/from16 v26, v6

    if-eqz v26, :cond_9

    move/from16 v26, v19

    move/from16 v27, v4

    move/from16 v28, v19

    sub-float v27, v27, v28

    move/from16 v28, v13

    mul-float v27, v27, v28

    add-float v26, v26, v27

    invoke-static/range {v26 .. v26}, Ljava/lang/Math;->round(F)I

    move-result v26

    :goto_6
    move/from16 v15, v26

    .line 314
    .end local v16    # "screen":Lcom/sun/glass/ui/Screen;
    .end local v17    # "screens":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Screen;>;"
    .end local v18    # "sx":F
    .end local v19    # "sy":F
    .local v15, "py":I
    :goto_7
    move/from16 v26, v7

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_b

    move/from16 v26, v7

    move/from16 v27, v13

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    :goto_8
    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v16, v26

    .line 315
    .local v16, "pw":I
    move/from16 v26, v8

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_c

    move/from16 v26, v8

    move/from16 v27, v13

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    :goto_9
    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v17, v26

    .line 316
    .local v17, "ph":I
    move/from16 v26, v9

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_d

    move/from16 v26, v9

    move/from16 v27, v13

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    :goto_a
    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v18, v26

    .line 317
    .local v18, "pcw":I
    move/from16 v26, v10

    const/16 v27, 0x0

    cmpl-float v26, v26, v27

    if-lez v26, :cond_e

    move/from16 v26, v10

    move/from16 v27, v13

    mul-float v26, v26, v27

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    invoke-static/range {v26 .. v27}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v26

    :goto_b
    move-wide/from16 v0, v26

    double-to-int v0, v0

    move/from16 v26, v0

    move/from16 v19, v26

    .line 318
    .local v19, "pch":I
    move-object/from16 v26, v2

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    move-object/from16 v26, v0

    move/from16 v27, v14

    move/from16 v28, v15

    move/from16 v29, v5

    move/from16 v30, v6

    move/from16 v31, v16

    move/from16 v32, v17

    move/from16 v33, v18

    move/from16 v34, v19

    move/from16 v35, v11

    move/from16 v36, v12

    invoke-virtual/range {v26 .. v36}, Lcom/sun/glass/ui/Window;->setBounds(IIZZIIIIFF)V

    .line 321
    return-void

    .line 307
    .end local v14    # "px":I
    .end local v15    # "py":I
    .end local v18    # "pcw":I
    .end local v19    # "pch":I
    .local v16, "screen":Lcom/sun/glass/ui/Screen;
    .local v17, "screens":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Screen;>;"
    :cond_6
    move-object/from16 v26, v16

    invoke-virtual/range {v26 .. v26}, Lcom/sun/glass/ui/Screen;->getX()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    goto/16 :goto_3

    .line 308
    .local v18, "sx":F
    :cond_7
    move-object/from16 v26, v16

    invoke-virtual/range {v26 .. v26}, Lcom/sun/glass/ui/Screen;->getY()I

    move-result v26

    move/from16 v0, v26

    int-to-float v0, v0

    move/from16 v26, v0

    goto/16 :goto_4

    .line 309
    .local v19, "sy":F
    :cond_8
    const/16 v26, 0x0

    goto/16 :goto_5

    .line 310
    .restart local v14    # "px":I
    :cond_9
    const/16 v26, 0x0

    goto/16 :goto_6

    .line 312
    .end local v14    # "px":I
    .end local v16    # "screen":Lcom/sun/glass/ui/Screen;
    .end local v17    # "screens":Ljava/util/List;, "Ljava/util/List<Lcom/sun/glass/ui/Screen;>;"
    .end local v18    # "sx":F
    .end local v19    # "sy":F
    :cond_a
    const/16 v26, 0x0

    move/from16 v37, v26

    move/from16 v26, v37

    move/from16 v27, v37

    move/from16 v15, v27

    .restart local v15    # "py":I
    move/from16 v14, v26

    .restart local v14    # "px":I
    goto/16 :goto_7

    .line 314
    :cond_b
    move/from16 v26, v7

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    goto/16 :goto_8

    .line 315
    .local v16, "pw":I
    :cond_c
    move/from16 v26, v8

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    goto/16 :goto_9

    .line 316
    .local v17, "ph":I
    :cond_d
    move/from16 v26, v9

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    goto/16 :goto_a

    .line 317
    .local v18, "pcw":I
    :cond_e
    move/from16 v26, v10

    move/from16 v0, v26

    float-to-double v0, v0

    move-wide/from16 v26, v0

    goto :goto_b
.end method

.method setEnabled(Z)V
    .locals 4

    .prologue
    .line 845
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->owner:Lcom/sun/javafx/tk/quantum/GlassStage;

    if-eqz v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->owner:Lcom/sun/javafx/tk/quantum/GlassStage;

    instance-of v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;

    if-eqz v2, :cond_0

    .line 846
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->owner:Lcom/sun/javafx/tk/quantum/GlassStage;

    check-cast v2, Lcom/sun/javafx/tk/quantum/WindowStage;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/WindowStage;->setEnabled(Z)V

    .line 853
    :cond_0
    move v2, v1

    if-eqz v2, :cond_2

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    if-eqz v2, :cond_1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v2}, Lcom/sun/glass/ui/Window;->isClosed()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 854
    .line 862
    :cond_1
    :goto_0
    return-void

    .line 856
    :cond_2
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/tk/quantum/WindowStage;->setPlatformEnabled(Z)V

    .line 857
    move v2, v1

    if-eqz v2, :cond_3

    .line 858
    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->isAppletStage:Z

    if-eqz v2, :cond_3

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/javafx/tk/quantum/WindowStage;->appletWindow:Lcom/sun/javafx/tk/quantum/GlassAppletWindow;

    if-eq v2, v3, :cond_3

    .line 859
    sget-object v2, Lcom/sun/javafx/tk/quantum/WindowStage;->appletWindow:Lcom/sun/javafx/tk/quantum/GlassAppletWindow;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->assertStageOrder()V

    .line 862
    :cond_3
    goto :goto_0
.end method

.method public setFullScreen(Z)V
    .locals 5

    .prologue
    .line 705
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move v1, p1

    .local v1, "fullScreen":Z
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;->isInFullScreen:Z

    move v4, v1

    if-ne v3, v4, :cond_0

    .line 706
    .line 724
    :goto_0
    return-void

    .line 711
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/WindowStage;->isInEventHandler()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 712
    move-object v3, v0

    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/sun/javafx/tk/quantum/WindowStage;->fullScreenFromUserEvent:Z

    .line 715
    :cond_1
    sget-object v3, Lcom/sun/javafx/tk/quantum/WindowStage;->activeFSWindow:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/sun/javafx/tk/quantum/GlassStage;

    move-object v2, v3

    .line 716
    .local v2, "fsWindow":Lcom/sun/javafx/tk/quantum/GlassStage;
    move v3, v1

    if-eqz v3, :cond_2

    move-object v3, v2

    if-eqz v3, :cond_2

    .line 717
    move-object v3, v2

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/tk/quantum/GlassStage;->setFullScreen(Z)V

    .line 719
    :cond_2
    move-object v3, v0

    move v4, v1

    iput-boolean v4, v3, Lcom/sun/javafx/tk/quantum/WindowStage;->isInFullScreen:Z

    .line 720
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/tk/quantum/WindowStage;->applyFullScreen()V

    .line 721
    move v3, v1

    if-eqz v3, :cond_3

    .line 722
    sget-object v3, Lcom/sun/javafx/tk/quantum/WindowStage;->activeFSWindow:Ljava/util/concurrent/atomic/AtomicReference;

    move-object v4, v0

    invoke-virtual {v3, v4}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 724
    :cond_3
    goto :goto_0
.end method

.method public setIconified(Z)V
    .locals 4

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move v1, p1

    .local v1, "iconified":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v2}, Lcom/sun/glass/ui/Window;->isMinimized()Z

    move-result v2

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 540
    .line 543
    :goto_0
    return-void

    .line 542
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Window;->minimize(Z)Z

    move-result v2

    .line 543
    goto :goto_0
.end method

.method public setIcons(Ljava/util/List;)V
    .locals 16

    .prologue
    .line 421
    move-object/from16 v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object/from16 v1, p1

    .local v1, "icons":Ljava/util/List;
    const/16 v10, 0x20

    move v2, v10

    .line 422
    .local v2, "SMALL_ICON_HEIGHT":I
    const/16 v10, 0x20

    move v3, v10

    .line 423
    .local v3, "SMALL_ICON_WIDTH":I
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isMac()Z

    move-result v10

    if-eqz v10, :cond_2

    .line 424
    const/16 v10, 0x80

    move v2, v10

    .line 425
    const/16 v10, 0x80

    move v3, v10

    .line 434
    :cond_0
    :goto_0
    move-object v10, v1

    if-eqz v10, :cond_1

    move-object v10, v1

    invoke-interface {v10}, Ljava/util/List;->size()I

    move-result v10

    const/4 v11, 0x1

    if-ge v10, v11, :cond_4

    .line 435
    :cond_1
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    const/4 v11, 0x0

    invoke-virtual {v10, v11}, Lcom/sun/glass/ui/Window;->setIcon(Lcom/sun/glass/ui/Pixels;)V

    .line 436
    .line 467
    :goto_1
    return-void

    .line 426
    :cond_2
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isWindows()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 427
    const/16 v10, 0x20

    move v2, v10

    .line 428
    const/16 v10, 0x20

    move v3, v10

    goto :goto_0

    .line 429
    :cond_3
    invoke-static {}, Lcom/sun/javafx/PlatformUtil;->isLinux()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 430
    const/16 v10, 0x80

    move v2, v10

    .line 431
    const/16 v10, 0x80

    move v3, v10

    goto :goto_0

    .line 439
    :cond_4
    move-object v10, v1

    move v11, v3

    move v12, v2

    invoke-static {v10, v11, v12}, Lcom/sun/javafx/tk/quantum/WindowStage;->findBestImage(Ljava/util/List;II)Lcom/sun/prism/Image;

    move-result-object v10

    move-object v4, v10

    .line 440
    .local v4, "image":Lcom/sun/prism/Image;
    move-object v10, v4

    if-nez v10, :cond_5

    .line 442
    goto :goto_1

    .line 445
    :cond_5
    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/prism/Image;->getWidth()I

    move-result v10

    move-object v11, v4

    invoke-virtual {v11}, Lcom/sun/prism/Image;->getHeight()I

    move-result v11

    move-object v12, v4

    .line 446
    invoke-virtual {v12}, Lcom/sun/prism/Image;->getBytesPerPixelUnit()I

    move-result v12

    move v13, v3

    move v14, v2

    const/4 v15, 0x1

    .line 445
    invoke-static/range {v10 .. v15}, Lcom/sun/javafx/iio/common/ScalerFactory;->createScaler(IIIIIZ)Lcom/sun/javafx/iio/common/PushbroomScaler;

    move-result-object v10

    move-object v5, v10

    .line 450
    .local v5, "scaler":Lcom/sun/javafx/iio/common/PushbroomScaler;
    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/prism/Image;->getPixelBuffer()Ljava/nio/Buffer;

    move-result-object v10

    check-cast v10, Ljava/nio/ByteBuffer;

    move-object v6, v10

    .line 451
    .local v6, "buf":Ljava/nio/ByteBuffer;
    move-object v10, v6

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->limit()I

    move-result v10

    new-array v10, v10, [B

    move-object v7, v10

    .line 453
    .local v7, "bytes":[B
    move-object v10, v4

    invoke-virtual {v10}, Lcom/sun/prism/Image;->getHeight()I

    move-result v10

    move v8, v10

    .line 457
    .local v8, "iheight":I
    const/4 v10, 0x0

    move v9, v10

    .local v9, "z":I
    :goto_2
    move v10, v9

    move v11, v8

    if-ge v10, v11, :cond_6

    .line 458
    move-object v10, v6

    move v11, v9

    move-object v12, v4

    invoke-virtual {v12}, Lcom/sun/prism/Image;->getScanlineStride()I

    move-result v12

    mul-int/2addr v11, v12

    invoke-virtual {v10, v11}, Ljava/nio/ByteBuffer;->position(I)Ljava/nio/Buffer;

    move-result-object v10

    .line 459
    move-object v10, v6

    move-object v11, v7

    const/4 v12, 0x0

    move-object v13, v4

    invoke-virtual {v13}, Lcom/sun/prism/Image;->getScanlineStride()I

    move-result v13

    invoke-virtual {v10, v11, v12, v13}, Ljava/nio/ByteBuffer;->get([BII)Ljava/nio/ByteBuffer;

    move-result-object v10

    .line 460
    move-object v10, v5

    move-object v11, v7

    const/4 v12, 0x0

    invoke-interface {v10, v11, v12}, Lcom/sun/javafx/iio/common/PushbroomScaler;->putSourceScanline([BI)Z

    move-result v10

    .line 457
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 463
    :cond_6
    move-object v10, v6

    invoke-virtual {v10}, Ljava/nio/ByteBuffer;->rewind()Ljava/nio/Buffer;

    move-result-object v10

    .line 465
    move-object v10, v4

    move-object v11, v5

    invoke-interface {v11}, Lcom/sun/javafx/iio/common/PushbroomScaler;->getDestination()Ljava/nio/ByteBuffer;

    move-result-object v11

    move v12, v3

    move v13, v2

    invoke-virtual {v10, v11, v12, v13}, Lcom/sun/prism/Image;->iconify(Ljava/nio/ByteBuffer;II)Lcom/sun/prism/Image;

    move-result-object v10

    move-object v9, v10

    .line 466
    .local v9, "img":Lcom/sun/prism/Image;
    move-object v10, v0

    iget-object v10, v10, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    move-object v11, v9

    invoke-static {v11}, Lcom/sun/javafx/tk/quantum/PixelUtils;->imageToPixels(Lcom/sun/prism/Image;)Lcom/sun/glass/ui/Pixels;

    move-result-object v11

    invoke-virtual {v10, v11}, Lcom/sun/glass/ui/Window;->setIcon(Lcom/sun/glass/ui/Pixels;)V

    .line 467
    goto/16 :goto_1
.end method

.method public setInEventHandler(Z)V
    .locals 4

    .prologue
    .line 873
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move v1, p1

    .local v1, "inEventHandler":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->inEventHandler:Z

    .line 874
    return-void
.end method

.method final setIsPopup()V
    .locals 3

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->isPopupStage:Z

    .line 135
    return-void
.end method

.method final setIsPrimary()V
    .locals 3

    .prologue
    .line 126
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->isPrimaryStage:Z

    .line 127
    sget-object v1, Lcom/sun/javafx/tk/quantum/WindowStage;->appletWindow:Lcom/sun/javafx/tk/quantum/GlassAppletWindow;

    if-eqz v1, :cond_0

    .line 129
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->isAppletStage:Z

    .line 131
    :cond_0
    return-void
.end method

.method public setMaximized(Z)V
    .locals 4

    .prologue
    .line 546
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move v1, p1

    .local v1, "maximized":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v2}, Lcom/sun/glass/ui/Window;->isMaximized()Z

    move-result v2

    move v3, v1

    if-ne v2, v3, :cond_0

    .line 547
    .line 550
    :goto_0
    return-void

    .line 549
    :cond_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Window;->maximize(Z)Z

    move-result v2

    .line 550
    goto :goto_0
.end method

.method public setMaximumSize(II)V
    .locals 6

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move v1, p1

    .local v1, "maxWidth":I
    move v2, p2

    .local v2, "maxHeight":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/Window;->setMaximumSize(II)V

    .line 339
    return-void
.end method

.method public setMinimumSize(II)V
    .locals 6

    .prologue
    .line 334
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move v1, p1

    .local v1, "minWidth":I
    move v2, p2

    .local v2, "minHeight":I
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    move v4, v1

    move v5, v2

    invoke-virtual {v3, v4, v5}, Lcom/sun/glass/ui/Window;->setMinimumSize(II)V

    .line 335
    return-void
.end method

.method public setOpacity(F)V
    .locals 5

    .prologue
    .line 527
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move v1, p1

    .local v1, "opacity":F
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    move v4, v1

    invoke-virtual {v3, v4}, Lcom/sun/glass/ui/Window;->setAlpha(F)V

    .line 528
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/WindowStage;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v3

    move-object v2, v3

    .line 529
    .local v2, "gs":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v3, v2

    if-eqz v3, :cond_0

    .line 530
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/GlassScene;->entireSceneNeedsRepaint()V

    .line 532
    :cond_0
    return-void
.end method

.method protected setPlatformEnabled(Z)V
    .locals 4

    .prologue
    .line 832
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move v1, p1

    .local v1, "enabled":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Lcom/sun/javafx/tk/quantum/GlassStage;->setPlatformEnabled(Z)V

    .line 833
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Window;->setEnabled(Z)V

    .line 834
    move v2, v1

    if-eqz v2, :cond_1

    .line 836
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v2}, Lcom/sun/glass/ui/Window;->isEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 837
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/WindowStage;->requestToFront()V

    .line 842
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    move-object v2, v0

    invoke-static {v2}, Lcom/sun/javafx/tk/quantum/WindowStage;->removeActiveWindow(Lcom/sun/javafx/tk/quantum/WindowStage;)V

    goto :goto_0
.end method

.method setPlatformWindowClosed()V
    .locals 3

    .prologue
    .line 779
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    .line 780
    return-void
.end method

.method public setRTL(Z)V
    .locals 4

    .prologue
    .line 897
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move v1, p1

    .local v1, "b":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->rtl:Z

    .line 898
    return-void
.end method

.method public setResizable(Z)V
    .locals 4

    .prologue
    .line 568
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move v1, p1

    .local v1, "resizable":Z
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Window;->setResizable(Z)Z

    move-result v2

    .line 570
    return-void
.end method

.method public setScene(Lcom/sun/javafx/tk/TKScene;)V
    .locals 9

    .prologue
    .line 241
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, p1

    .local v1, "scene":Lcom/sun/javafx/tk/TKScene;
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/tk/quantum/WindowStage;->getScene()Lcom/sun/javafx/tk/quantum/GlassScene;

    move-result-object v5

    move-object v2, v5

    .line 242
    .local v2, "oldScene":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v5, v2

    move-object v6, v1

    if-ne v5, v6, :cond_0

    .line 244
    .line 277
    :goto_0
    return-void

    .line 248
    :cond_0
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/tk/quantum/WindowStage;->exitFullScreen()V

    .line 249
    move-object v5, v0

    move-object v6, v1

    invoke-super {v5, v6}, Lcom/sun/javafx/tk/quantum/GlassStage;->setScene(Lcom/sun/javafx/tk/TKScene;)V

    .line 250
    move-object v5, v1

    if-eqz v5, :cond_2

    .line 251
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/tk/quantum/WindowStage;->getViewScene()Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v5

    move-object v3, v5

    .line 252
    .local v3, "newScene":Lcom/sun/javafx/tk/quantum/GlassScene;
    move-object v5, v3

    invoke-virtual {v5}, Lcom/sun/javafx/tk/quantum/GlassScene;->getPlatformView()Lcom/sun/glass/ui/View;

    move-result-object v5

    move-object v4, v5

    .line 253
    .local v4, "view":Lcom/sun/glass/ui/View;
    move-object v5, v0

    move-object v6, v4

    move-object v7, v2

    move-object v8, v3

    invoke-static {v5, v6, v7, v8}, Lcom/sun/javafx/tk/quantum/WindowStage$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/WindowStage;Lcom/sun/glass/ui/View;Lcom/sun/javafx/tk/quantum/GlassScene;Lcom/sun/javafx/tk/quantum/GlassScene;)Ljava/util/function/Supplier;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v5

    .line 259
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/tk/quantum/WindowStage;->requestFocus()V

    .line 260
    .line 273
    .end local v3    # "newScene":Lcom/sun/javafx/tk/quantum/GlassScene;
    .end local v4    # "view":Lcom/sun/glass/ui/View;
    :goto_1
    move-object v5, v2

    if-eqz v5, :cond_1

    .line 274
    move-object v5, v2

    check-cast v5, Lcom/sun/javafx/tk/quantum/ViewScene;

    invoke-virtual {v5}, Lcom/sun/javafx/tk/quantum/ViewScene;->getPainter()Lcom/sun/javafx/tk/quantum/ViewPainter;

    move-result-object v5

    move-object v3, v5

    .line 275
    .local v3, "painter":Lcom/sun/javafx/tk/quantum/ViewPainter;
    invoke-static {}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->getInstance()Lcom/sun/javafx/tk/quantum/QuantumRenderer;

    move-result-object v5

    move-object v6, v3

    iget-object v6, v6, Lcom/sun/javafx/tk/quantum/ViewPainter;->presentable:Lcom/sun/prism/Presentable;

    invoke-virtual {v5, v6}, Lcom/sun/javafx/tk/quantum/QuantumRenderer;->disposePresentable(Lcom/sun/prism/Presentable;)V

    .line 277
    .end local v3    # "painter":Lcom/sun/javafx/tk/quantum/ViewPainter;
    :cond_1
    goto :goto_0

    .line 261
    :cond_2
    move-object v5, v0

    move-object v6, v2

    invoke-static {v5, v6}, Lcom/sun/javafx/tk/quantum/WindowStage$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/WindowStage;Lcom/sun/javafx/tk/quantum/GlassScene;)Ljava/util/function/Supplier;

    move-result-object v5

    invoke-static {v5}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v5

    goto :goto_1
.end method

.method public setTitle(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 470
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/glass/ui/Window;->setTitle(Ljava/lang/String;)V

    .line 471
    return-void
.end method

.method public setVisible(Z)V
    .locals 5

    .prologue
    .line 476
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move v1, p1

    .local v1, "visible":Z
    move v3, v1

    if-nez v3, :cond_0

    .line 477
    move-object v3, v0

    invoke-static {v3}, Lcom/sun/javafx/tk/quantum/WindowStage;->removeActiveWindow(Lcom/sun/javafx/tk/quantum/WindowStage;)V

    .line 478
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;->modality:Ljavafx/stage/Modality;

    sget-object v4, Ljavafx/stage/Modality;->WINDOW_MODAL:Ljavafx/stage/Modality;

    if-ne v3, v4, :cond_3

    .line 479
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;->owner:Lcom/sun/javafx/tk/quantum/GlassStage;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;->owner:Lcom/sun/javafx/tk/quantum/GlassStage;

    instance-of v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;

    if-eqz v3, :cond_0

    .line 480
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;->owner:Lcom/sun/javafx/tk/quantum/GlassStage;

    check-cast v3, Lcom/sun/javafx/tk/quantum/WindowStage;

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/tk/quantum/WindowStage;->setEnabled(Z)V

    .line 495
    :cond_0
    :goto_0
    move-object v3, v0

    move v4, v1

    invoke-static {v3, v4}, Lcom/sun/javafx/tk/quantum/WindowStage$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/tk/quantum/WindowStage;Z)Ljava/util/function/Supplier;

    move-result-object v3

    invoke-static {v3}, Lcom/sun/javafx/tk/quantum/QuantumToolkit;->runWithRenderLock(Ljava/util/function/Supplier;)Ljava/lang/Object;

    move-result-object v3

    .line 506
    move v3, v1

    if-eqz v3, :cond_2

    .line 507
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;->modality:Ljavafx/stage/Modality;

    sget-object v4, Ljavafx/stage/Modality;->WINDOW_MODAL:Ljavafx/stage/Modality;

    if-ne v3, v4, :cond_5

    .line 508
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;->owner:Lcom/sun/javafx/tk/quantum/GlassStage;

    if-eqz v3, :cond_1

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;->owner:Lcom/sun/javafx/tk/quantum/GlassStage;

    instance-of v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;

    if-eqz v3, :cond_1

    .line 509
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;->owner:Lcom/sun/javafx/tk/quantum/GlassStage;

    check-cast v3, Lcom/sun/javafx/tk/quantum/WindowStage;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/tk/quantum/WindowStage;->setEnabled(Z)V

    .line 514
    :cond_1
    :goto_1
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;->isAppletStage:Z

    if-eqz v3, :cond_2

    const/4 v3, 0x0

    sget-object v4, Lcom/sun/javafx/tk/quantum/WindowStage;->appletWindow:Lcom/sun/javafx/tk/quantum/GlassAppletWindow;

    if-eq v3, v4, :cond_2

    .line 515
    sget-object v3, Lcom/sun/javafx/tk/quantum/WindowStage;->appletWindow:Lcom/sun/javafx/tk/quantum/GlassAppletWindow;

    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->assertStageOrder()V

    .line 519
    :cond_2
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/tk/quantum/WindowStage;->applyFullScreen()V

    .line 520
    return-void

    .line 482
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;->modality:Ljavafx/stage/Modality;

    sget-object v4, Ljavafx/stage/Modality;->APPLICATION_MODAL:Ljavafx/stage/Modality;

    if-ne v3, v4, :cond_4

    .line 483
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Lcom/sun/javafx/tk/quantum/WindowStage;->windowsSetEnabled(Z)V

    goto :goto_0

    .line 489
    :cond_4
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;->isPopupStage:Z

    if-nez v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;->owner:Lcom/sun/javafx/tk/quantum/GlassStage;

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;->owner:Lcom/sun/javafx/tk/quantum/GlassStage;

    instance-of v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;

    if-eqz v3, :cond_0

    .line 490
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;->owner:Lcom/sun/javafx/tk/quantum/GlassStage;

    check-cast v3, Lcom/sun/javafx/tk/quantum/WindowStage;

    move-object v2, v3

    .line 491
    .local v2, "ownerStage":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v3, v2

    invoke-virtual {v3}, Lcom/sun/javafx/tk/quantum/WindowStage;->requestToFront()V

    goto :goto_0

    .line 511
    .end local v2    # "ownerStage":Lcom/sun/javafx/tk/quantum/WindowStage;
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/tk/quantum/WindowStage;->modality:Ljavafx/stage/Modality;

    sget-object v4, Ljavafx/stage/Modality;->APPLICATION_MODAL:Ljavafx/stage/Modality;

    if-ne v3, v4, :cond_1

    .line 512
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/tk/quantum/WindowStage;->windowsSetEnabled(Z)V

    goto :goto_1
.end method

.method setWarning(Lcom/sun/javafx/tk/quantum/OverlayWarning;)V
    .locals 4

    .prologue
    .line 696
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, p1

    .local v1, "newWarning":Lcom/sun/javafx/tk/quantum/OverlayWarning;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/tk/quantum/WindowStage;->warning:Lcom/sun/javafx/tk/quantum/OverlayWarning;

    .line 697
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/WindowStage;->getViewScene()Lcom/sun/javafx/tk/quantum/ViewScene;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/quantum/ViewScene;->synchroniseOverlayWarning()V

    .line 698
    return-void
.end method

.method public toBack()V
    .locals 3

    .prologue
    .line 744
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v1}, Lcom/sun/glass/ui/Window;->toBack()V

    .line 745
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->isAppletStage:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sget-object v2, Lcom/sun/javafx/tk/quantum/WindowStage;->appletWindow:Lcom/sun/javafx/tk/quantum/GlassAppletWindow;

    if-eq v1, v2, :cond_0

    .line 746
    sget-object v1, Lcom/sun/javafx/tk/quantum/WindowStage;->appletWindow:Lcom/sun/javafx/tk/quantum/GlassAppletWindow;

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->assertStageOrder()V

    .line 748
    :cond_0
    return-void
.end method

.method public toFront()V
    .locals 3

    .prologue
    .line 751
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v1}, Lcom/sun/glass/ui/Window;->requestFocus()Z

    move-result v1

    .line 752
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v1}, Lcom/sun/glass/ui/Window;->toFront()V

    .line 753
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->isAppletStage:Z

    if-eqz v1, :cond_0

    const/4 v1, 0x0

    sget-object v2, Lcom/sun/javafx/tk/quantum/WindowStage;->appletWindow:Lcom/sun/javafx/tk/quantum/GlassAppletWindow;

    if-eq v1, v2, :cond_0

    .line 754
    sget-object v1, Lcom/sun/javafx/tk/quantum/WindowStage;->appletWindow:Lcom/sun/javafx/tk/quantum/GlassAppletWindow;

    invoke-virtual {v1}, Lcom/sun/javafx/tk/quantum/GlassAppletWindow;->assertStageOrder()V

    .line 756
    :cond_0
    return-void
.end method

.method public ungrabFocus()V
    .locals 2

    .prologue
    .line 806
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/tk/quantum/WindowStage;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/tk/quantum/WindowStage;->platformWindow:Lcom/sun/glass/ui/Window;

    invoke-virtual {v1}, Lcom/sun/glass/ui/Window;->ungrabFocus()V

    .line 807
    return-void
.end method
