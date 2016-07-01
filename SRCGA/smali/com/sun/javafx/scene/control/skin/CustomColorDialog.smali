.class public Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
.super Ljavafx/scene/layout/HBox;
.source "CustomColorDialog.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;,
        Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    }
.end annotation


# instance fields
.field private colorRectPane:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

.field private controlsPane:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;

.field private currentColorProperty:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation
.end field

.field private customColorProperty:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation
.end field

.field private customScene:Ljavafx/scene/Scene;

.field private final dialog:Ljavafx/stage/Stage;

.field private final keyEventListener:Ljavafx/event/EventHandler;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/scene/input/KeyEvent;",
            ">;"
        }
    .end annotation
.end field

.field private onCancel:Ljava/lang/Runnable;

.field private onSave:Ljava/lang/Runnable;

.field private onUse:Ljava/lang/Runnable;

.field private positionAdjuster:Ljavafx/beans/InvalidationListener;

.field private webField:Lcom/sun/javafx/scene/control/skin/WebColorField;


# direct methods
.method public constructor <init>(Ljavafx/stage/Window;)V
    .locals 9

    .prologue
    .line 72
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, p1

    .local v1, "owner":Ljavafx/stage/Window;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/layout/HBox;-><init>()V

    .line 59
    move-object v3, v0

    new-instance v4, Ljavafx/stage/Stage;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    invoke-direct {v5}, Ljavafx/stage/Stage;-><init>()V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    .line 63
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sget-object v6, Ljavafx/scene/paint/Color;->WHITE:Ljavafx/scene/paint/Color;

    invoke-direct {v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->currentColorProperty:Ljavafx/beans/property/ObjectProperty;

    .line 64
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    sget-object v6, Ljavafx/scene/paint/Color;->TRANSPARENT:Ljavafx/scene/paint/Color;

    invoke-direct {v5, v6}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->customColorProperty:Ljavafx/beans/property/ObjectProperty;

    .line 69
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->webField:Lcom/sun/javafx/scene/control/skin/WebColorField;

    .line 97
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljavafx/event/EventHandler;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->keyEventListener:Ljavafx/event/EventHandler;

    .line 173
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$1;-><init>(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->positionAdjuster:Ljavafx/beans/InvalidationListener;

    .line 73
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "custom-color-dialog"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 74
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/stage/Stage;->initOwner(Ljavafx/stage/Window;)V

    .line 75
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    const-string v4, "customColorDialogTitle"

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/ColorPickerSkin;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/stage/Stage;->setTitle(Ljava/lang/String;)V

    .line 76
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    sget-object v4, Ljavafx/stage/Modality;->APPLICATION_MODAL:Ljavafx/stage/Modality;

    invoke-virtual {v3, v4}, Ljavafx/stage/Stage;->initModality(Ljavafx/stage/Modality;)V

    .line 77
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    sget-object v4, Ljavafx/stage/StageStyle;->UTILITY:Ljavafx/stage/StageStyle;

    invoke-virtual {v3, v4}, Ljavafx/stage/Stage;->initStyle(Ljavafx/stage/StageStyle;)V

    .line 78
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/stage/Stage;->setResizable(Z)V

    .line 79
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;-><init>(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->colorRectPane:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    .line 80
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;-><init>(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->controlsPane:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;

    .line 81
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->controlsPane:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;

    sget-object v4, Ljavafx/scene/layout/Priority;->ALWAYS:Ljavafx/scene/layout/Priority;

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->setHgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V

    .line 83
    move-object v3, v0

    new-instance v4, Ljavafx/scene/Scene;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    invoke-direct {v5, v6}, Ljavafx/scene/Scene;-><init>(Ljavafx/scene/Parent;)V

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->customScene:Ljavafx/scene/Scene;

    .line 84
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/stage/Window;->getScene()Ljavafx/scene/Scene;

    move-result-object v3

    move-object v2, v3

    .line 85
    .local v2, "ownerScene":Ljavafx/scene/Scene;
    move-object v3, v2

    if-eqz v3, :cond_2

    .line 86
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getUserAgentStylesheet()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 87
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->customScene:Ljavafx/scene/Scene;

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getUserAgentStylesheet()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/Scene;->setUserAgentStylesheet(Ljava/lang/String;)V

    .line 89
    :cond_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->customScene:Ljavafx/scene/Scene;

    invoke-virtual {v3}, Ljavafx/scene/Scene;->getStylesheets()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/Scene;->getStylesheets()Ljavafx/collections/ObservableList;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll(Ljava/util/Collection;)Z

    move-result v3

    .line 91
    :cond_2
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v3

    const/4 v4, 0x2

    new-array v4, v4, [Ljavafx/scene/Node;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x0

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->colorRectPane:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    aput-object v7, v5, v6

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    const/4 v6, 0x1

    move-object v7, v0

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->controlsPane:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ControlsPane;

    aput-object v7, v5, v6

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v3

    .line 93
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->customScene:Ljavafx/scene/Scene;

    invoke-virtual {v3, v4}, Ljavafx/stage/Stage;->setScene(Ljavafx/scene/Scene;)V

    .line 94
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    sget-object v4, Ljavafx/scene/input/KeyEvent;->ANY:Ljavafx/event/EventType;

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->keyEventListener:Ljavafx/event/EventHandler;

    invoke-virtual {v3, v4, v5}, Ljavafx/stage/Stage;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 95
    return-void
.end method

.method static synthetic access$100(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljavafx/stage/Stage;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    return-object v0
.end method

.method static synthetic access$1000()Ljavafx/scene/paint/LinearGradient;
    .locals 1

    .prologue
    .line 57
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->createHueGradient()Ljavafx/scene/paint/LinearGradient;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$1100(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->currentColorProperty:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    return-object v0
.end method

.method static synthetic access$1200(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->customColorProperty:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    return-object v0
.end method

.method static synthetic access$1300(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Lcom/sun/javafx/scene/control/skin/WebColorField;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->webField:Lcom/sun/javafx/scene/control/skin/WebColorField;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    return-object v0
.end method

.method static synthetic access$1302(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;Lcom/sun/javafx/scene/control/skin/WebColorField;)Lcom/sun/javafx/scene/control/skin/WebColorField;
    .locals 7

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/control/skin/WebColorField;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->webField:Lcom/sun/javafx/scene/control/skin/WebColorField;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    return-object v0
.end method

.method static synthetic access$1400(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->colorRectPane:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    return-object v0
.end method

.method static synthetic access$200(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljavafx/beans/InvalidationListener;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->positionAdjuster:Ljavafx/beans/InvalidationListener;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    return-object v0
.end method

.method static synthetic access$2000(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->onCancel:Ljava/lang/Runnable;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    return-object v0
.end method

.method static synthetic access$2100(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->onUse:Ljava/lang/Runnable;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    return-object v0
.end method

.method static synthetic access$2200(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->onSave:Ljava/lang/Runnable;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    return-object v0
.end method

.method static synthetic access$300(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)V
    .locals 2

    .prologue
    .line 57
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->fixPosition()V

    return-void
.end method

.method static synthetic access$800(D)I
    .locals 4

    .prologue
    .line 57
    move-wide v0, p0

    .local v0, "x0":D
    move-wide v2, v0

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->doubleToInt(D)I

    move-result v2

    move v0, v2

    .end local v0    # "x0":D
    return v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->lambda$new$314(Ljavafx/scene/input/KeyEvent;)V

    return-void
.end method

.method static clamp(D)D
    .locals 6

    .prologue
    .line 723
    move-wide v0, p0

    .local v0, "value":D
    move-wide v2, v0

    const-wide/16 v4, 0x0

    cmpg-double v2, v2, v4

    if-gez v2, :cond_0

    const-wide/16 v2, 0x0

    :goto_0
    move-wide v0, v2

    .end local v0    # "value":D
    return-wide v0

    .restart local v0    # "value":D
    :cond_0
    move-wide v2, v0

    const-wide/high16 v4, 0x3ff0000000000000L    # 1.0

    cmpl-double v2, v2, v4

    if-lez v2, :cond_1

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    goto :goto_0

    :cond_1
    move-wide v2, v0

    goto :goto_0
.end method

.method private static createHueGradient()Ljavafx/scene/paint/LinearGradient;
    .locals 20

    .prologue
    .line 728
    const/16 v6, 0xff

    new-array v6, v6, [Ljavafx/scene/paint/Stop;

    move-object v3, v6

    .line 729
    .local v3, "stops":[Ljavafx/scene/paint/Stop;
    const/4 v6, 0x0

    move v4, v6

    .local v4, "y":I
    :goto_0
    move v6, v4

    const/16 v7, 0xff

    if-ge v6, v7, :cond_0

    .line 730
    const-wide/high16 v6, 0x3ff0000000000000L    # 1.0

    const-wide v8, 0x3f70101010101010L    # 0.00392156862745098

    move v10, v4

    int-to-double v10, v10

    mul-double/2addr v8, v10

    sub-double/2addr v6, v8

    move-wide v1, v6

    .line 731
    .local v1, "offset":D
    move v6, v4

    int-to-double v6, v6

    const-wide v8, 0x406fe00000000000L    # 255.0

    div-double/2addr v6, v8

    const-wide v8, 0x4076800000000000L    # 360.0

    mul-double/2addr v6, v8

    double-to-int v6, v6

    move v5, v6

    .line 732
    .local v5, "h":I
    move-object v6, v3

    move v7, v4

    new-instance v8, Ljavafx/scene/paint/Stop;

    move-object/from16 v19, v8

    move-object/from16 v8, v19

    move-object/from16 v9, v19

    move-wide v10, v1

    move v12, v5

    int-to-double v12, v12

    const-wide/high16 v14, 0x3ff0000000000000L    # 1.0

    const-wide/high16 v16, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v12 .. v17}, Ljavafx/scene/paint/Color;->hsb(DDD)Ljavafx/scene/paint/Color;

    move-result-object v12

    invoke-direct {v9, v10, v11, v12}, Ljavafx/scene/paint/Stop;-><init>(DLjavafx/scene/paint/Color;)V

    aput-object v8, v6, v7

    .line 729
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 734
    .end local v1    # "offset":D
    .end local v5    # "h":I
    :cond_0
    new-instance v6, Ljavafx/scene/paint/LinearGradient;

    move-object/from16 v19, v6

    move-object/from16 v6, v19

    move-object/from16 v7, v19

    const-wide/16 v8, 0x0

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    const-wide/16 v12, 0x0

    const-wide/16 v14, 0x0

    const/16 v16, 0x1

    sget-object v17, Ljavafx/scene/paint/CycleMethod;->NO_CYCLE:Ljavafx/scene/paint/CycleMethod;

    move-object/from16 v18, v3

    invoke-direct/range {v7 .. v18}, Ljavafx/scene/paint/LinearGradient;-><init>(DDDDZLjavafx/scene/paint/CycleMethod;[Ljavafx/scene/paint/Stop;)V

    move-object v1, v6

    return-object v1
.end method

.method private static doubleToInt(D)I
    .locals 6

    .prologue
    .line 738
    move-wide v0, p0

    .local v0, "value":D
    move-wide v2, v0

    const-wide v4, 0x406fe00000000000L    # 255.0

    mul-double/2addr v2, v4

    const-wide/high16 v4, 0x3fe0000000000000L    # 0.5

    add-double/2addr v2, v4

    double-to-int v2, v2

    move v0, v2

    .end local v0    # "value":D
    return v0
.end method

.method private fixPosition()V
    .locals 20

    .prologue
    .line 188
    move-object/from16 v2, p0

    .local v2, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v14, v2

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    invoke-virtual {v14}, Ljavafx/stage/Stage;->getOwner()Ljavafx/stage/Window;

    move-result-object v14

    move-object v3, v14

    .line 189
    .local v3, "w":Ljavafx/stage/Window;
    move-object v14, v3

    invoke-static {v14}, Lcom/sun/javafx/util/Utils;->getScreen(Ljava/lang/Object;)Ljavafx/stage/Screen;

    move-result-object v14

    move-object v4, v14

    .line 190
    .local v4, "s":Ljavafx/stage/Screen;
    move-object v14, v4

    invoke-virtual {v14}, Ljavafx/stage/Screen;->getBounds()Ljavafx/geometry/Rectangle2D;

    move-result-object v14

    move-object v5, v14

    .line 191
    .local v5, "sb":Ljavafx/geometry/Rectangle2D;
    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/stage/Window;->getX()D

    move-result-wide v14

    move-object/from16 v16, v3

    invoke-virtual/range {v16 .. v16}, Ljavafx/stage/Window;->getWidth()D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide v6, v14

    .line 192
    .local v6, "xR":D
    move-object v14, v3

    invoke-virtual {v14}, Ljavafx/stage/Window;->getX()D

    move-result-wide v14

    move-object/from16 v16, v2

    move-object/from16 v0, v16

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    move-object/from16 v16, v0

    invoke-virtual/range {v16 .. v16}, Ljavafx/stage/Stage;->getWidth()D

    move-result-wide v16

    sub-double v14, v14, v16

    move-wide v8, v14

    .line 194
    .local v8, "xL":D
    move-object v14, v5

    invoke-virtual {v14}, Ljavafx/geometry/Rectangle2D;->getMaxX()D

    move-result-wide v14

    move-wide/from16 v16, v6

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/stage/Stage;->getWidth()D

    move-result-wide v18

    add-double v16, v16, v18

    cmpl-double v14, v14, v16

    if-ltz v14, :cond_0

    .line 195
    move-wide v14, v6

    move-wide v10, v14

    .line 201
    .local v10, "x":D
    :goto_0
    move-object v14, v5

    invoke-virtual {v14}, Ljavafx/geometry/Rectangle2D;->getMinY()D

    move-result-wide v14

    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Rectangle2D;->getMaxY()D

    move-result-wide v16

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/stage/Stage;->getHeight()D

    move-result-wide v18

    sub-double v16, v16, v18

    move-object/from16 v18, v3

    invoke-virtual/range {v18 .. v18}, Ljavafx/stage/Window;->getY()D

    move-result-wide v18

    invoke-static/range {v16 .. v19}, Ljava/lang/Math;->min(DD)D

    move-result-wide v16

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    move-wide v12, v14

    .line 202
    .local v12, "y":D
    move-object v14, v2

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    move-wide v15, v10

    invoke-virtual/range {v14 .. v16}, Ljavafx/stage/Stage;->setX(D)V

    .line 203
    move-object v14, v2

    iget-object v14, v14, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    move-wide v15, v12

    invoke-virtual/range {v14 .. v16}, Ljavafx/stage/Stage;->setY(D)V

    .line 204
    return-void

    .line 196
    .end local v10    # "x":D
    .end local v12    # "y":D
    :cond_0
    move-object v14, v5

    invoke-virtual {v14}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v14

    move-wide/from16 v16, v8

    cmpg-double v14, v14, v16

    if-gtz v14, :cond_1

    .line 197
    move-wide v14, v8

    move-wide v10, v14

    .restart local v10    # "x":D
    goto :goto_0

    .line 199
    .end local v10    # "x":D
    :cond_1
    move-object v14, v5

    invoke-virtual {v14}, Ljavafx/geometry/Rectangle2D;->getMinX()D

    move-result-wide v14

    move-object/from16 v16, v5

    invoke-virtual/range {v16 .. v16}, Ljavafx/geometry/Rectangle2D;->getMaxX()D

    move-result-wide v16

    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljavafx/stage/Stage;->getWidth()D

    move-result-wide v18

    sub-double v16, v16, v18

    invoke-static/range {v14 .. v17}, Ljava/lang/Math;->max(DD)D

    move-result-wide v14

    move-wide v10, v14

    .restart local v10    # "x":D
    goto :goto_0
.end method

.method private synthetic lambda$new$314(Ljavafx/scene/input/KeyEvent;)V
    .locals 4

    .prologue
    .line 98
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, p1

    .local v1, "e":Ljavafx/scene/input/KeyEvent;
    sget-object v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$2;->$SwitchMap$javafx$scene$input$KeyCode:[I

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/input/KeyEvent;->getCode()Ljavafx/scene/input/KeyCode;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/input/KeyCode;->ordinal()I

    move-result v3

    aget v2, v2, v3

    packed-switch v2, :pswitch_data_0

    .line 105
    :goto_0
    return-void

    .line 100
    :pswitch_0
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Ljavafx/stage/Stage;->setScene(Ljavafx/scene/Scene;)V

    .line 101
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    invoke-virtual {v2}, Ljavafx/stage/Stage;->close()V

    goto :goto_0

    .line 98
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method customColorProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation

    .prologue
    .line 116
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->customColorProperty:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    return-object v0
.end method

.method getCurrentColor()Ljavafx/scene/paint/Color;
    .locals 2

    .prologue
    .line 112
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->currentColorProperty:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Color;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    return-object v0
.end method

.method getCustomColor()Ljavafx/scene/paint/Color;
    .locals 2

    .prologue
    .line 124
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->customColorProperty:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Color;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    return-object v0
.end method

.method getDialog()Ljavafx/stage/Stage;
    .locals 2

    .prologue
    .line 156
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    return-object v0
.end method

.method public getOnCancel()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 144
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->onCancel:Ljava/lang/Runnable;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    return-object v0
.end method

.method public getOnSave()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 128
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->onSave:Ljava/lang/Runnable;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    return-object v0
.end method

.method public getOnUse()Ljava/lang/Runnable;
    .locals 2

    .prologue
    .line 136
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->onUse:Ljava/lang/Runnable;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    return-object v0
.end method

.method public layoutChildren()V
    .locals 14

    .prologue
    .line 207
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v6, v1

    invoke-super {v6}, Ljavafx/scene/layout/HBox;->layoutChildren()V

    .line 208
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    invoke-virtual {v6}, Ljavafx/stage/Stage;->getMinWidth()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    invoke-virtual {v6}, Ljavafx/stage/Stage;->getMinHeight()D

    move-result-wide v6

    const-wide/16 v8, 0x0

    cmpl-double v6, v6, v8

    if-lez v6, :cond_0

    .line 210
    .line 218
    :goto_0
    return-void

    .line 214
    :cond_0
    const-wide/16 v6, 0x0

    move-object v8, v1

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->getHeight()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->computeMinWidth(D)D

    move-result-wide v8

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    invoke-virtual {v10}, Ljavafx/stage/Stage;->getWidth()D

    move-result-wide v10

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->customScene:Ljavafx/scene/Scene;

    invoke-virtual {v12}, Ljavafx/scene/Scene;->getWidth()D

    move-result-wide v12

    sub-double/2addr v10, v12

    add-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    move-wide v2, v6

    .line 215
    .local v2, "minWidth":D
    const-wide/16 v6, 0x0

    move-object v8, v1

    move-object v9, v1

    invoke-virtual {v9}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->getWidth()D

    move-result-wide v9

    invoke-virtual {v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->computeMinHeight(D)D

    move-result-wide v8

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    invoke-virtual {v10}, Ljavafx/stage/Stage;->getHeight()D

    move-result-wide v10

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->customScene:Ljavafx/scene/Scene;

    invoke-virtual {v12}, Ljavafx/scene/Scene;->getHeight()D

    move-result-wide v12

    sub-double/2addr v10, v12

    add-double/2addr v8, v10

    invoke-static {v6, v7, v8, v9}, Ljava/lang/Math;->max(DD)D

    move-result-wide v6

    move-wide v4, v6

    .line 216
    .local v4, "minHeight":D
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    move-wide v7, v2

    invoke-virtual {v6, v7, v8}, Ljavafx/stage/Stage;->setMinWidth(D)V

    .line 217
    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    move-wide v7, v4

    invoke-virtual {v6, v7, v8}, Ljavafx/stage/Stage;->setMinHeight(D)V

    .line 218
    goto :goto_0
.end method

.method public setCurrentColor(Ljavafx/scene/paint/Color;)V
    .locals 4

    .prologue
    .line 108
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, p1

    .local v1, "currentColor":Ljavafx/scene/paint/Color;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->currentColorProperty:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 109
    return-void
.end method

.method setCustomColor(Ljavafx/scene/paint/Color;)V
    .locals 4

    .prologue
    .line 120
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, p1

    .local v1, "color":Ljavafx/scene/paint/Color;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->customColorProperty:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 121
    return-void
.end method

.method public setOnCancel(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, p1

    .local v1, "onCancel":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->onCancel:Ljava/lang/Runnable;

    .line 149
    return-void
.end method

.method public setOnHidden(Ljavafx/event/EventHandler;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/event/EventHandler",
            "<",
            "Ljavafx/stage/WindowEvent;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 152
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, p1

    .local v1, "onHidden":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/stage/WindowEvent;>;"
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/stage/Stage;->setOnHidden(Ljavafx/event/EventHandler;)V

    .line 153
    return-void
.end method

.method public setOnSave(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 132
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, p1

    .local v1, "onSave":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->onSave:Ljava/lang/Runnable;

    .line 133
    return-void
.end method

.method public setOnUse(Ljava/lang/Runnable;)V
    .locals 4

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, p1

    .local v1, "onUse":Ljava/lang/Runnable;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->onUse:Ljava/lang/Runnable;

    .line 141
    return-void
.end method

.method public show()V
    .locals 3

    .prologue
    .line 160
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->getOwner()Ljavafx/stage/Window;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 164
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->positionAdjuster:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 165
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->positionAdjuster:Ljavafx/beans/InvalidationListener;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/ReadOnlyDoubleProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 166
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->positionAdjuster:Ljavafx/beans/InvalidationListener;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V

    .line 168
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->getScene()Ljavafx/scene/Scene;

    move-result-object v1

    if-nez v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->customScene:Ljavafx/scene/Scene;

    invoke-virtual {v1, v2}, Ljavafx/stage/Stage;->setScene(Ljavafx/scene/Scene;)V

    .line 169
    :cond_1
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->colorRectPane:Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;

    invoke-static {v1}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->access$000(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)V

    .line 170
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->dialog:Ljavafx/stage/Stage;

    invoke-virtual {v1}, Ljavafx/stage/Stage;->show()V

    .line 171
    return-void
.end method
