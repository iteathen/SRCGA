.class public Ljavafx/stage/Stage;
.super Ljavafx/stage/Window;
.source "Stage.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/stage/Stage$ResizableProperty;
    }
.end annotation


# static fields
.field static final synthetic $assertionsDisabled:Z

.field private static final STAGE_ACCESSOR:Lcom/sun/javafx/stage/StagePeerListener$StageAccessor;

.field private static stages:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/stage/Stage;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private alwaysOnTop:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

.field private fullScreen:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

.field private final fullScreenExitCombination:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/input/KeyCombination;",
            ">;"
        }
    .end annotation
.end field

.field private final fullScreenExitHint:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private iconified:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

.field private icons:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/image/Image;",
            ">;"
        }
    .end annotation
.end field

.field private important:Z

.field private inNestedEventLoop:Z

.field private maxHeight:Ljavafx/beans/property/DoubleProperty;

.field private maxWidth:Ljavafx/beans/property/DoubleProperty;

.field private maximized:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

.field private minHeight:Ljavafx/beans/property/DoubleProperty;

.field private minWidth:Ljavafx/beans/property/DoubleProperty;

.field private modality:Ljavafx/stage/Modality;

.field private owner:Ljavafx/stage/Window;

.field private primary:Z

.field private resizable:Ljavafx/beans/property/BooleanProperty;

.field private securityDialog:Z

.field private style:Ljavafx/stage/StageStyle;

.field private title:Ljavafx/beans/property/StringProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 170
    const-class v0, Ljavafx/stage/Stage;

    invoke-virtual {v0}, Ljava/lang/Class;->desiredAssertionStatus()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    sput-boolean v0, Ljavafx/stage/Stage;->$assertionsDisabled:Z

    .line 174
    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v0

    sput-object v0, Ljavafx/stage/Stage;->stages:Ljavafx/collections/ObservableList;

    .line 177
    new-instance v0, Ljavafx/stage/Stage$1;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/stage/Stage$1;-><init>()V

    invoke-static {v0}, Lcom/sun/javafx/robot/impl/FXRobotHelper;->setStageAccessor(Lcom/sun/javafx/robot/impl/FXRobotHelper$FXRobotStageAccessor;)V

    .line 182
    new-instance v0, Ljavafx/stage/Stage$2;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/stage/Stage$2;-><init>()V

    invoke-static {v0}, Lcom/sun/javafx/stage/StageHelper;->setStageAccessor(Lcom/sun/javafx/stage/StageHelper$StageAccessor;)V

    .line 192
    new-instance v0, Ljavafx/stage/Stage$3;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/stage/Stage$3;-><init>()V

    sput-object v0, Ljavafx/stage/Stage;->STAGE_ACCESSOR:Lcom/sun/javafx/stage/StagePeerListener$StageAccessor;

    return-void

    .line 170
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public constructor <init>()V
    .locals 3

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    sget-object v2, Ljavafx/stage/StageStyle;->DECORATED:Ljavafx/stage/StageStyle;

    invoke-direct {v1, v2}, Ljavafx/stage/Stage;-><init>(Ljavafx/stage/StageStyle;)V

    .line 228
    return-void
.end method

.method public constructor <init>(Ljavafx/stage/StageStyle;)V
    .locals 9

    .prologue
    .line 239
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, p1

    .local v1, "style":Ljavafx/stage/StageStyle;
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/stage/Window;-><init>()V

    .line 172
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/stage/Stage;->inNestedEventLoop:Z

    .line 262
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/stage/Stage;->primary:Z

    .line 267
    move-object v2, v0

    const/4 v3, 0x0

    iput-boolean v3, v2, Ljavafx/stage/Stage;->securityDialog:Z

    .line 332
    move-object v2, v0

    const/4 v3, 0x1

    iput-boolean v3, v2, Ljavafx/stage/Stage;->important:Z

    .line 507
    move-object v2, v0

    sget-object v3, Ljavafx/stage/Modality;->NONE:Ljavafx/stage/Modality;

    iput-object v3, v2, Ljavafx/stage/Stage;->modality:Ljavafx/stage/Modality;

    .line 544
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/stage/Stage;->owner:Ljavafx/stage/Window;

    .line 700
    move-object v2, v0

    new-instance v3, Ljavafx/stage/Stage$4;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    invoke-direct {v4, v5}, Ljavafx/stage/Stage$4;-><init>(Ljavafx/stage/Stage;)V

    iput-object v3, v2, Ljavafx/stage/Stage;->icons:Ljavafx/collections/ObservableList;

    .line 1251
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    const-string v6, "fullScreenExitCombination"

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v3, v2, Ljavafx/stage/Stage;->fullScreenExitCombination:Ljavafx/beans/property/ObjectProperty;

    .line 1290
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    const-string v6, "fullScreenExitHint"

    const/4 v7, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    iput-object v3, v2, Ljavafx/stage/Stage;->fullScreenExitHint:Ljavafx/beans/property/ObjectProperty;

    .line 241
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 244
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/stage/Stage;->initStyle(Ljavafx/stage/StageStyle;)V

    .line 245
    return-void
.end method

.method static synthetic access$000()Ljavafx/collections/ObservableList;
    .locals 1

    .prologue
    .line 170
    sget-object v0, Ljavafx/stage/Stage;->stages:Ljavafx/collections/ObservableList;

    return-object v0
.end method

.method static synthetic access$100(Ljavafx/stage/Stage;)Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    .locals 2

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/Stage;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/stage/Stage;->iconifiedPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/stage/Stage;
    return-object v0
.end method

.method static synthetic access$200(Ljavafx/stage/Stage;)Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    .locals 2

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/Stage;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/stage/Stage;->maximizedPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/stage/Stage;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/stage/Stage;)Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    .locals 2

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/Stage;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/stage/Stage;->fullScreenPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/stage/Stage;
    return-object v0
.end method

.method static synthetic access$400(Ljavafx/stage/Stage;)Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    .locals 2

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/Stage;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/stage/Stage;->alwaysOnTopPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/stage/Stage;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/stage/Stage;)Ljavafx/collections/ObservableList;
    .locals 2

    .prologue
    .line 170
    move-object v0, p0

    .local v0, "x0":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->icons:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/stage/Stage;
    return-object v0
.end method

.method private alwaysOnTopPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    .locals 7

    .prologue
    .line 881
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->alwaysOnTop:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    .line 882
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "alwaysOnTop"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/stage/Stage;->alwaysOnTop:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 884
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->alwaysOnTop:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return-object v0
.end method

.method private fullScreenPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    .locals 7

    .prologue
    .line 687
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->fullScreen:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    .line 688
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "fullScreen"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/stage/Stage;->fullScreen:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 690
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->fullScreen:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return-object v0
.end method

.method private final iconifiedPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    .locals 7

    .prologue
    .line 797
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->iconified:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    .line 798
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "iconified"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/stage/Stage;->iconified:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 800
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->iconified:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return-object v0
.end method

.method private isImportant()Z
    .locals 2

    .prologue
    .line 348
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/stage/Stage;->important:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return v0
.end method

.method private final maximizedPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;
    .locals 7

    .prologue
    .line 835
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->maximized:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    .line 836
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "maximized"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/stage/Stage;->maximized:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    .line 838
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->maximized:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return-object v0
.end method


# virtual methods
.method public final alwaysOnTopProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 877
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/stage/Stage;->alwaysOnTopPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return-object v0
.end method

.method public close()V
    .locals 2

    .prologue
    .line 1242
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/stage/Stage;->hide()V

    .line 1243
    return-void
.end method

.method public final fullScreenExitHintProperty()Ljavafx/beans/property/ObjectProperty;
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
    .line 1315
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->fullScreenExitHint:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return-object v0
.end method

.method public final fullScreenExitKeyProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/input/KeyCombination;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1287
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->fullScreenExitCombination:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return-object v0
.end method

.method public final fullScreenProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 683
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/stage/Stage;->fullScreenPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return-object v0
.end method

.method public final getFullScreenExitHint()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1311
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->fullScreenExitHint:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return-object v0
.end method

.method public final getFullScreenExitKeyCombination()Ljavafx/scene/input/KeyCombination;
    .locals 2

    .prologue
    .line 1278
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->fullScreenExitCombination:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/input/KeyCombination;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return-object v0
.end method

.method public final getIcons()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/image/Image;",
            ">;"
        }
    .end annotation

    .prologue
    .line 719
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->icons:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return-object v0
.end method

.method public final getMaxHeight()D
    .locals 4

    .prologue
    .line 1103
    move-object v1, p0

    .local v1, "this":Ljavafx/stage/Stage;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Stage;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/stage/Stage;
    return-wide v1

    .restart local v1    # "this":Ljavafx/stage/Stage;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Stage;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMaxWidth()D
    .locals 4

    .prologue
    .line 1058
    move-object v1, p0

    .local v1, "this":Ljavafx/stage/Stage;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Stage;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide v2, 0x7fefffffffffffffL    # Double.MAX_VALUE

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/stage/Stage;
    return-wide v1

    .restart local v1    # "this":Ljavafx/stage/Stage;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Stage;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMinHeight()D
    .locals 4

    .prologue
    .line 1012
    move-object v1, p0

    .local v1, "this":Ljavafx/stage/Stage;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Stage;->minHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/stage/Stage;
    return-wide v1

    .restart local v1    # "this":Ljavafx/stage/Stage;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Stage;->minHeight:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getMinWidth()D
    .locals 4

    .prologue
    .line 967
    move-object v1, p0

    .local v1, "this":Ljavafx/stage/Stage;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Stage;->minWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v1, v2

    .end local v1    # "this":Ljavafx/stage/Stage;
    return-wide v1

    .restart local v1    # "this":Ljavafx/stage/Stage;
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Stage;->minWidth:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    goto :goto_0
.end method

.method public final getModality()Ljavafx/stage/Modality;
    .locals 2

    .prologue
    .line 541
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->modality:Ljavafx/stage/Modality;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return-object v0
.end method

.method public final getOwner()Ljavafx/stage/Window;
    .locals 2

    .prologue
    .line 582
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->owner:Ljavafx/stage/Window;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return-object v0
.end method

.method public final getStyle()Ljavafx/stage/StageStyle;
    .locals 2

    .prologue
    .line 504
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->style:Ljavafx/stage/StageStyle;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return-object v0
.end method

.method public final getTitle()Ljava/lang/String;
    .locals 2

    .prologue
    .line 734
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->title:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return-object v0

    .restart local v0    # "this":Ljavafx/stage/Stage;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->title:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    goto :goto_0
.end method

.method getWindowOwner()Ljavafx/stage/Window;
    .locals 2

    .prologue
    .line 1247
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/stage/Stage;->getOwner()Ljavafx/stage/Window;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return-object v0
.end method

.method public final iconifiedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 793
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/stage/Stage;->iconifiedPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return-object v0
.end method

.method public impl_getMXWindowType()Ljava/lang/String;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 329
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/stage/Stage;->primary:Z

    if-eqz v1, :cond_0

    const-string v1, "PrimaryStage"

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return-object v0

    .restart local v0    # "this":Ljavafx/stage/Stage;
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public impl_setImportant(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 344
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move v1, p1

    .local v1, "important":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/stage/Stage;->important:Z

    .line 345
    return-void
.end method

.method public impl_setPrimary(Z)V
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 309
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move v1, p1

    .local v1, "primary":Z
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/stage/Stage;->primary:Z

    .line 310
    return-void
.end method

.method protected impl_visibleChanged(Z)V
    .locals 9
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1183
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move v1, p1

    .local v1, "value":Z
    move-object v5, v0

    move v6, v1

    invoke-super {v5, v6}, Ljavafx/stage/Window;->impl_visibleChanged(Z)V

    .line 1185
    move v5, v1

    if-eqz v5, :cond_1

    .line 1187
    move-object v5, v0

    iget-object v5, v5, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move-object v6, v0

    invoke-direct {v6}, Ljavafx/stage/Stage;->isImportant()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/sun/javafx/tk/TKStage;->setImportant(Z)V

    .line 1188
    move-object v5, v0

    iget-object v5, v5, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/stage/Stage;->isResizable()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/sun/javafx/tk/TKStage;->setResizable(Z)V

    .line 1189
    move-object v5, v0

    iget-object v5, v5, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/stage/Stage;->isFullScreen()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/sun/javafx/tk/TKStage;->setFullScreen(Z)V

    .line 1190
    move-object v5, v0

    iget-object v5, v5, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/stage/Stage;->isAlwaysOnTop()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/sun/javafx/tk/TKStage;->setAlwaysOnTop(Z)V

    .line 1191
    move-object v5, v0

    iget-object v5, v5, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/stage/Stage;->isIconified()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/sun/javafx/tk/TKStage;->setIconified(Z)V

    .line 1192
    move-object v5, v0

    iget-object v5, v5, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/stage/Stage;->isMaximized()Z

    move-result v6

    invoke-interface {v5, v6}, Lcom/sun/javafx/tk/TKStage;->setMaximized(Z)V

    .line 1193
    move-object v5, v0

    iget-object v5, v5, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/stage/Stage;->getTitle()Ljava/lang/String;

    move-result-object v6

    invoke-interface {v5, v6}, Lcom/sun/javafx/tk/TKStage;->setTitle(Ljava/lang/String;)V

    .line 1195
    new-instance v5, Ljava/util/ArrayList;

    move-object v8, v5

    move-object v5, v8

    move-object v6, v8

    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    move-object v2, v5

    .line 1196
    .local v2, "platformImages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    move-object v5, v0

    iget-object v5, v5, Ljavafx/stage/Stage;->icons:Ljavafx/collections/ObservableList;

    invoke-interface {v5}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v5

    move-object v3, v5

    :goto_0
    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/scene/image/Image;

    move-object v4, v5

    .line 1197
    .local v4, "icon":Ljavafx/scene/image/Image;
    move-object v5, v2

    move-object v6, v4

    invoke-virtual {v6}, Ljavafx/scene/image/Image;->impl_getPlatformImage()Ljava/lang/Object;

    move-result-object v6

    invoke-interface {v5, v6}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1198
    goto :goto_0

    .line 1199
    .end local v4    # "icon":Ljavafx/scene/image/Image;
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-eqz v5, :cond_1

    .line 1200
    move-object v5, v0

    iget-object v5, v5, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move-object v6, v2

    invoke-interface {v5, v6}, Lcom/sun/javafx/tk/TKStage;->setIcons(Ljava/util/List;)V

    .line 1204
    .end local v2    # "platformImages":Ljava/util/List;, "Ljava/util/List<Ljava/lang/Object;>;"
    :cond_1
    move v5, v1

    if-nez v5, :cond_2

    .line 1206
    sget-object v5, Ljavafx/stage/Stage;->stages:Ljavafx/collections/ObservableList;

    move-object v6, v0

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v5

    .line 1209
    :cond_2
    move v5, v1

    if-nez v5, :cond_3

    move-object v5, v0

    iget-boolean v5, v5, Ljavafx/stage/Stage;->inNestedEventLoop:Z

    if-eqz v5, :cond_3

    .line 1210
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Ljavafx/stage/Stage;->inNestedEventLoop:Z

    .line 1211
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v5

    move-object v6, v0

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/tk/Toolkit;->exitNestedEventLoop(Ljava/lang/Object;Ljava/lang/Object;)V

    .line 1213
    :cond_3
    return-void
.end method

.method protected impl_visibleChanging(Z)V
    .locals 22
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 1143
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/stage/Stage;
    move/from16 v2, p1

    .local v2, "value":Z
    move-object v11, v1

    move v12, v2

    invoke-super {v11, v12}, Ljavafx/stage/Window;->impl_visibleChanging(Z)V

    .line 1144
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v11

    move-object v3, v11

    .line 1145
    .local v3, "toolkit":Lcom/sun/javafx/tk/Toolkit;
    move v11, v2

    if-eqz v11, :cond_1

    move-object v11, v1

    iget-object v11, v11, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-nez v11, :cond_1

    .line 1147
    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/stage/Stage;->getOwner()Ljavafx/stage/Window;

    move-result-object v11

    move-object v4, v11

    .line 1148
    .local v4, "window":Ljavafx/stage/Window;
    move-object v11, v4

    if-nez v11, :cond_2

    const/4 v11, 0x0

    :goto_0
    move-object v5, v11

    .line 1149
    .local v5, "tkStage":Lcom/sun/javafx/tk/TKStage;
    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/stage/Stage;->getScene()Ljavafx/scene/Scene;

    move-result-object v11

    move-object v6, v11

    .line 1150
    .local v6, "scene":Ljavafx/scene/Scene;
    move-object v11, v6

    if-eqz v11, :cond_3

    move-object v11, v6

    invoke-virtual {v11}, Ljavafx/scene/Scene;->getEffectiveNodeOrientation()Ljavafx/geometry/NodeOrientation;

    move-result-object v11

    sget-object v12, Ljavafx/geometry/NodeOrientation;->RIGHT_TO_LEFT:Ljavafx/geometry/NodeOrientation;

    if-ne v11, v12, :cond_3

    const/4 v11, 0x1

    :goto_1
    move v7, v11

    .line 1152
    .local v7, "rtl":Z
    move-object v11, v1

    invoke-virtual {v11}, Ljavafx/stage/Stage;->getStyle()Ljavafx/stage/StageStyle;

    move-result-object v11

    move-object v8, v11

    .line 1153
    .local v8, "stageStyle":Ljavafx/stage/StageStyle;
    move-object v11, v8

    sget-object v12, Ljavafx/stage/StageStyle;->TRANSPARENT:Ljavafx/stage/StageStyle;

    if-ne v11, v12, :cond_0

    .line 1155
    invoke-static {}, Ljava/lang/System;->getSecurityManager()Ljava/lang/SecurityManager;

    move-result-object v11

    move-object v9, v11

    .line 1156
    .local v9, "securityManager":Ljava/lang/SecurityManager;
    move-object v11, v9

    if-eqz v11, :cond_0

    .line 1158
    move-object v11, v9

    :try_start_0
    new-instance v12, Ljava/security/AllPermission;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    invoke-direct {v13}, Ljava/security/AllPermission;-><init>()V

    invoke-virtual {v11, v12}, Ljava/lang/SecurityManager;->checkPermission(Ljava/security/Permission;)V
    :try_end_0
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1161
    .line 1164
    .end local v9    # "securityManager":Ljava/lang/SecurityManager;
    :cond_0
    :goto_2
    move-object v11, v1

    move-object v12, v3

    move-object v13, v1

    move-object v14, v1

    invoke-virtual {v14}, Ljavafx/stage/Stage;->isSecurityDialog()Z

    move-result v14

    move-object v15, v8

    move-object/from16 v16, v1

    invoke-virtual/range {v16 .. v16}, Ljavafx/stage/Stage;->isPrimary()Z

    move-result v16

    move-object/from16 v17, v1

    .line 1165
    invoke-virtual/range {v17 .. v17}, Ljavafx/stage/Stage;->getModality()Ljavafx/stage/Modality;

    move-result-object v17

    move-object/from16 v18, v5

    move/from16 v19, v7

    move-object/from16 v20, v1

    move-object/from16 v0, v20

    iget-object v0, v0, Ljavafx/stage/Stage;->acc:Ljava/security/AccessControlContext;

    move-object/from16 v20, v0

    .line 1164
    invoke-virtual/range {v12 .. v20}, Lcom/sun/javafx/tk/Toolkit;->createTKStage(Ljavafx/stage/Window;ZLjavafx/stage/StageStyle;ZLjavafx/stage/Modality;Lcom/sun/javafx/tk/TKStage;ZLjava/security/AccessControlContext;)Lcom/sun/javafx/tk/TKStage;

    move-result-object v12

    iput-object v12, v11, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    .line 1166
    move-object v11, v1

    iget-object v11, v11, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/stage/Stage;->getMinWidth()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v12

    double-to-int v12, v12

    move-object v13, v1

    .line 1167
    invoke-virtual {v13}, Ljavafx/stage/Stage;->getMinHeight()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v13

    double-to-int v13, v13

    .line 1166
    invoke-interface {v11, v12, v13}, Lcom/sun/javafx/tk/TKStage;->setMinimumSize(II)V

    .line 1168
    move-object v11, v1

    iget-object v11, v11, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move-object v12, v1

    invoke-virtual {v12}, Ljavafx/stage/Stage;->getMaxWidth()D

    move-result-wide v12

    invoke-static {v12, v13}, Ljava/lang/Math;->floor(D)D

    move-result-wide v12

    double-to-int v12, v12

    move-object v13, v1

    .line 1169
    invoke-virtual {v13}, Ljavafx/stage/Stage;->getMaxHeight()D

    move-result-wide v13

    invoke-static {v13, v14}, Ljava/lang/Math;->floor(D)D

    move-result-wide v13

    double-to-int v13, v13

    .line 1168
    invoke-interface {v11, v12, v13}, Lcom/sun/javafx/tk/TKStage;->setMaximumSize(II)V

    .line 1170
    move-object v11, v1

    new-instance v12, Lcom/sun/javafx/stage/StagePeerListener;

    move-object/from16 v21, v12

    move-object/from16 v12, v21

    move-object/from16 v13, v21

    move-object v14, v1

    sget-object v15, Ljavafx/stage/Stage;->STAGE_ACCESSOR:Lcom/sun/javafx/stage/StagePeerListener$StageAccessor;

    invoke-direct {v13, v14, v15}, Lcom/sun/javafx/stage/StagePeerListener;-><init>(Ljavafx/stage/Stage;Lcom/sun/javafx/stage/StagePeerListener$StageAccessor;)V

    iput-object v12, v11, Ljavafx/stage/Stage;->peerListener:Lcom/sun/javafx/stage/WindowPeerListener;

    .line 1172
    sget-object v11, Ljavafx/stage/Stage;->stages:Ljavafx/collections/ObservableList;

    move-object v12, v1

    invoke-interface {v11, v12}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v11

    .line 1174
    .end local v4    # "window":Ljavafx/stage/Window;
    .end local v5    # "tkStage":Lcom/sun/javafx/tk/TKStage;
    .end local v6    # "scene":Ljavafx/scene/Scene;
    .end local v7    # "rtl":Z
    .end local v8    # "stageStyle":Ljavafx/stage/StageStyle;
    :cond_1
    return-void

    .line 1148
    .restart local v4    # "window":Ljavafx/stage/Window;
    :cond_2
    move-object v11, v4

    invoke-virtual {v11}, Ljavafx/stage/Window;->impl_getPeer()Lcom/sun/javafx/tk/TKStage;

    move-result-object v11

    goto/16 :goto_0

    .line 1150
    .restart local v5    # "tkStage":Lcom/sun/javafx/tk/TKStage;
    .restart local v6    # "scene":Ljavafx/scene/Scene;
    :cond_3
    const/4 v11, 0x0

    goto/16 :goto_1

    .line 1159
    .restart local v7    # "rtl":Z
    .restart local v8    # "stageStyle":Ljavafx/stage/StageStyle;
    .restart local v9    # "securityManager":Ljava/lang/SecurityManager;
    :catch_0
    move-exception v11

    move-object v10, v11

    .line 1160
    .local v10, "e":Ljava/lang/SecurityException;
    sget-object v11, Ljavafx/stage/StageStyle;->UNDECORATED:Ljavafx/stage/StageStyle;

    move-object v8, v11

    goto/16 :goto_2
.end method

.method public final initModality(Ljavafx/stage/Modality;)V
    .locals 6

    .prologue
    .line 524
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, p1

    .local v1, "modality":Ljavafx/stage/Modality;
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/stage/Stage;->hasBeenVisible:Z

    if-eqz v2, :cond_0

    .line 525
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Cannot set modality once stage has been set visible"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 528
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/Stage;->isPrimary()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 529
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Cannot set modality for the primary stage"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 532
    :cond_1
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/Stage;->modality:Ljavafx/stage/Modality;

    .line 533
    return-void
.end method

.method public final initOwner(Ljavafx/stage/Window;)V
    .locals 7

    .prologue
    .line 560
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, p1

    .local v1, "owner":Ljavafx/stage/Window;
    move-object v3, v0

    iget-boolean v3, v3, Ljavafx/stage/Stage;->hasBeenVisible:Z

    if-eqz v3, :cond_0

    .line 561
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Cannot set owner once stage has been set visible"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 564
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/Stage;->isPrimary()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 565
    new-instance v3, Ljava/lang/IllegalStateException;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    const-string v5, "Cannot set owner for the primary stage"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 568
    :cond_1
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/stage/Stage;->owner:Ljavafx/stage/Window;

    .line 570
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/Stage;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    move-object v2, v3

    .line 571
    .local v2, "sceneValue":Ljavafx/scene/Scene;
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 572
    move-object v3, v2

    invoke-static {v3}, Lcom/sun/javafx/scene/SceneHelper;->parentEffectiveOrientationInvalidated(Ljavafx/scene/Scene;)V

    .line 574
    :cond_2
    return-void
.end method

.method final initSecurityDialog(Z)V
    .locals 6

    .prologue
    .line 285
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move v1, p1

    .local v1, "securityDialog":Z
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/stage/Stage;->hasBeenVisible:Z

    if-eqz v2, :cond_0

    .line 286
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Cannot set securityDialog once stage has been set visible"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 289
    :cond_0
    move-object v2, v0

    move v3, v1

    iput-boolean v3, v2, Ljavafx/stage/Stage;->securityDialog:Z

    .line 290
    return-void
.end method

.method public final initStyle(Ljavafx/stage/StageStyle;)V
    .locals 6

    .prologue
    .line 492
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, p1

    .local v1, "style":Ljavafx/stage/StageStyle;
    move-object v2, v0

    iget-boolean v2, v2, Ljavafx/stage/Stage;->hasBeenVisible:Z

    if-eqz v2, :cond_0

    .line 493
    new-instance v2, Ljava/lang/IllegalStateException;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    const-string v4, "Cannot set style once stage has been set visible"

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 495
    :cond_0
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/stage/Stage;->style:Ljavafx/stage/StageStyle;

    .line 496
    return-void
.end method

.method public final isAlwaysOnTop()Z
    .locals 2

    .prologue
    .line 873
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->alwaysOnTop:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return v0

    .restart local v0    # "this":Ljavafx/stage/Stage;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->alwaysOnTop:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isFullScreen()Z
    .locals 2

    .prologue
    .line 679
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->fullScreen:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return v0

    .restart local v0    # "this":Ljavafx/stage/Stage;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->fullScreen:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isIconified()Z
    .locals 2

    .prologue
    .line 789
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->iconified:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return v0

    .restart local v0    # "this":Ljavafx/stage/Stage;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->iconified:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final isMaximized()Z
    .locals 2

    .prologue
    .line 827
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->maximized:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return v0

    .restart local v0    # "this":Ljavafx/stage/Stage;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->maximized:Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->get()Z

    move-result v1

    goto :goto_0
.end method

.method isPrimary()Z
    .locals 2

    .prologue
    .line 319
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/stage/Stage;->primary:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return v0
.end method

.method public final isResizable()Z
    .locals 2

    .prologue
    .line 910
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->resizable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return v0

    .restart local v0    # "this":Ljavafx/stage/Stage;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->resizable:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method final isSecurityDialog()Z
    .locals 2

    .prologue
    .line 298
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/stage/Stage;->securityDialog:Z

    move v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return v0
.end method

.method public final maxHeightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 1107
    move-object v1, p0

    .local v1, "this":Ljavafx/stage/Stage;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Stage;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 1108
    move-object v2, v1

    new-instance v3, Ljavafx/stage/Stage$9;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-direct {v4, v5, v6, v7}, Ljavafx/stage/Stage$9;-><init>(Ljavafx/stage/Stage;D)V

    iput-object v3, v2, Ljavafx/stage/Stage;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    .line 1133
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Stage;->maxHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/stage/Stage;
    return-object v1
.end method

.method public final maxWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 1062
    move-object v1, p0

    .local v1, "this":Ljavafx/stage/Stage;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Stage;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 1063
    move-object v2, v1

    new-instance v3, Ljavafx/stage/Stage$8;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide v6, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-direct {v4, v5, v6, v7}, Ljavafx/stage/Stage$8;-><init>(Ljavafx/stage/Stage;D)V

    iput-object v3, v2, Ljavafx/stage/Stage;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    .line 1087
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Stage;->maxWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/stage/Stage;
    return-object v1
.end method

.method public final maximizedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;
    .locals 2

    .prologue
    .line 831
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/stage/Stage;->maximizedPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->getReadOnlyProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return-object v0
.end method

.method public final minHeightProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 1016
    move-object v1, p0

    .local v1, "this":Ljavafx/stage/Stage;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Stage;->minHeight:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 1017
    move-object v2, v1

    new-instance v3, Ljavafx/stage/Stage$7;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/stage/Stage$7;-><init>(Ljavafx/stage/Stage;D)V

    iput-object v3, v2, Ljavafx/stage/Stage;->minHeight:Ljavafx/beans/property/DoubleProperty;

    .line 1042
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Stage;->minHeight:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/stage/Stage;
    return-object v1
.end method

.method public final minWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 9

    .prologue
    .line 971
    move-object v1, p0

    .local v1, "this":Ljavafx/stage/Stage;
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Stage;->minWidth:Ljavafx/beans/property/DoubleProperty;

    if-nez v2, :cond_0

    .line 972
    move-object v2, v1

    new-instance v3, Ljavafx/stage/Stage$6;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    const-wide/16 v6, 0x0

    invoke-direct {v4, v5, v6, v7}, Ljavafx/stage/Stage$6;-><init>(Ljavafx/stage/Stage;D)V

    iput-object v3, v2, Ljavafx/stage/Stage;->minWidth:Ljavafx/beans/property/DoubleProperty;

    .line 996
    :cond_0
    move-object v2, v1

    iget-object v2, v2, Ljavafx/stage/Stage;->minWidth:Ljavafx/beans/property/DoubleProperty;

    move-object v1, v2

    .end local v1    # "this":Ljavafx/stage/Stage;
    return-object v1
.end method

.method public final resizableProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 6

    .prologue
    .line 914
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->resizable:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 915
    move-object v1, v0

    new-instance v2, Ljavafx/stage/Stage$ResizableProperty;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/stage/Stage$ResizableProperty;-><init>(Ljavafx/stage/Stage;)V

    iput-object v2, v1, Ljavafx/stage/Stage;->resizable:Ljavafx/beans/property/BooleanProperty;

    .line 917
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->resizable:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return-object v0
.end method

.method public final setAlwaysOnTop(Z)V
    .locals 4

    .prologue
    .line 866
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/stage/Stage;->alwaysOnTopPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 867
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-eqz v2, :cond_0

    .line 868
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/TKStage;->setAlwaysOnTop(Z)V

    .line 870
    :cond_0
    return-void
.end method

.method public final setFullScreen(Z)V
    .locals 4

    .prologue
    .line 672
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move v1, p1

    .local v1, "value":Z
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 673
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/stage/Stage;->fullScreenPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 674
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-eqz v2, :cond_0

    .line 675
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/TKStage;->setFullScreen(Z)V

    .line 676
    :cond_0
    return-void
.end method

.method public final setFullScreenExitHint(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 1307
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/Stage;->fullScreenExitHint:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1308
    return-void
.end method

.method public final setFullScreenExitKeyCombination(Ljavafx/scene/input/KeyCombination;)V
    .locals 4

    .prologue
    .line 1269
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, p1

    .local v1, "keyCombination":Ljavafx/scene/input/KeyCombination;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/Stage;->fullScreenExitCombination:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 1270
    return-void
.end method

.method public final setIconified(Z)V
    .locals 4

    .prologue
    .line 783
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/stage/Stage;->iconifiedPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 784
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-eqz v2, :cond_0

    .line 785
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/TKStage;->setIconified(Z)V

    .line 786
    :cond_0
    return-void
.end method

.method public final setMaxHeight(D)V
    .locals 7

    .prologue
    .line 1099
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/Stage;->maxHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 1100
    return-void
.end method

.method public final setMaxWidth(D)V
    .locals 7

    .prologue
    .line 1054
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/Stage;->maxWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 1055
    return-void
.end method

.method public final setMaximized(Z)V
    .locals 4

    .prologue
    .line 821
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/stage/Stage;->maximizedPropertyImpl()Ljavafx/beans/property/ReadOnlyBooleanWrapper;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ReadOnlyBooleanWrapper;->set(Z)V

    .line 822
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-eqz v2, :cond_0

    .line 823
    move-object v2, v0

    iget-object v2, v2, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    move v3, v1

    invoke-interface {v2, v3}, Lcom/sun/javafx/tk/TKStage;->setMaximized(Z)V

    .line 824
    :cond_0
    return-void
.end method

.method public final setMinHeight(D)V
    .locals 7

    .prologue
    .line 1008
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/Stage;->minHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 1009
    return-void
.end method

.method public final setMinWidth(D)V
    .locals 7

    .prologue
    .line 963
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/stage/Stage;->minWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 964
    return-void
.end method

.method public final setResizable(Z)V
    .locals 4

    .prologue
    .line 906
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/Stage;->resizableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 907
    return-void
.end method

.method public final setScene(Ljavafx/scene/Scene;)V
    .locals 4

    .prologue
    .line 251
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Scene;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v2

    invoke-virtual {v2}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 252
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/stage/Window;->setScene(Ljavafx/scene/Scene;)V

    .line 253
    return-void
.end method

.method public final setTitle(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 730
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, p1

    .local v1, "value":Ljava/lang/String;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/stage/Stage;->titleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 731
    return-void
.end method

.method public final show()V
    .locals 2

    .prologue
    .line 259
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    invoke-super {v1}, Ljavafx/stage/Window;->show()V

    .line 260
    return-void
.end method

.method public showAndWait()V
    .locals 5

    .prologue
    .line 453
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/tk/Toolkit;->checkFxUserThread()V

    .line 455
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/stage/Stage;->isPrimary()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 456
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Cannot call this method on primary stage"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 459
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/stage/Stage;->isShowing()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 460
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "Stage already visible"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 463
    :cond_1
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    invoke-virtual {v1}, Lcom/sun/javafx/tk/Toolkit;->canStartNestedEventLoop()Z

    move-result v1

    if-nez v1, :cond_2

    .line 464
    new-instance v1, Ljava/lang/IllegalStateException;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    const-string v3, "showAndWait is not allowed during animation or layout processing"

    invoke-direct {v2, v3}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 470
    :cond_2
    sget-boolean v1, Ljavafx/stage/Stage;->$assertionsDisabled:Z

    if-nez v1, :cond_3

    move-object v1, v0

    iget-boolean v1, v1, Ljavafx/stage/Stage;->inNestedEventLoop:Z

    if-eqz v1, :cond_3

    new-instance v1, Ljava/lang/AssertionError;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/AssertionError;-><init>()V

    throw v1

    .line 472
    :cond_3
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/stage/Stage;->show()V

    .line 473
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Ljavafx/stage/Stage;->inNestedEventLoop:Z

    .line 474
    invoke-static {}, Lcom/sun/javafx/tk/Toolkit;->getToolkit()Lcom/sun/javafx/tk/Toolkit;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/tk/Toolkit;->enterNestedEventLoop(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .line 475
    return-void
.end method

.method public final titleProperty()Ljavafx/beans/property/StringProperty;
    .locals 6

    .prologue
    .line 738
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->title:Ljavafx/beans/property/StringProperty;

    if-nez v1, :cond_0

    .line 739
    move-object v1, v0

    new-instance v2, Ljavafx/stage/Stage$5;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/stage/Stage$5;-><init>(Ljavafx/stage/Stage;)V

    iput-object v2, v1, Ljavafx/stage/Stage;->title:Ljavafx/beans/property/StringProperty;

    .line 759
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->title:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/stage/Stage;
    return-object v0
.end method

.method public toBack()V
    .locals 2

    .prologue
    .line 1232
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-eqz v1, :cond_0

    .line 1233
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    invoke-interface {v1}, Lcom/sun/javafx/tk/TKStage;->toBack()V

    .line 1235
    :cond_0
    return-void
.end method

.method public toFront()V
    .locals 2

    .prologue
    .line 1220
    move-object v0, p0

    .local v0, "this":Ljavafx/stage/Stage;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    if-eqz v1, :cond_0

    .line 1221
    move-object v1, v0

    iget-object v1, v1, Ljavafx/stage/Stage;->impl_peer:Lcom/sun/javafx/tk/TKStage;

    invoke-interface {v1}, Lcom/sun/javafx/tk/TKStage;->toFront()V

    .line 1223
    :cond_0
    return-void
.end method
