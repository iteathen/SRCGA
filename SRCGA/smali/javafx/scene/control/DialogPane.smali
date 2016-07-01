.class public Ljavafx/scene/control/DialogPane;
.super Ljavafx/scene/layout/Pane;
.source "DialogPane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/DialogPane$StyleableProperties;
    }
.end annotation

.annotation runtime Ljavafx/beans/DefaultProperty;
    value = "buttonTypes"
.end annotation


# instance fields
.field private final buttonBar:Ljavafx/scene/Node;

.field private final buttonNodes:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljavafx/scene/control/ButtonType;",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final buttons:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/ButtonType;",
            ">;"
        }
    .end annotation
.end field

.field private final content:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final contentLabel:Ljavafx/scene/control/Label;

.field private final contentText:Ljavafx/beans/property/StringProperty;

.field private detailsButton:Ljavafx/scene/Node;

.field private dialog:Ljavafx/scene/control/Dialog;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/scene/control/Dialog",
            "<*>;"
        }
    .end annotation
.end field

.field private final expandableContentProperty:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final expandedProperty:Ljavafx/beans/property/BooleanProperty;

.field private final graphicContainer:Ljavafx/scene/layout/StackPane;

.field private final graphicProperty:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final header:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private final headerText:Ljavafx/beans/property/StringProperty;

.field private final headerTextPanel:Ljavafx/scene/layout/GridPane;

.field private imageUrl:Ljavafx/css/StyleableStringProperty;

.field private oldHeight:D


# direct methods
.method public constructor <init>()V
    .locals 9

    .prologue
    .line 210
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/layout/Pane;-><init>()V

    .line 189
    move-object v1, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/DialogPane;->buttons:Ljavafx/collections/ObservableList;

    .line 191
    move-object v1, v0

    new-instance v2, Ljava/util/WeakHashMap;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v2, v1, Ljavafx/scene/control/DialogPane;->buttonNodes:Ljava/util/Map;

    .line 253
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/DialogPane$1;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/DialogPane$1;-><init>(Ljavafx/scene/control/DialogPane;)V

    iput-object v2, v1, Ljavafx/scene/control/DialogPane;->graphicProperty:Ljavafx/beans/property/ObjectProperty;

    .line 310
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/scene/control/DialogPane;->imageUrl:Ljavafx/css/StyleableStringProperty;

    .line 431
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/DialogPane$3;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/DialogPane$3;-><init>(Ljavafx/scene/control/DialogPane;Ljavafx/scene/Node;)V

    iput-object v2, v1, Ljavafx/scene/control/DialogPane;->header:Ljavafx/beans/property/ObjectProperty;

    .line 477
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/DialogPane$4;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    const-string v6, "headerText"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/DialogPane$4;-><init>(Ljavafx/scene/control/DialogPane;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/DialogPane;->headerText:Ljavafx/beans/property/StringProperty;

    .line 521
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/DialogPane$5;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/DialogPane$5;-><init>(Ljavafx/scene/control/DialogPane;Ljavafx/scene/Node;)V

    iput-object v2, v1, Ljavafx/scene/control/DialogPane;->content:Ljavafx/beans/property/ObjectProperty;

    .line 565
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/DialogPane$6;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    const-string v6, "contentText"

    invoke-direct {v3, v4, v5, v6}, Ljavafx/scene/control/DialogPane$6;-><init>(Ljavafx/scene/control/DialogPane;Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/DialogPane;->contentText:Ljavafx/beans/property/StringProperty;

    .line 601
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/DialogPane$7;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/DialogPane$7;-><init>(Ljavafx/scene/control/DialogPane;Ljavafx/scene/Node;)V

    iput-object v2, v1, Ljavafx/scene/control/DialogPane;->expandableContentProperty:Ljavafx/beans/property/ObjectProperty;

    .line 652
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/DialogPane$8;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    move-object v4, v0

    move-object v5, v0

    const-string v6, "expanded"

    const/4 v7, 0x0

    invoke-direct {v3, v4, v5, v6, v7}, Ljavafx/scene/control/DialogPane$8;-><init>(Ljavafx/scene/control/DialogPane;Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/DialogPane;->expandedProperty:Ljavafx/beans/property/BooleanProperty;

    .line 817
    move-object v1, v0

    const-wide/high16 v2, -0x4010000000000000L    # -1.0

    iput-wide v2, v1, Ljavafx/scene/control/DialogPane;->oldHeight:D

    .line 211
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/DialogPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "dialog-pane"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 213
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/GridPane;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljavafx/scene/layout/GridPane;-><init>()V

    iput-object v2, v1, Ljavafx/scene/control/DialogPane;->headerTextPanel:Ljavafx/scene/layout/GridPane;

    .line 214
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/DialogPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/DialogPane;->headerTextPanel:Ljavafx/scene/layout/GridPane;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 216
    move-object v1, v0

    new-instance v2, Ljavafx/scene/layout/StackPane;

    move-object v8, v2

    move-object v2, v8

    move-object v3, v8

    invoke-direct {v3}, Ljavafx/scene/layout/StackPane;-><init>()V

    iput-object v2, v1, Ljavafx/scene/control/DialogPane;->graphicContainer:Ljavafx/scene/layout/StackPane;

    .line 218
    move-object v1, v0

    const-string v2, ""

    invoke-static {v2}, Ljavafx/scene/control/DialogPane;->createContentLabel(Ljava/lang/String;)Ljavafx/scene/control/Label;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/DialogPane;->contentLabel:Ljavafx/scene/control/Label;

    .line 219
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/DialogPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/DialogPane;->contentLabel:Ljavafx/scene/control/Label;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 221
    move-object v1, v0

    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/DialogPane;->createButtonBar()Ljavafx/scene/Node;

    move-result-object v2

    iput-object v2, v1, Ljavafx/scene/control/DialogPane;->buttonBar:Ljavafx/scene/Node;

    .line 222
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane;->buttonBar:Ljavafx/scene/Node;

    if-eqz v1, :cond_0

    .line 223
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/DialogPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/DialogPane;->buttonBar:Ljavafx/scene/Node;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 226
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane;->buttons:Ljavafx/collections/ObservableList;

    move-object v2, v0

    invoke-static {v2}, Ljavafx/scene/control/DialogPane$$Lambda$1;->lambdaFactory$(Ljavafx/scene/control/DialogPane;)Ljavafx/collections/ListChangeListener;

    move-result-object v2

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 242
    return-void
.end method

.method static synthetic access$100(Ljavafx/scene/control/DialogPane;)V
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/DialogPane;->updateHeaderArea()V

    return-void
.end method

.method static synthetic access$200(Ljavafx/scene/control/DialogPane;)Ljavafx/beans/property/ObjectProperty;
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane;->graphicProperty:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/DialogPane;
    return-object v0
.end method

.method static synthetic access$300(Ljavafx/scene/control/DialogPane;)V
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/DialogPane;->updateContentArea()V

    return-void
.end method

.method static synthetic access$400(Ljavafx/scene/control/DialogPane;)Ljavafx/css/StyleableStringProperty;
    .locals 2

    .prologue
    .line 154
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/DialogPane;->imageUrlProperty()Ljavafx/css/StyleableStringProperty;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/DialogPane;
    return-object v0
.end method

.method static synthetic access$lambda$0(Ljavafx/scene/control/DialogPane;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/DialogPane;->lambda$new$596(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Ljavafx/scene/control/DialogPane;Ljavafx/scene/control/ButtonBar;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/DialogPane;->lambda$createButtonBar$597(Ljavafx/scene/control/ButtonBar;Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$2(Ljavafx/scene/control/DialogPane;Ljavafx/scene/control/ButtonBar;Ljavafx/beans/Observable;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/DialogPane;->lambda$createButtonBar$598(Ljavafx/scene/control/ButtonBar;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$3(Ljavafx/scene/control/DialogPane;Ljavafx/scene/control/ButtonType;Ljavafx/event/ActionEvent;)V
    .locals 6

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/DialogPane;->lambda$createButton$599(Ljavafx/scene/control/ButtonType;Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static synthetic access$lambda$4(Ljavafx/scene/control/DialogPane;Ljavafx/scene/control/Hyperlink;Ljava/lang/String;Ljava/lang/String;Ljavafx/beans/Observable;)V
    .locals 10

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, v0

    move-object v6, v1

    move-object v7, v2

    move-object v8, v3

    move-object v9, v4

    invoke-direct {v5, v6, v7, v8, v9}, Ljavafx/scene/control/DialogPane;->lambda$createDetailsButton$600(Ljavafx/scene/control/Hyperlink;Ljava/lang/String;Ljava/lang/String;Ljavafx/beans/Observable;)V

    return-void
.end method

.method static synthetic access$lambda$5(Ljavafx/scene/control/DialogPane;Ljavafx/event/ActionEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/DialogPane;->lambda$createDetailsButton$601(Ljavafx/event/ActionEvent;)V

    return-void
.end method

.method static createContentLabel(Ljava/lang/String;)Ljavafx/scene/control/Label;
    .locals 7

    .prologue
    .line 167
    move-object v1, p0

    .local v1, "text":Ljava/lang/String;
    new-instance v3, Ljavafx/scene/control/Label;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    move-object v5, v1

    invoke-direct {v4, v5}, Ljavafx/scene/control/Label;-><init>(Ljava/lang/String;)V

    move-object v2, v3

    .line 168
    .local v2, "label":Ljavafx/scene/control/Label;
    move-object v3, v2

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Label;->setMaxWidth(D)V

    .line 169
    move-object v3, v2

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Label;->setMaxHeight(D)V

    .line 170
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/scene/control/Label;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "content"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 171
    move-object v3, v2

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Label;->setWrapText(Z)V

    .line 172
    move-object v3, v2

    const-wide v4, 0x4076800000000000L    # 360.0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Label;->setPrefWidth(D)V

    .line 173
    move-object v3, v2

    move-object v1, v3

    .end local v1    # "text":Ljava/lang/String;
    return-object v1
.end method

.method private getActualContent()Ljavafx/scene/Node;
    .locals 3

    .prologue
    .line 1075
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/DialogPane;->getContent()Ljavafx/scene/Node;

    move-result-object v2

    move-object v1, v2

    .line 1076
    .local v1, "content":Ljavafx/scene/Node;
    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/DialogPane;->contentLabel:Ljavafx/scene/control/Label;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/DialogPane;
    :cond_0
    move-object v2, v1

    goto :goto_0
.end method

.method private getActualGraphic()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 1085
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane;->headerTextPanel:Ljavafx/scene/layout/GridPane;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return-object v0
.end method

.method private getActualHeader()Ljavafx/scene/Node;
    .locals 3

    .prologue
    .line 1080
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/DialogPane;->getHeader()Ljavafx/scene/Node;

    move-result-object v2

    move-object v1, v2

    .line 1081
    .local v1, "header":Ljavafx/scene/Node;
    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/DialogPane;->headerTextPanel:Ljavafx/scene/layout/GridPane;

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/DialogPane;
    :cond_0
    move-object v2, v1

    goto :goto_0
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
    .line 1228
    # getter for: Ljavafx/scene/control/DialogPane$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/control/DialogPane$StyleableProperties;->access$500()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private imageUrlProperty()Ljavafx/css/StyleableStringProperty;
    .locals 6

    .prologue
    .line 317
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane;->imageUrl:Ljavafx/css/StyleableStringProperty;

    if-nez v1, :cond_0

    .line 318
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/DialogPane$2;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/DialogPane$2;-><init>(Ljavafx/scene/control/DialogPane;)V

    iput-object v2, v1, Ljavafx/scene/control/DialogPane;->imageUrl:Ljavafx/css/StyleableStringProperty;

    .line 426
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane;->imageUrl:Ljavafx/css/StyleableStringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return-object v0
.end method

.method private isTextHeader()Z
    .locals 3

    .prologue
    .line 1172
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/DialogPane;->getHeaderText()Ljava/lang/String;

    move-result-object v2

    move-object v1, v2

    .line 1173
    .local v1, "headerText":Ljava/lang/String;
    move-object v2, v1

    if-eqz v2, :cond_0

    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    const/4 v2, 0x1

    :goto_0
    move v0, v2

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/DialogPane;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private synthetic lambda$createButton$599(Ljavafx/scene/control/ButtonType;Ljavafx/event/ActionEvent;)V
    .locals 6

    .prologue
    .line 775
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, p1

    .local v1, "buttonType":Ljavafx/scene/control/ButtonType;
    move-object v2, p2

    .local v2, "ae":Ljavafx/event/ActionEvent;
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/event/ActionEvent;->isConsumed()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 779
    :goto_0
    return-void

    .line 776
    :cond_0
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/DialogPane;->dialog:Ljavafx/scene/control/Dialog;

    if-eqz v3, :cond_1

    .line 777
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/DialogPane;->dialog:Ljavafx/scene/control/Dialog;

    move-object v4, v1

    const/4 v5, 0x1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/Dialog;->impl_setResultAndClose(Ljavafx/scene/control/ButtonType;Z)V

    .line 779
    :cond_1
    goto :goto_0
.end method

.method private synthetic lambda$createButtonBar$597(Ljavafx/scene/control/ButtonBar;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 5

    .prologue
    .line 752
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, p1

    .local v1, "buttonBar":Ljavafx/scene/control/ButtonBar;
    move-object v2, p2

    .local v2, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/control/DialogPane;->updateButtons(Ljavafx/scene/control/ButtonBar;)V

    return-void
.end method

.method private synthetic lambda$createButtonBar$598(Ljavafx/scene/control/ButtonBar;Ljavafx/beans/Observable;)V
    .locals 5

    .prologue
    .line 753
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, p1

    .local v1, "buttonBar":Ljavafx/scene/control/ButtonBar;
    move-object v2, p2

    .local v2, "o":Ljavafx/beans/Observable;
    move-object v3, v0

    move-object v4, v1

    invoke-direct {v3, v4}, Ljavafx/scene/control/DialogPane;->updateButtons(Ljavafx/scene/control/ButtonBar;)V

    return-void
.end method

.method private synthetic lambda$createDetailsButton$600(Ljavafx/scene/control/Hyperlink;Ljava/lang/String;Ljava/lang/String;Ljavafx/beans/Observable;)V
    .locals 12

    .prologue
    .line 804
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, p1

    .local v1, "detailsButton":Ljavafx/scene/control/Hyperlink;
    move-object v2, p2

    .local v2, "lessText":Ljava/lang/String;
    move-object v3, p3

    .local v3, "moreText":Ljava/lang/String;
    move-object/from16 v4, p4

    .local v4, "o":Ljavafx/beans/Observable;
    move-object v6, v0

    invoke-virtual {v6}, Ljavafx/scene/control/DialogPane;->isExpanded()Z

    move-result v6

    move v5, v6

    .line 805
    .local v5, "isExpanded":Z
    move-object v6, v1

    move v7, v5

    if-eqz v7, :cond_0

    move-object v7, v2

    :goto_0
    invoke-virtual {v6, v7}, Ljavafx/scene/control/Hyperlink;->setText(Ljava/lang/String;)V

    .line 806
    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/Hyperlink;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v6

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x0

    const-string v10, "details-button"

    aput-object v10, v8, v9

    move-object v11, v7

    move-object v7, v11

    move-object v8, v11

    const/4 v9, 0x1

    move v10, v5

    if-eqz v10, :cond_1

    const-string v10, "less"

    :goto_1
    aput-object v10, v8, v9

    invoke-interface {v6, v7}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v6

    .line 807
    return-void

    .line 805
    :cond_0
    move-object v7, v3

    goto :goto_0

    .line 806
    :cond_1
    const-string v10, "more"

    goto :goto_1
.end method

.method private synthetic lambda$createDetailsButton$601(Ljavafx/event/ActionEvent;)V
    .locals 4

    .prologue
    .line 813
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, p1

    .local v1, "ae":Ljavafx/event/ActionEvent;
    move-object v2, v0

    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->isExpanded()Z

    move-result v3

    if-nez v3, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v2, v3}, Ljavafx/scene/control/DialogPane;->setExpanded(Z)V

    return-void

    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private synthetic lambda$new$596(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 8

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    :cond_0
    :goto_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->next()Z

    move-result v4

    if-eqz v4, :cond_4

    .line 228
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->wasRemoved()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 229
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getRemoved()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_1
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_1

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ButtonType;

    move-object v3, v4

    .line 230
    .local v3, "buttonType":Ljavafx/scene/control/ButtonType;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/DialogPane;->buttonNodes:Ljava/util/Map;

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 231
    goto :goto_1

    .line 233
    .end local v3    # "buttonType":Ljavafx/scene/control/ButtonType;
    :cond_1
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->wasAdded()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 234
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/collections/ListChangeListener$Change;->getAddedSubList()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    move-object v2, v4

    :goto_2
    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljavafx/scene/control/ButtonType;

    move-object v3, v4

    .line 235
    .restart local v3    # "buttonType":Ljavafx/scene/control/ButtonType;
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/DialogPane;->buttonNodes:Ljava/util/Map;

    move-object v5, v3

    invoke-interface {v4, v5}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 236
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/DialogPane;->buttonNodes:Ljava/util/Map;

    move-object v5, v3

    move-object v6, v0

    move-object v7, v3

    invoke-virtual {v6, v7}, Ljavafx/scene/control/DialogPane;->createButton(Ljavafx/scene/control/ButtonType;)Ljavafx/scene/Node;

    move-result-object v6

    invoke-interface {v4, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .line 238
    :cond_2
    goto :goto_2

    .end local v3    # "buttonType":Ljavafx/scene/control/ButtonType;
    :cond_3
    goto :goto_0

    .line 241
    :cond_4
    return-void
.end method

.method private updateButtons(Ljavafx/scene/control/ButtonBar;)V
    .locals 11

    .prologue
    .line 1033
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, p1

    .local v1, "buttonBar":Ljavafx/scene/control/ButtonBar;
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/ButtonBar;->getButtons()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->clear()V

    .line 1036
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/DialogPane;->hasExpandableContent()Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1037
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/DialogPane;->detailsButton:Ljavafx/scene/Node;

    if-nez v8, :cond_0

    .line 1038
    move-object v8, v0

    move-object v9, v0

    invoke-virtual {v9}, Ljavafx/scene/control/DialogPane;->createDetailsButton()Ljavafx/scene/Node;

    move-result-object v9

    iput-object v9, v8, Ljavafx/scene/control/DialogPane;->detailsButton:Ljavafx/scene/Node;

    .line 1040
    :cond_0
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/DialogPane;->detailsButton:Ljavafx/scene/Node;

    sget-object v9, Ljavafx/scene/control/ButtonBar$ButtonData;->HELP_2:Ljavafx/scene/control/ButtonBar$ButtonData;

    invoke-static {v8, v9}, Ljavafx/scene/control/ButtonBar;->setButtonData(Ljavafx/scene/Node;Ljavafx/scene/control/ButtonBar$ButtonData;)V

    .line 1041
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/ButtonBar;->getButtons()Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/control/DialogPane;->detailsButton:Ljavafx/scene/Node;

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 1042
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/DialogPane;->detailsButton:Ljavafx/scene/Node;

    const/4 v9, 0x0

    invoke-static {v8, v9}, Ljavafx/scene/control/ButtonBar;->setButtonUniformSize(Ljavafx/scene/Node;Z)V

    .line 1045
    :cond_1
    const/4 v8, 0x0

    move v2, v8

    .line 1046
    .local v2, "hasDefault":Z
    move-object v8, v0

    invoke-virtual {v8}, Ljavafx/scene/control/DialogPane;->getButtonTypes()Ljavafx/collections/ObservableList;

    move-result-object v8

    invoke-interface {v8}, Ljavafx/collections/ObservableList;->iterator()Ljava/util/Iterator;

    move-result-object v8

    move-object v3, v8

    :goto_0
    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->hasNext()Z

    move-result v8

    if-eqz v8, :cond_6

    move-object v8, v3

    invoke-interface {v8}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/control/ButtonType;

    move-object v4, v8

    .line 1047
    .local v4, "buttonType":Ljavafx/scene/control/ButtonType;
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/DialogPane;->buttonNodes:Ljava/util/Map;

    move-object v9, v4

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljavafx/scene/Node;

    move-object v5, v8

    .line 1048
    .local v5, "buttonNode":Ljavafx/scene/Node;
    move-object v8, v5

    if-nez v8, :cond_2

    .line 1049
    move-object v8, v0

    move-object v9, v4

    invoke-virtual {v8, v9}, Ljavafx/scene/control/DialogPane;->createButton(Ljavafx/scene/control/ButtonType;)Ljavafx/scene/Node;

    move-result-object v8

    move-object v6, v8

    .line 1050
    .local v6, "newButtonNode":Ljavafx/scene/Node;
    move-object v8, v6

    if-eqz v8, :cond_2

    .line 1051
    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/DialogPane;->buttonNodes:Ljava/util/Map;

    move-object v9, v4

    move-object v10, v6

    invoke-interface {v8, v9, v10}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .line 1052
    move-object v8, v6

    move-object v5, v8

    .line 1057
    .end local v6    # "newButtonNode":Ljavafx/scene/Node;
    :cond_2
    move-object v8, v5

    instance-of v8, v8, Ljavafx/scene/control/Button;

    if-eqz v8, :cond_3

    .line 1058
    move-object v8, v5

    check-cast v8, Ljavafx/scene/control/Button;

    move-object v6, v8

    .line 1059
    .local v6, "button":Ljavafx/scene/control/Button;
    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/scene/control/ButtonType;->getButtonData()Ljavafx/scene/control/ButtonBar$ButtonData;

    move-result-object v8

    move-object v7, v8

    .line 1061
    .local v7, "buttonData":Ljavafx/scene/control/ButtonBar$ButtonData;
    move-object v8, v7

    if-eqz v8, :cond_5

    .line 1062
    move-object v8, v6

    move v9, v2

    if-nez v9, :cond_4

    move-object v9, v7

    invoke-virtual {v9}, Ljavafx/scene/control/ButtonBar$ButtonData;->isDefaultButton()Z

    move-result v9

    if-eqz v9, :cond_4

    const/4 v9, 0x1

    :goto_1
    invoke-virtual {v8, v9}, Ljavafx/scene/control/Button;->setDefaultButton(Z)V

    .line 1063
    move-object v8, v6

    move-object v9, v7

    invoke-virtual {v9}, Ljavafx/scene/control/ButtonBar$ButtonData;->isCancelButton()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljavafx/scene/control/Button;->setCancelButton(Z)V

    .line 1064
    move v8, v2

    move-object v9, v7

    invoke-virtual {v9}, Ljavafx/scene/control/ButtonBar$ButtonData;->isDefaultButton()Z

    move-result v9

    or-int/2addr v8, v9

    move v2, v8

    .line 1070
    .end local v6    # "button":Ljavafx/scene/control/Button;
    .end local v7    # "buttonData":Ljavafx/scene/control/ButtonBar$ButtonData;
    :cond_3
    :goto_2
    move-object v8, v1

    invoke-virtual {v8}, Ljavafx/scene/control/ButtonBar;->getButtons()Ljavafx/collections/ObservableList;

    move-result-object v8

    move-object v9, v5

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 1071
    goto :goto_0

    .line 1062
    .restart local v6    # "button":Ljavafx/scene/control/Button;
    .restart local v7    # "buttonData":Ljavafx/scene/control/ButtonBar$ButtonData;
    :cond_4
    const/4 v9, 0x0

    goto :goto_1

    .line 1066
    :cond_5
    move-object v8, v6

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljavafx/scene/control/Button;->setDefaultButton(Z)V

    .line 1067
    move-object v8, v6

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljavafx/scene/control/Button;->setCancelButton(Z)V

    goto :goto_2

    .line 1072
    .end local v4    # "buttonType":Ljavafx/scene/control/ButtonType;
    .end local v5    # "buttonNode":Ljavafx/scene/Node;
    .end local v6    # "button":Ljavafx/scene/control/Button;
    .end local v7    # "buttonData":Ljavafx/scene/control/ButtonBar$ButtonData;
    :cond_6
    return-void
.end method

.method private updateContentArea()V
    .locals 6

    .prologue
    .line 1146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/DialogPane;->getContent()Ljavafx/scene/Node;

    move-result-object v4

    move-object v1, v4

    .line 1147
    .local v1, "content":Ljavafx/scene/Node;
    move-object v4, v1

    if-eqz v4, :cond_2

    .line 1148
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/DialogPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 1149
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/DialogPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v4

    move-object v5, v1

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1152
    :cond_0
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const-string v5, "content"

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1153
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/Node;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v4

    const-string v5, "content"

    invoke-interface {v4, v5}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v4

    .line 1156
    :cond_1
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/DialogPane;->contentLabel:Ljavafx/scene/control/Label;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/Label;->setVisible(Z)V

    .line 1157
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/DialogPane;->contentLabel:Ljavafx/scene/control/Label;

    const/4 v5, 0x0

    invoke-virtual {v4, v5}, Ljavafx/scene/control/Label;->setManaged(Z)V

    .line 1165
    :goto_0
    return-void

    .line 1159
    :cond_2
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/DialogPane;->getContentText()Ljava/lang/String;

    move-result-object v4

    move-object v2, v4

    .line 1160
    .local v2, "contentText":Ljava/lang/String;
    move-object v4, v2

    if-eqz v4, :cond_3

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_3

    const/4 v4, 0x1

    :goto_1
    move v3, v4

    .line 1161
    .local v3, "visible":Z
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/DialogPane;->contentLabel:Ljavafx/scene/control/Label;

    move v5, v3

    if-eqz v5, :cond_4

    move-object v5, v2

    :goto_2
    invoke-virtual {v4, v5}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    .line 1162
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/DialogPane;->contentLabel:Ljavafx/scene/control/Label;

    move v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/control/Label;->setVisible(Z)V

    .line 1163
    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/DialogPane;->contentLabel:Ljavafx/scene/control/Label;

    move v5, v3

    invoke-virtual {v4, v5}, Ljavafx/scene/control/Label;->setManaged(Z)V

    goto :goto_0

    .line 1160
    .end local v3    # "visible":Z
    :cond_3
    const/4 v4, 0x0

    goto :goto_1

    .line 1161
    .restart local v3    # "visible":Z
    :cond_4
    const-string v5, ""

    goto :goto_2
.end method

.method private updateHeaderArea()V
    .locals 13

    .prologue
    .line 1089
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/DialogPane;->getHeader()Ljavafx/scene/Node;

    move-result-object v7

    move-object v1, v7

    .line 1090
    .local v1, "header":Ljavafx/scene/Node;
    move-object v7, v1

    if-eqz v7, :cond_1

    .line 1091
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/DialogPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v1

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1092
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/DialogPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v1

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1095
    :cond_0
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/DialogPane;->headerTextPanel:Ljavafx/scene/layout/GridPane;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/scene/layout/GridPane;->setVisible(Z)V

    .line 1096
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/DialogPane;->headerTextPanel:Ljavafx/scene/layout/GridPane;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/scene/layout/GridPane;->setManaged(Z)V

    .line 1143
    :goto_0
    return-void

    .line 1098
    :cond_1
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/DialogPane;->getHeaderText()Ljava/lang/String;

    move-result-object v7

    move-object v2, v7

    .line 1100
    .local v2, "headerText":Ljava/lang/String;
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/DialogPane;->headerTextPanel:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v7}, Ljavafx/scene/layout/GridPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->clear()V

    .line 1101
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/DialogPane;->headerTextPanel:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v7}, Ljavafx/scene/layout/GridPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->clear()V

    .line 1104
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/DialogPane;->headerTextPanel:Ljavafx/scene/layout/GridPane;

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/layout/GridPane;->setMaxWidth(D)V

    .line 1106
    move-object v7, v2

    if-eqz v7, :cond_2

    move-object v7, v2

    invoke-virtual {v7}, Ljava/lang/String;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 1107
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/DialogPane;->headerTextPanel:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v7}, Ljavafx/scene/layout/GridPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v7

    const-string v8, "header-panel"

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1111
    :cond_2
    new-instance v7, Ljavafx/scene/control/Label;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    move-object v9, v2

    invoke-direct {v8, v9}, Ljavafx/scene/control/Label;-><init>(Ljava/lang/String;)V

    move-object v3, v7

    .line 1112
    .local v3, "headerLabel":Ljavafx/scene/control/Label;
    move-object v7, v3

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljavafx/scene/control/Label;->setWrapText(Z)V

    .line 1113
    move-object v7, v3

    sget-object v8, Ljavafx/geometry/Pos;->CENTER_LEFT:Ljavafx/geometry/Pos;

    invoke-virtual {v7, v8}, Ljavafx/scene/control/Label;->setAlignment(Ljavafx/geometry/Pos;)V

    .line 1114
    move-object v7, v3

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/Label;->setMaxWidth(D)V

    .line 1115
    move-object v7, v3

    const-wide v8, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual {v7, v8, v9}, Ljavafx/scene/control/Label;->setMaxHeight(D)V

    .line 1116
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/DialogPane;->headerTextPanel:Ljavafx/scene/layout/GridPane;

    move-object v8, v3

    const/4 v9, 0x0

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 1119
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/DialogPane;->graphicContainer:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v7}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    invoke-interface {v7}, Ljavafx/collections/ObservableList;->clear()V

    .line 1121
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/DialogPane;->graphicContainer:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v7}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v7

    const-string v8, "graphic-container"

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1122
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/DialogPane;->graphicContainer:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v7}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v7

    const-string v8, "graphic-container"

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1125
    :cond_3
    move-object v7, v0

    invoke-virtual {v7}, Ljavafx/scene/control/DialogPane;->getGraphic()Ljavafx/scene/Node;

    move-result-object v7

    move-object v4, v7

    .line 1126
    .local v4, "graphic":Ljavafx/scene/Node;
    move-object v7, v4

    if-eqz v7, :cond_4

    .line 1127
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/DialogPane;->graphicContainer:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v7}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v7

    move-object v8, v4

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v7

    .line 1129
    :cond_4
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/DialogPane;->headerTextPanel:Ljavafx/scene/layout/GridPane;

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/control/DialogPane;->graphicContainer:Ljavafx/scene/layout/StackPane;

    const/4 v9, 0x1

    const/4 v10, 0x0

    invoke-virtual {v7, v8, v9, v10}, Ljavafx/scene/layout/GridPane;->add(Ljavafx/scene/Node;II)V

    .line 1132
    new-instance v7, Ljavafx/scene/layout/ColumnConstraints;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljavafx/scene/layout/ColumnConstraints;-><init>()V

    move-object v5, v7

    .line 1133
    .local v5, "textColumn":Ljavafx/scene/layout/ColumnConstraints;
    move-object v7, v5

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljavafx/scene/layout/ColumnConstraints;->setFillWidth(Z)V

    .line 1134
    move-object v7, v5

    sget-object v8, Ljavafx/scene/layout/Priority;->ALWAYS:Ljavafx/scene/layout/Priority;

    invoke-virtual {v7, v8}, Ljavafx/scene/layout/ColumnConstraints;->setHgrow(Ljavafx/scene/layout/Priority;)V

    .line 1135
    new-instance v7, Ljavafx/scene/layout/ColumnConstraints;

    move-object v12, v7

    move-object v7, v12

    move-object v8, v12

    invoke-direct {v8}, Ljavafx/scene/layout/ColumnConstraints;-><init>()V

    move-object v6, v7

    .line 1136
    .local v6, "graphicColumn":Ljavafx/scene/layout/ColumnConstraints;
    move-object v7, v6

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Ljavafx/scene/layout/ColumnConstraints;->setFillWidth(Z)V

    .line 1137
    move-object v7, v6

    sget-object v8, Ljavafx/scene/layout/Priority;->NEVER:Ljavafx/scene/layout/Priority;

    invoke-virtual {v7, v8}, Ljavafx/scene/layout/ColumnConstraints;->setHgrow(Ljavafx/scene/layout/Priority;)V

    .line 1138
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/DialogPane;->headerTextPanel:Ljavafx/scene/layout/GridPane;

    invoke-virtual {v7}, Ljavafx/scene/layout/GridPane;->getColumnConstraints()Ljavafx/collections/ObservableList;

    move-result-object v7

    const/4 v8, 0x2

    new-array v8, v8, [Ljavafx/scene/layout/ColumnConstraints;

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x0

    move-object v11, v5

    aput-object v11, v9, v10

    move-object v12, v8

    move-object v8, v12

    move-object v9, v12

    const/4 v10, 0x1

    move-object v11, v6

    aput-object v11, v9, v10

    invoke-interface {v7, v8}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v7

    .line 1140
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/DialogPane;->headerTextPanel:Ljavafx/scene/layout/GridPane;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljavafx/scene/layout/GridPane;->setVisible(Z)V

    .line 1141
    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/control/DialogPane;->headerTextPanel:Ljavafx/scene/layout/GridPane;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Ljavafx/scene/layout/GridPane;->setManaged(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method protected computeMinHeight(D)D
    .locals 31

    .prologue
    .line 939
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/control/DialogPane;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/DialogPane;->hasHeader()Z

    move-result v24

    move/from16 v4, v24

    .line 941
    .local v4, "hasHeader":Z
    move/from16 v24, v4

    if-eqz v24, :cond_1

    move-object/from16 v24, v1

    invoke-direct/range {v24 .. v24}, Ljavafx/scene/control/DialogPane;->getActualHeader()Ljavafx/scene/Node;

    move-result-object v24

    move-wide/from16 v25, v2

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v24

    :goto_0
    move-wide/from16 v5, v24

    .line 942
    .local v5, "headerMinHeight":D
    move-object/from16 v24, v1

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/control/DialogPane;->buttonBar:Ljavafx/scene/Node;

    move-object/from16 v24, v0

    if-nez v24, :cond_2

    const-wide/16 v24, 0x0

    :goto_1
    move-wide/from16 v7, v24

    .line 944
    .local v7, "buttonBarMinHeight":D
    move-object/from16 v24, v1

    invoke-direct/range {v24 .. v24}, Ljavafx/scene/control/DialogPane;->getActualGraphic()Ljavafx/scene/Node;

    move-result-object v24

    move-object/from16 v9, v24

    .line 945
    .local v9, "graphic":Ljavafx/scene/Node;
    move/from16 v24, v4

    if-eqz v24, :cond_3

    const-wide/16 v24, 0x0

    :goto_2
    move-wide/from16 v10, v24

    .line 946
    .local v10, "graphicMinWidth":D
    move/from16 v24, v4

    if-eqz v24, :cond_4

    const-wide/16 v24, 0x0

    :goto_3
    move-wide/from16 v12, v24

    .line 949
    .local v12, "graphicMinHeight":D
    move-object/from16 v24, v1

    invoke-direct/range {v24 .. v24}, Ljavafx/scene/control/DialogPane;->getActualContent()Ljavafx/scene/Node;

    move-result-object v24

    move-object/from16 v14, v24

    .line 950
    .local v14, "content":Ljavafx/scene/Node;
    move-wide/from16 v24, v2

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_5

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    :goto_4
    move-wide/from16 v15, v24

    .line 952
    .local v15, "contentAvailableWidth":D
    move-object/from16 v24, v14

    move-wide/from16 v25, v15

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v24

    move-wide/from16 v17, v24

    .line 954
    .local v17, "contentMinHeight":D
    const-wide/16 v24, 0x0

    move-wide/from16 v19, v24

    .line 955
    .local v19, "expandableContentMinHeight":D
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/DialogPane;->getExpandableContent()Ljavafx/scene/Node;

    move-result-object v24

    move-object/from16 v21, v24

    .line 956
    .local v21, "expandableContent":Ljavafx/scene/Node;
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/DialogPane;->isExpanded()Z

    move-result v24

    if-eqz v24, :cond_0

    move-object/from16 v24, v21

    if-eqz v24, :cond_0

    .line 957
    move-object/from16 v24, v21

    move-wide/from16 v25, v2

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v24

    move-wide/from16 v19, v24

    .line 960
    :cond_0
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/DialogPane;->snappedTopInset()D

    move-result-wide v24

    move-wide/from16 v26, v5

    add-double v24, v24, v26

    move-wide/from16 v26, v12

    move-wide/from16 v28, v17

    .line 962
    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->max(DD)D

    move-result-wide v26

    add-double v24, v24, v26

    move-wide/from16 v26, v19

    add-double v24, v24, v26

    move-wide/from16 v26, v7

    add-double v24, v24, v26

    move-object/from16 v26, v1

    .line 965
    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/DialogPane;->snappedBottomInset()D

    move-result-wide v26

    add-double v24, v24, v26

    move-wide/from16 v22, v24

    .line 967
    .local v22, "minHeight":D
    move-object/from16 v24, v1

    move-wide/from16 v25, v22

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/control/DialogPane;->snapSize(D)D

    move-result-wide v24

    move-wide/from16 v1, v24

    .end local v1    # "this":Ljavafx/scene/control/DialogPane;
    return-wide v1

    .line 941
    .end local v5    # "headerMinHeight":D
    .end local v7    # "buttonBarMinHeight":D
    .end local v9    # "graphic":Ljavafx/scene/Node;
    .end local v10    # "graphicMinWidth":D
    .end local v12    # "graphicMinHeight":D
    .end local v14    # "content":Ljavafx/scene/Node;
    .end local v15    # "contentAvailableWidth":D
    .end local v17    # "contentMinHeight":D
    .end local v19    # "expandableContentMinHeight":D
    .end local v21    # "expandableContent":Ljavafx/scene/Node;
    .end local v22    # "minHeight":D
    .restart local v1    # "this":Ljavafx/scene/control/DialogPane;
    :cond_1
    const-wide/16 v24, 0x0

    goto/16 :goto_0

    .line 942
    .restart local v5    # "headerMinHeight":D
    :cond_2
    move-object/from16 v24, v1

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/control/DialogPane;->buttonBar:Ljavafx/scene/Node;

    move-object/from16 v24, v0

    move-wide/from16 v25, v2

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v24

    goto/16 :goto_1

    .line 945
    .restart local v7    # "buttonBarMinHeight":D
    .restart local v9    # "graphic":Ljavafx/scene/Node;
    :cond_3
    move-object/from16 v24, v9

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v24

    goto/16 :goto_2

    .line 946
    .restart local v10    # "graphicMinWidth":D
    :cond_4
    move-object/from16 v24, v9

    move-wide/from16 v25, v2

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->minHeight(D)D

    move-result-wide v24

    goto/16 :goto_3

    .line 950
    .restart local v12    # "graphicMinHeight":D
    .restart local v14    # "content":Ljavafx/scene/Node;
    :cond_5
    move/from16 v24, v4

    if-eqz v24, :cond_6

    move-wide/from16 v24, v2

    goto/16 :goto_4

    :cond_6
    move-wide/from16 v24, v2

    move-wide/from16 v26, v10

    sub-double v24, v24, v26

    goto/16 :goto_4
.end method

.method protected computeMinWidth(D)D
    .locals 27

    .prologue
    .line 918
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/control/DialogPane;
    move-wide/from16 v3, p1

    .local v3, "height":D
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/DialogPane;->hasHeader()Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Ljavafx/scene/control/DialogPane;->getActualHeader()Ljavafx/scene/Node;

    move-result-object v18

    move-wide/from16 v19, v3

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x4024000000000000L    # 10.0

    add-double v18, v18, v20

    :goto_0
    move-wide/from16 v5, v18

    .line 919
    .local v5, "headerMinWidth":D
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Ljavafx/scene/control/DialogPane;->getActualContent()Ljavafx/scene/Node;

    move-result-object v18

    move-wide/from16 v19, v3

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v18

    move-wide/from16 v7, v18

    .line 920
    .local v7, "contentMinWidth":D
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/control/DialogPane;->buttonBar:Ljavafx/scene/Node;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    const-wide/16 v18, 0x0

    :goto_1
    move-wide/from16 v9, v18

    .line 921
    .local v9, "buttonBarMinWidth":D
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Ljavafx/scene/control/DialogPane;->getActualGraphic()Ljavafx/scene/Node;

    move-result-object v18

    move-wide/from16 v19, v3

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v18

    move-wide/from16 v11, v18

    .line 923
    .local v11, "graphicMinWidth":D
    const-wide/16 v18, 0x0

    move-wide/from16 v13, v18

    .line 924
    .local v13, "expandableContentMinWidth":D
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/DialogPane;->getExpandableContent()Ljavafx/scene/Node;

    move-result-object v18

    move-object/from16 v15, v18

    .line 925
    .local v15, "expandableContent":Ljavafx/scene/Node;
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/DialogPane;->isExpanded()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v15

    if-eqz v18, :cond_0

    .line 926
    move-object/from16 v18, v15

    move-wide/from16 v19, v3

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 929
    :cond_0
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/DialogPane;->snappedLeftInset()D

    move-result-wide v18

    move-object/from16 v20, v2

    .line 930
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/DialogPane;->hasHeader()Z

    move-result v20

    if-eqz v20, :cond_3

    const-wide/16 v20, 0x0

    :goto_2
    add-double v18, v18, v20

    move-wide/from16 v20, v5

    move-wide/from16 v22, v13

    .line 931
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    move-wide/from16 v22, v7

    move-wide/from16 v24, v9

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    add-double v18, v18, v20

    move-object/from16 v20, v2

    .line 932
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/DialogPane;->snappedRightInset()D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v16, v18

    .line 934
    .local v16, "minWidth":D
    move-object/from16 v18, v2

    move-wide/from16 v19, v16

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/control/DialogPane;->snapSize(D)D

    move-result-wide v18

    move-wide/from16 v2, v18

    .end local v2    # "this":Ljavafx/scene/control/DialogPane;
    return-wide v2

    .line 918
    .end local v5    # "headerMinWidth":D
    .end local v7    # "contentMinWidth":D
    .end local v9    # "buttonBarMinWidth":D
    .end local v11    # "graphicMinWidth":D
    .end local v13    # "expandableContentMinWidth":D
    .end local v15    # "expandableContent":Ljavafx/scene/Node;
    .end local v16    # "minWidth":D
    .restart local v2    # "this":Ljavafx/scene/control/DialogPane;
    :cond_1
    const-wide/16 v18, 0x0

    goto/16 :goto_0

    .line 920
    .restart local v5    # "headerMinWidth":D
    .restart local v7    # "contentMinWidth":D
    :cond_2
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/control/DialogPane;->buttonBar:Ljavafx/scene/Node;

    move-object/from16 v18, v0

    move-wide/from16 v19, v3

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->minWidth(D)D

    move-result-wide v18

    goto/16 :goto_1

    .line 930
    .restart local v9    # "buttonBarMinWidth":D
    .restart local v11    # "graphicMinWidth":D
    .restart local v13    # "expandableContentMinWidth":D
    .restart local v15    # "expandableContent":Ljavafx/scene/Node;
    :cond_3
    move-wide/from16 v20, v11

    goto :goto_2
.end method

.method protected computePrefHeight(D)D
    .locals 31

    .prologue
    .line 993
    move-object/from16 v1, p0

    .local v1, "this":Ljavafx/scene/control/DialogPane;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/DialogPane;->hasHeader()Z

    move-result v24

    move/from16 v4, v24

    .line 995
    .local v4, "hasHeader":Z
    move/from16 v24, v4

    if-eqz v24, :cond_1

    move-object/from16 v24, v1

    invoke-direct/range {v24 .. v24}, Ljavafx/scene/control/DialogPane;->getActualHeader()Ljavafx/scene/Node;

    move-result-object v24

    move-wide/from16 v25, v2

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v24

    :goto_0
    move-wide/from16 v5, v24

    .line 996
    .local v5, "headerPrefHeight":D
    move-object/from16 v24, v1

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/control/DialogPane;->buttonBar:Ljavafx/scene/Node;

    move-object/from16 v24, v0

    if-nez v24, :cond_2

    const-wide/16 v24, 0x0

    :goto_1
    move-wide/from16 v7, v24

    .line 998
    .local v7, "buttonBarPrefHeight":D
    move-object/from16 v24, v1

    invoke-direct/range {v24 .. v24}, Ljavafx/scene/control/DialogPane;->getActualGraphic()Ljavafx/scene/Node;

    move-result-object v24

    move-object/from16 v9, v24

    .line 999
    .local v9, "graphic":Ljavafx/scene/Node;
    move/from16 v24, v4

    if-eqz v24, :cond_3

    const-wide/16 v24, 0x0

    :goto_2
    move-wide/from16 v10, v24

    .line 1000
    .local v10, "graphicPrefWidth":D
    move/from16 v24, v4

    if-eqz v24, :cond_4

    const-wide/16 v24, 0x0

    :goto_3
    move-wide/from16 v12, v24

    .line 1002
    .local v12, "graphicPrefHeight":D
    move-object/from16 v24, v1

    invoke-direct/range {v24 .. v24}, Ljavafx/scene/control/DialogPane;->getActualContent()Ljavafx/scene/Node;

    move-result-object v24

    move-object/from16 v14, v24

    .line 1003
    .local v14, "content":Ljavafx/scene/Node;
    move-wide/from16 v24, v2

    const-wide/high16 v26, -0x4010000000000000L    # -1.0

    cmpl-double v24, v24, v26

    if-nez v24, :cond_5

    const-wide/high16 v24, -0x4010000000000000L    # -1.0

    :goto_4
    move-wide/from16 v15, v24

    .line 1005
    .local v15, "contentAvailableWidth":D
    move-object/from16 v24, v14

    move-wide/from16 v25, v15

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v24

    move-wide/from16 v17, v24

    .line 1007
    .local v17, "contentPrefHeight":D
    const-wide/16 v24, 0x0

    move-wide/from16 v19, v24

    .line 1008
    .local v19, "expandableContentPrefHeight":D
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/DialogPane;->getExpandableContent()Ljavafx/scene/Node;

    move-result-object v24

    move-object/from16 v21, v24

    .line 1009
    .local v21, "expandableContent":Ljavafx/scene/Node;
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/DialogPane;->isExpanded()Z

    move-result v24

    if-eqz v24, :cond_0

    move-object/from16 v24, v21

    if-eqz v24, :cond_0

    .line 1010
    move-object/from16 v24, v21

    move-wide/from16 v25, v2

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v24

    move-wide/from16 v19, v24

    .line 1013
    :cond_0
    move-object/from16 v24, v1

    invoke-virtual/range {v24 .. v24}, Ljavafx/scene/control/DialogPane;->snappedTopInset()D

    move-result-wide v24

    move-wide/from16 v26, v5

    add-double v24, v24, v26

    move-wide/from16 v26, v12

    move-wide/from16 v28, v17

    .line 1015
    invoke-static/range {v26 .. v29}, Ljava/lang/Math;->max(DD)D

    move-result-wide v26

    add-double v24, v24, v26

    move-wide/from16 v26, v19

    add-double v24, v24, v26

    move-wide/from16 v26, v7

    add-double v24, v24, v26

    move-object/from16 v26, v1

    .line 1018
    invoke-virtual/range {v26 .. v26}, Ljavafx/scene/control/DialogPane;->snappedBottomInset()D

    move-result-wide v26

    add-double v24, v24, v26

    move-wide/from16 v22, v24

    .line 1020
    .local v22, "prefHeight":D
    move-object/from16 v24, v1

    move-wide/from16 v25, v22

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/control/DialogPane;->snapSize(D)D

    move-result-wide v24

    move-wide/from16 v1, v24

    .end local v1    # "this":Ljavafx/scene/control/DialogPane;
    return-wide v1

    .line 995
    .end local v5    # "headerPrefHeight":D
    .end local v7    # "buttonBarPrefHeight":D
    .end local v9    # "graphic":Ljavafx/scene/Node;
    .end local v10    # "graphicPrefWidth":D
    .end local v12    # "graphicPrefHeight":D
    .end local v14    # "content":Ljavafx/scene/Node;
    .end local v15    # "contentAvailableWidth":D
    .end local v17    # "contentPrefHeight":D
    .end local v19    # "expandableContentPrefHeight":D
    .end local v21    # "expandableContent":Ljavafx/scene/Node;
    .end local v22    # "prefHeight":D
    .restart local v1    # "this":Ljavafx/scene/control/DialogPane;
    :cond_1
    const-wide/16 v24, 0x0

    goto/16 :goto_0

    .line 996
    .restart local v5    # "headerPrefHeight":D
    :cond_2
    move-object/from16 v24, v1

    move-object/from16 v0, v24

    iget-object v0, v0, Ljavafx/scene/control/DialogPane;->buttonBar:Ljavafx/scene/Node;

    move-object/from16 v24, v0

    move-wide/from16 v25, v2

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v24

    goto/16 :goto_1

    .line 999
    .restart local v7    # "buttonBarPrefHeight":D
    .restart local v9    # "graphic":Ljavafx/scene/Node;
    :cond_3
    move-object/from16 v24, v9

    const-wide/high16 v25, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v24

    goto/16 :goto_2

    .line 1000
    .restart local v10    # "graphicPrefWidth":D
    :cond_4
    move-object/from16 v24, v9

    move-wide/from16 v25, v2

    invoke-virtual/range {v24 .. v26}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v24

    goto/16 :goto_3

    .line 1003
    .restart local v12    # "graphicPrefHeight":D
    .restart local v14    # "content":Ljavafx/scene/Node;
    :cond_5
    move/from16 v24, v4

    if-eqz v24, :cond_6

    move-wide/from16 v24, v2

    goto/16 :goto_4

    :cond_6
    move-wide/from16 v24, v2

    move-wide/from16 v26, v10

    sub-double v24, v24, v26

    goto/16 :goto_4
.end method

.method protected computePrefWidth(D)D
    .locals 27

    .prologue
    .line 972
    move-object/from16 v2, p0

    .local v2, "this":Ljavafx/scene/control/DialogPane;
    move-wide/from16 v3, p1

    .local v3, "height":D
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/DialogPane;->hasHeader()Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Ljavafx/scene/control/DialogPane;->getActualHeader()Ljavafx/scene/Node;

    move-result-object v18

    move-wide/from16 v19, v3

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v18

    const-wide/high16 v20, 0x4024000000000000L    # 10.0

    add-double v18, v18, v20

    :goto_0
    move-wide/from16 v5, v18

    .line 973
    .local v5, "headerPrefWidth":D
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Ljavafx/scene/control/DialogPane;->getActualContent()Ljavafx/scene/Node;

    move-result-object v18

    move-wide/from16 v19, v3

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v18

    move-wide/from16 v7, v18

    .line 974
    .local v7, "contentPrefWidth":D
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/control/DialogPane;->buttonBar:Ljavafx/scene/Node;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    const-wide/16 v18, 0x0

    :goto_1
    move-wide/from16 v9, v18

    .line 975
    .local v9, "buttonBarPrefWidth":D
    move-object/from16 v18, v2

    invoke-direct/range {v18 .. v18}, Ljavafx/scene/control/DialogPane;->getActualGraphic()Ljavafx/scene/Node;

    move-result-object v18

    move-wide/from16 v19, v3

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v18

    move-wide/from16 v11, v18

    .line 977
    .local v11, "graphicPrefWidth":D
    const-wide/16 v18, 0x0

    move-wide/from16 v13, v18

    .line 978
    .local v13, "expandableContentPrefWidth":D
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/DialogPane;->getExpandableContent()Ljavafx/scene/Node;

    move-result-object v18

    move-object/from16 v15, v18

    .line 979
    .local v15, "expandableContent":Ljavafx/scene/Node;
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/DialogPane;->isExpanded()Z

    move-result v18

    if-eqz v18, :cond_0

    move-object/from16 v18, v15

    if-eqz v18, :cond_0

    .line 980
    move-object/from16 v18, v15

    move-wide/from16 v19, v3

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v18

    move-wide/from16 v13, v18

    .line 983
    :cond_0
    move-object/from16 v18, v2

    invoke-virtual/range {v18 .. v18}, Ljavafx/scene/control/DialogPane;->snappedLeftInset()D

    move-result-wide v18

    move-object/from16 v20, v2

    .line 984
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/DialogPane;->hasHeader()Z

    move-result v20

    if-eqz v20, :cond_3

    const-wide/16 v20, 0x0

    :goto_2
    add-double v18, v18, v20

    move-wide/from16 v20, v5

    move-wide/from16 v22, v13

    .line 985
    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    move-wide/from16 v22, v7

    move-wide/from16 v24, v9

    invoke-static/range {v22 .. v25}, Ljava/lang/Math;->max(DD)D

    move-result-wide v22

    invoke-static/range {v20 .. v23}, Ljava/lang/Math;->max(DD)D

    move-result-wide v20

    add-double v18, v18, v20

    move-object/from16 v20, v2

    .line 986
    invoke-virtual/range {v20 .. v20}, Ljavafx/scene/control/DialogPane;->snappedRightInset()D

    move-result-wide v20

    add-double v18, v18, v20

    move-wide/from16 v16, v18

    .line 988
    .local v16, "prefWidth":D
    move-object/from16 v18, v2

    move-wide/from16 v19, v16

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/control/DialogPane;->snapSize(D)D

    move-result-wide v18

    move-wide/from16 v2, v18

    .end local v2    # "this":Ljavafx/scene/control/DialogPane;
    return-wide v2

    .line 972
    .end local v5    # "headerPrefWidth":D
    .end local v7    # "contentPrefWidth":D
    .end local v9    # "buttonBarPrefWidth":D
    .end local v11    # "graphicPrefWidth":D
    .end local v13    # "expandableContentPrefWidth":D
    .end local v15    # "expandableContent":Ljavafx/scene/Node;
    .end local v16    # "prefWidth":D
    .restart local v2    # "this":Ljavafx/scene/control/DialogPane;
    :cond_1
    const-wide/16 v18, 0x0

    goto/16 :goto_0

    .line 974
    .restart local v5    # "headerPrefWidth":D
    .restart local v7    # "contentPrefWidth":D
    :cond_2
    move-object/from16 v18, v2

    move-object/from16 v0, v18

    iget-object v0, v0, Ljavafx/scene/control/DialogPane;->buttonBar:Ljavafx/scene/Node;

    move-object/from16 v18, v0

    move-wide/from16 v19, v3

    invoke-virtual/range {v18 .. v20}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v18

    goto/16 :goto_1

    .line 984
    .restart local v9    # "buttonBarPrefWidth":D
    .restart local v11    # "graphicPrefWidth":D
    .restart local v13    # "expandableContentPrefWidth":D
    .restart local v15    # "expandableContent":Ljavafx/scene/Node;
    :cond_3
    move-wide/from16 v20, v11

    goto :goto_2
.end method

.method public final contentProperty()Ljavafx/beans/property/ObjectProperty;
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
    .line 560
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane;->content:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return-object v0
.end method

.method public final contentTextProperty()Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 596
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane;->contentText:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return-object v0
.end method

.method protected createButton(Ljavafx/scene/control/ButtonType;)Ljavafx/scene/Node;
    .locals 9

    .prologue
    .line 769
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, p1

    .local v1, "buttonType":Ljavafx/scene/control/ButtonType;
    new-instance v4, Ljavafx/scene/control/Button;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/control/ButtonType;->getText()Ljava/lang/String;

    move-result-object v6

    invoke-direct {v5, v6}, Ljavafx/scene/control/Button;-><init>(Ljava/lang/String;)V

    move-object v2, v4

    .line 770
    .local v2, "button":Ljavafx/scene/control/Button;
    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/control/ButtonType;->getButtonData()Ljavafx/scene/control/ButtonBar$ButtonData;

    move-result-object v4

    move-object v3, v4

    .line 771
    .local v3, "buttonData":Ljavafx/scene/control/ButtonBar$ButtonData;
    move-object v4, v2

    move-object v5, v3

    invoke-static {v4, v5}, Ljavafx/scene/control/ButtonBar;->setButtonData(Ljavafx/scene/Node;Ljavafx/scene/control/ButtonBar$ButtonData;)V

    .line 772
    move-object v4, v2

    move-object v5, v1

    if-eqz v5, :cond_0

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/ButtonBar$ButtonData;->isDefaultButton()Z

    move-result v5

    if-eqz v5, :cond_0

    const/4 v5, 0x1

    :goto_0
    invoke-virtual {v4, v5}, Ljavafx/scene/control/Button;->setDefaultButton(Z)V

    .line 773
    move-object v4, v2

    move-object v5, v1

    if-eqz v5, :cond_1

    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/control/ButtonBar$ButtonData;->isCancelButton()Z

    move-result v5

    if-eqz v5, :cond_1

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v4, v5}, Ljavafx/scene/control/Button;->setCancelButton(Z)V

    .line 774
    move-object v4, v2

    sget-object v5, Ljavafx/event/ActionEvent;->ACTION:Ljavafx/event/EventType;

    move-object v6, v0

    move-object v7, v1

    invoke-static {v6, v7}, Ljavafx/scene/control/DialogPane$$Lambda$4;->lambdaFactory$(Ljavafx/scene/control/DialogPane;Ljavafx/scene/control/ButtonType;)Ljavafx/event/EventHandler;

    move-result-object v6

    invoke-virtual {v4, v5, v6}, Ljavafx/scene/control/Button;->addEventHandler(Ljavafx/event/EventType;Ljavafx/event/EventHandler;)V

    .line 781
    move-object v4, v2

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return-object v0

    .line 772
    .restart local v0    # "this":Ljavafx/scene/control/DialogPane;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 773
    :cond_1
    const/4 v5, 0x0

    goto :goto_1
.end method

.method protected createButtonBar()Ljavafx/scene/Node;
    .locals 7

    .prologue
    .line 748
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/control/DialogPane;
    new-instance v3, Ljavafx/scene/control/ButtonBar;

    move-object v6, v3

    move-object v3, v6

    move-object v4, v6

    invoke-direct {v4}, Ljavafx/scene/control/ButtonBar;-><init>()V

    move-object v2, v3

    .line 749
    .local v2, "buttonBar":Ljavafx/scene/control/ButtonBar;
    move-object v3, v2

    const-wide v4, 0x7fefffffffffffffL    # Double.MAX_VALUE

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ButtonBar;->setMaxWidth(D)V

    .line 751
    move-object v3, v1

    move-object v4, v2

    invoke-direct {v3, v4}, Ljavafx/scene/control/DialogPane;->updateButtons(Ljavafx/scene/control/ButtonBar;)V

    .line 752
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->getButtonTypes()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Ljavafx/scene/control/DialogPane$$Lambda$2;->lambdaFactory$(Ljavafx/scene/control/DialogPane;Ljavafx/scene/control/ButtonBar;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 753
    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/control/DialogPane;->expandableContentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v3

    move-object v4, v1

    move-object v5, v2

    invoke-static {v4, v5}, Ljavafx/scene/control/DialogPane$$Lambda$3;->lambdaFactory$(Ljavafx/scene/control/DialogPane;Ljavafx/scene/control/ButtonBar;)Ljavafx/beans/InvalidationListener;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 755
    move-object v3, v2

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/control/DialogPane;
    return-object v1
.end method

.method protected createDetailsButton()Ljavafx/scene/Node;
    .locals 10

    .prologue
    .line 799
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    new-instance v5, Ljavafx/scene/control/Hyperlink;

    move-object v9, v5

    move-object v5, v9

    move-object v6, v9

    invoke-direct {v6}, Ljavafx/scene/control/Hyperlink;-><init>()V

    move-object v1, v5

    .line 800
    .local v1, "detailsButton":Ljavafx/scene/control/Hyperlink;
    const-string v5, "Dialog.detail.button.more"

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v2, v5

    .line 801
    .local v2, "moreText":Ljava/lang/String;
    const-string v5, "Dialog.detail.button.less"

    invoke-static {v5}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    move-object v3, v5

    .line 803
    .local v3, "lessText":Ljava/lang/String;
    move-object v5, v0

    move-object v6, v1

    move-object v7, v3

    move-object v8, v2

    invoke-static {v5, v6, v7, v8}, Ljavafx/scene/control/DialogPane$$Lambda$5;->lambdaFactory$(Ljavafx/scene/control/DialogPane;Ljavafx/scene/control/Hyperlink;Ljava/lang/String;Ljava/lang/String;)Ljavafx/beans/InvalidationListener;

    move-result-object v5

    move-object v4, v5

    .line 810
    .local v4, "expandedListener":Ljavafx/beans/InvalidationListener;
    move-object v5, v4

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Ljavafx/beans/InvalidationListener;->invalidated(Ljavafx/beans/Observable;)V

    .line 811
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/control/DialogPane;->expandedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v5

    move-object v6, v4

    invoke-virtual {v5, v6}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/InvalidationListener;)V

    .line 813
    move-object v5, v1

    move-object v6, v0

    invoke-static {v6}, Ljavafx/scene/control/DialogPane$$Lambda$6;->lambdaFactory$(Ljavafx/scene/control/DialogPane;)Ljavafx/event/EventHandler;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/control/Hyperlink;->setOnAction(Ljavafx/event/EventHandler;)V

    .line 814
    move-object v5, v1

    move-object v0, v5

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return-object v0
.end method

.method public final expandableContentProperty()Ljavafx/beans/property/ObjectProperty;
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
    .line 631
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane;->expandableContentProperty:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return-object v0
.end method

.method public final expandedProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 668
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane;->expandedProperty:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return-object v0
.end method

.method public final getButtonTypes()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/control/ButtonType;",
            ">;"
        }
    .end annotation

    .prologue
    .line 709
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane;->buttons:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return-object v0
.end method

.method public final getContent()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 543
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane;->content:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return-object v0
.end method

.method public final getContentText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 586
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane;->contentText:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
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
    .line 1233
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    invoke-static {}, Ljavafx/scene/control/DialogPane;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return-object v0
.end method

.method public final getExpandableContent()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 639
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane;->expandableContentProperty:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return-object v0
.end method

.method public final getGraphic()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 293
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane;->graphicProperty:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return-object v0
.end method

.method public final getHeader()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 451
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane;->header:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return-object v0
.end method

.method public final getHeaderText()Ljava/lang/String;
    .locals 2

    .prologue
    .line 502
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane;->headerText:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return-object v0
.end method

.method public final graphicProperty()Ljavafx/beans/property/ObjectProperty;
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
    .line 289
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane;->graphicProperty:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return-object v0
.end method

.method hasExpandableContent()Z
    .locals 2

    .prologue
    .line 1177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/DialogPane;->getExpandableContent()Ljavafx/scene/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/DialogPane;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method hasHeader()Z
    .locals 2

    .prologue
    .line 1168
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/DialogPane;->getHeader()Ljavafx/scene/Node;

    move-result-object v1

    if-nez v1, :cond_0

    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/DialogPane;->isTextHeader()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/DialogPane;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public final headerProperty()Ljavafx/beans/property/ObjectProperty;
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
    .line 471
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane;->header:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return-object v0
.end method

.method public final headerTextProperty()Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 516
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/DialogPane;->headerText:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return-object v0
.end method

.method public final isExpanded()Z
    .locals 2

    .prologue
    .line 677
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/DialogPane;->expandedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return v0
.end method

.method protected layoutChildren()V
    .locals 63

    .prologue
    .line 821
    move-object/from16 v4, p0

    .local v4, "this":Ljavafx/scene/control/DialogPane;
    move-object/from16 v52, v4

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/control/DialogPane;->hasHeader()Z

    move-result v52

    move/from16 v5, v52

    .line 824
    .local v5, "hasHeader":Z
    move-object/from16 v52, v4

    const-wide/high16 v53, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v52 .. v54}, Ljavafx/scene/control/DialogPane;->minWidth(D)D

    move-result-wide v52

    move-object/from16 v54, v4

    invoke-virtual/range {v54 .. v54}, Ljavafx/scene/control/DialogPane;->getWidth()D

    move-result-wide v54

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->max(DD)D

    move-result-wide v52

    move-wide/from16 v6, v52

    .line 826
    .local v6, "w":D
    move-object/from16 v52, v4

    move-wide/from16 v53, v6

    invoke-virtual/range {v52 .. v54}, Ljavafx/scene/control/DialogPane;->minHeight(D)D

    move-result-wide v52

    move-wide/from16 v8, v52

    .line 827
    .local v8, "minHeight":D
    move-object/from16 v52, v4

    move-wide/from16 v53, v6

    invoke-virtual/range {v52 .. v54}, Ljavafx/scene/control/DialogPane;->prefHeight(D)D

    move-result-wide v52

    move-wide/from16 v10, v52

    .line 828
    .local v10, "prefHeight":D
    move-object/from16 v52, v4

    move-wide/from16 v53, v6

    invoke-virtual/range {v52 .. v54}, Ljavafx/scene/control/DialogPane;->maxHeight(D)D

    move-result-wide v52

    move-wide/from16 v12, v52

    .line 829
    .local v12, "maxHeight":D
    move-object/from16 v52, v4

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/control/DialogPane;->getHeight()D

    move-result-wide v52

    move-wide/from16 v14, v52

    .line 830
    .local v14, "currentHeight":D
    move-object/from16 v52, v4

    move-object/from16 v0, v52

    iget-object v0, v0, Ljavafx/scene/control/DialogPane;->dialog:Ljavafx/scene/control/Dialog;

    move-object/from16 v52, v0

    if-nez v52, :cond_6

    const-wide/16 v52, 0x0

    :goto_0
    move-wide/from16 v16, v52

    .line 833
    .local v16, "dialogHeight":D
    move-wide/from16 v52, v10

    move-wide/from16 v54, v14

    cmpl-double v52, v52, v54

    if-lez v52, :cond_7

    move-wide/from16 v52, v10

    move-wide/from16 v54, v8

    cmpl-double v52, v52, v54

    if-lez v52, :cond_7

    move-wide/from16 v52, v10

    move-wide/from16 v54, v16

    cmpg-double v52, v52, v54

    if-lez v52, :cond_0

    move-wide/from16 v52, v16

    const-wide/16 v54, 0x0

    cmpl-double v52, v52, v54

    if-nez v52, :cond_7

    .line 834
    :cond_0
    move-wide/from16 v52, v10

    move-wide/from16 v18, v52

    .line 835
    .local v18, "h":D
    move-object/from16 v52, v4

    move-wide/from16 v53, v6

    move-wide/from16 v55, v18

    invoke-virtual/range {v52 .. v56}, Ljavafx/scene/control/DialogPane;->resize(DD)V

    .line 849
    :goto_1
    move-wide/from16 v52, v18

    move-object/from16 v54, v4

    invoke-virtual/range {v54 .. v54}, Ljavafx/scene/control/DialogPane;->snappedTopInset()D

    move-result-wide v54

    move-object/from16 v56, v4

    invoke-virtual/range {v56 .. v56}, Ljavafx/scene/control/DialogPane;->snappedBottomInset()D

    move-result-wide v56

    add-double v54, v54, v56

    sub-double v52, v52, v54

    move-wide/from16 v18, v52

    .line 851
    move-object/from16 v52, v4

    move-wide/from16 v53, v18

    move-wide/from16 v0, v53

    move-object/from16 v2, v52

    iput-wide v0, v2, Ljavafx/scene/control/DialogPane;->oldHeight:D

    .line 853
    move-object/from16 v52, v4

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/control/DialogPane;->snappedLeftInset()D

    move-result-wide v52

    move-wide/from16 v20, v52

    .line 854
    .local v20, "leftPadding":D
    move-object/from16 v52, v4

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/control/DialogPane;->snappedTopInset()D

    move-result-wide v52

    move-wide/from16 v22, v52

    .line 855
    .local v22, "topPadding":D
    move-object/from16 v52, v4

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/control/DialogPane;->snappedRightInset()D

    move-result-wide v52

    move-wide/from16 v24, v52

    .line 856
    .local v24, "rightPadding":D
    move-object/from16 v52, v4

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/control/DialogPane;->snappedBottomInset()D

    move-result-wide v52

    move-wide/from16 v26, v52

    .line 859
    .local v26, "bottomPadding":D
    move-object/from16 v52, v4

    invoke-direct/range {v52 .. v52}, Ljavafx/scene/control/DialogPane;->getActualHeader()Ljavafx/scene/Node;

    move-result-object v52

    move-object/from16 v28, v52

    .line 860
    .local v28, "header":Ljavafx/scene/Node;
    move-object/from16 v52, v4

    invoke-direct/range {v52 .. v52}, Ljavafx/scene/control/DialogPane;->getActualContent()Ljavafx/scene/Node;

    move-result-object v52

    move-object/from16 v29, v52

    .line 861
    .local v29, "content":Ljavafx/scene/Node;
    move-object/from16 v52, v4

    invoke-direct/range {v52 .. v52}, Ljavafx/scene/control/DialogPane;->getActualGraphic()Ljavafx/scene/Node;

    move-result-object v52

    move-object/from16 v30, v52

    .line 862
    .local v30, "graphic":Ljavafx/scene/Node;
    move-object/from16 v52, v4

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/control/DialogPane;->getExpandableContent()Ljavafx/scene/Node;

    move-result-object v52

    move-object/from16 v31, v52

    .line 864
    .local v31, "expandableContent":Ljavafx/scene/Node;
    move/from16 v52, v5

    if-nez v52, :cond_1

    move-object/from16 v52, v30

    if-nez v52, :cond_b

    :cond_1
    const-wide/16 v52, 0x0

    :goto_2
    move-wide/from16 v32, v52

    .line 865
    .local v32, "graphicPrefWidth":D
    move/from16 v52, v5

    if-eqz v52, :cond_c

    move-object/from16 v52, v28

    move-wide/from16 v53, v6

    invoke-virtual/range {v52 .. v54}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v52

    :goto_3
    move-wide/from16 v34, v52

    .line 866
    .local v34, "headerPrefHeight":D
    move-object/from16 v52, v4

    move-object/from16 v0, v52

    iget-object v0, v0, Ljavafx/scene/control/DialogPane;->buttonBar:Ljavafx/scene/Node;

    move-object/from16 v52, v0

    if-nez v52, :cond_d

    const-wide/16 v52, 0x0

    :goto_4
    move-wide/from16 v36, v52

    .line 867
    .local v36, "buttonBarPrefHeight":D
    move/from16 v52, v5

    if-nez v52, :cond_2

    move-object/from16 v52, v30

    if-nez v52, :cond_e

    :cond_2
    const-wide/16 v52, 0x0

    :goto_5
    move-wide/from16 v38, v52

    .line 873
    .local v38, "graphicPrefHeight":D
    move-wide/from16 v52, v6

    move-wide/from16 v54, v32

    sub-double v52, v52, v54

    move-wide/from16 v54, v20

    sub-double v52, v52, v54

    move-wide/from16 v54, v24

    sub-double v52, v52, v54

    move-wide/from16 v46, v52

    .line 875
    .local v46, "availableContentWidth":D
    move-object/from16 v52, v4

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/control/DialogPane;->isExpanded()Z

    move-result v52

    if-eqz v52, :cond_11

    .line 877
    move-object/from16 v52, v4

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/control/DialogPane;->isExpanded()Z

    move-result v52

    if-eqz v52, :cond_f

    move-object/from16 v52, v29

    move-wide/from16 v53, v46

    invoke-virtual/range {v52 .. v54}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v52

    :goto_6
    move-wide/from16 v42, v52

    .line 878
    .local v42, "contentAreaHeight":D
    move/from16 v52, v5

    if-eqz v52, :cond_10

    move-wide/from16 v52, v42

    :goto_7
    move-wide/from16 v44, v52

    .line 879
    .local v44, "contentAndGraphicHeight":D
    move-wide/from16 v52, v18

    move-wide/from16 v54, v34

    move-wide/from16 v56, v44

    add-double v54, v54, v56

    move-wide/from16 v56, v36

    add-double v54, v54, v56

    sub-double v52, v52, v54

    move-wide/from16 v40, v52

    .line 887
    .local v40, "expandableContentPrefHeight":D
    :goto_8
    move-wide/from16 v52, v20

    move-wide/from16 v48, v52

    .line 888
    .local v48, "x":D
    move-wide/from16 v52, v22

    move-wide/from16 v50, v52

    .line 890
    .local v50, "y":D
    move/from16 v52, v5

    if-nez v52, :cond_14

    .line 891
    move-object/from16 v52, v30

    if-eqz v52, :cond_3

    .line 892
    move-object/from16 v52, v30

    move-wide/from16 v53, v48

    move-wide/from16 v55, v50

    move-wide/from16 v57, v32

    move-wide/from16 v59, v38

    invoke-virtual/range {v52 .. v60}, Ljavafx/scene/Node;->resizeRelocate(DDDD)V

    .line 893
    move-wide/from16 v52, v48

    move-wide/from16 v54, v32

    add-double v52, v52, v54

    move-wide/from16 v48, v52

    .line 900
    :cond_3
    :goto_9
    move-object/from16 v52, v29

    move-wide/from16 v53, v48

    move-wide/from16 v55, v50

    move-wide/from16 v57, v46

    move-wide/from16 v59, v42

    invoke-virtual/range {v52 .. v60}, Ljavafx/scene/Node;->resizeRelocate(DDDD)V

    .line 901
    move-wide/from16 v52, v50

    move/from16 v54, v5

    if-eqz v54, :cond_15

    move-wide/from16 v54, v42

    :goto_a
    add-double v52, v52, v54

    move-wide/from16 v50, v52

    .line 903
    move-object/from16 v52, v31

    if-eqz v52, :cond_4

    .line 904
    move-object/from16 v52, v31

    move-wide/from16 v53, v20

    move-wide/from16 v55, v50

    move-wide/from16 v57, v6

    move-wide/from16 v59, v24

    sub-double v57, v57, v59

    move-wide/from16 v59, v40

    invoke-virtual/range {v52 .. v60}, Ljavafx/scene/Node;->resizeRelocate(DDDD)V

    .line 905
    move-wide/from16 v52, v50

    move-wide/from16 v54, v40

    add-double v52, v52, v54

    move-wide/from16 v50, v52

    .line 908
    :cond_4
    move-object/from16 v52, v4

    move-object/from16 v0, v52

    iget-object v0, v0, Ljavafx/scene/control/DialogPane;->buttonBar:Ljavafx/scene/Node;

    move-object/from16 v52, v0

    if-eqz v52, :cond_5

    .line 909
    move-object/from16 v52, v4

    move-object/from16 v0, v52

    iget-object v0, v0, Ljavafx/scene/control/DialogPane;->buttonBar:Ljavafx/scene/Node;

    move-object/from16 v52, v0

    move-wide/from16 v53, v20

    move-wide/from16 v55, v50

    move-wide/from16 v57, v6

    move-wide/from16 v59, v20

    move-wide/from16 v61, v24

    add-double v59, v59, v61

    sub-double v57, v57, v59

    move-wide/from16 v59, v36

    invoke-virtual/range {v52 .. v60}, Ljavafx/scene/Node;->resizeRelocate(DDDD)V

    .line 914
    :cond_5
    return-void

    .line 830
    .end local v16    # "dialogHeight":D
    .end local v18    # "h":D
    .end local v20    # "leftPadding":D
    .end local v22    # "topPadding":D
    .end local v24    # "rightPadding":D
    .end local v26    # "bottomPadding":D
    .end local v28    # "header":Ljavafx/scene/Node;
    .end local v29    # "content":Ljavafx/scene/Node;
    .end local v30    # "graphic":Ljavafx/scene/Node;
    .end local v31    # "expandableContent":Ljavafx/scene/Node;
    .end local v32    # "graphicPrefWidth":D
    .end local v34    # "headerPrefHeight":D
    .end local v36    # "buttonBarPrefHeight":D
    .end local v38    # "graphicPrefHeight":D
    .end local v40    # "expandableContentPrefHeight":D
    .end local v42    # "contentAreaHeight":D
    .end local v44    # "contentAndGraphicHeight":D
    .end local v46    # "availableContentWidth":D
    .end local v48    # "x":D
    .end local v50    # "y":D
    :cond_6
    move-object/from16 v52, v4

    move-object/from16 v0, v52

    iget-object v0, v0, Ljavafx/scene/control/DialogPane;->dialog:Ljavafx/scene/control/Dialog;

    move-object/from16 v52, v0

    move-object/from16 v0, v52

    iget-object v0, v0, Ljavafx/scene/control/Dialog;->dialog:Ljavafx/scene/control/FXDialog;

    move-object/from16 v52, v0

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/control/FXDialog;->getSceneHeight()D

    move-result-wide v52

    goto/16 :goto_0

    .line 837
    .restart local v16    # "dialogHeight":D
    :cond_7
    move-wide/from16 v52, v14

    move-object/from16 v54, v4

    move-object/from16 v0, v54

    iget-wide v0, v0, Ljavafx/scene/control/DialogPane;->oldHeight:D

    move-wide/from16 v54, v0

    cmpl-double v52, v52, v54

    if-lez v52, :cond_8

    const/16 v52, 0x1

    :goto_b
    move/from16 v20, v52

    .line 839
    .local v20, "isDialogGrowing":Z
    move/from16 v52, v20

    if-eqz v52, :cond_a

    .line 840
    move-wide/from16 v52, v14

    move-wide/from16 v54, v10

    cmpg-double v52, v52, v54

    if-gez v52, :cond_9

    move-wide/from16 v52, v10

    move-wide/from16 v54, v14

    .line 841
    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->min(DD)D

    move-result-wide v52

    :goto_c
    move-wide/from16 v21, v52

    .line 842
    .local v21, "_h":D
    move-wide/from16 v52, v21

    move-wide/from16 v54, v8

    move-wide/from16 v56, v12

    invoke-static/range {v52 .. v57}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v52

    move-wide/from16 v18, v52

    .line 846
    .end local v21    # "_h":D
    .restart local v18    # "h":D
    :goto_d
    move-object/from16 v52, v4

    move-wide/from16 v53, v6

    move-wide/from16 v55, v18

    invoke-virtual/range {v52 .. v56}, Ljavafx/scene/control/DialogPane;->resize(DD)V

    goto/16 :goto_1

    .line 837
    .end local v18    # "h":D
    .end local v20    # "isDialogGrowing":Z
    :cond_8
    const/16 v52, 0x0

    goto :goto_b

    .line 841
    .restart local v20    # "isDialogGrowing":Z
    :cond_9
    move-wide/from16 v52, v10

    move-wide/from16 v54, v16

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->max(DD)D

    move-result-wide v52

    goto :goto_c

    .line 844
    :cond_a
    move-wide/from16 v52, v14

    move-wide/from16 v54, v16

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->min(DD)D

    move-result-wide v52

    move-wide/from16 v54, v8

    move-wide/from16 v56, v12

    invoke-static/range {v52 .. v57}, Lcom/sun/javafx/scene/control/skin/Utils;->boundedSize(DDD)D

    move-result-wide v52

    move-wide/from16 v18, v52

    .restart local v18    # "h":D
    goto :goto_d

    .line 864
    .local v20, "leftPadding":D
    .restart local v22    # "topPadding":D
    .restart local v24    # "rightPadding":D
    .restart local v26    # "bottomPadding":D
    .restart local v28    # "header":Ljavafx/scene/Node;
    .restart local v29    # "content":Ljavafx/scene/Node;
    .restart local v30    # "graphic":Ljavafx/scene/Node;
    .restart local v31    # "expandableContent":Ljavafx/scene/Node;
    :cond_b
    move-object/from16 v52, v30

    const-wide/high16 v53, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v52 .. v54}, Ljavafx/scene/Node;->prefWidth(D)D

    move-result-wide v52

    goto/16 :goto_2

    .line 865
    .restart local v32    # "graphicPrefWidth":D
    :cond_c
    const-wide/16 v52, 0x0

    goto/16 :goto_3

    .line 866
    .restart local v34    # "headerPrefHeight":D
    :cond_d
    move-object/from16 v52, v4

    move-object/from16 v0, v52

    iget-object v0, v0, Ljavafx/scene/control/DialogPane;->buttonBar:Ljavafx/scene/Node;

    move-object/from16 v52, v0

    move-wide/from16 v53, v6

    invoke-virtual/range {v52 .. v54}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v52

    goto/16 :goto_4

    .line 867
    .restart local v36    # "buttonBarPrefHeight":D
    :cond_e
    move-object/from16 v52, v30

    const-wide/high16 v53, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v52 .. v54}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v52

    goto/16 :goto_5

    .line 877
    .restart local v38    # "graphicPrefHeight":D
    .restart local v46    # "availableContentWidth":D
    :cond_f
    const-wide/16 v52, 0x0

    goto/16 :goto_6

    .line 878
    .restart local v42    # "contentAreaHeight":D
    :cond_10
    move-wide/from16 v52, v38

    move-wide/from16 v54, v42

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->max(DD)D

    move-result-wide v52

    goto/16 :goto_7

    .line 882
    .end local v42    # "contentAreaHeight":D
    :cond_11
    move-object/from16 v52, v4

    invoke-virtual/range {v52 .. v52}, Ljavafx/scene/control/DialogPane;->isExpanded()Z

    move-result v52

    if-eqz v52, :cond_12

    move-object/from16 v52, v31

    move-wide/from16 v53, v6

    invoke-virtual/range {v52 .. v54}, Ljavafx/scene/Node;->prefHeight(D)D

    move-result-wide v52

    :goto_e
    move-wide/from16 v40, v52

    .line 883
    .restart local v40    # "expandableContentPrefHeight":D
    move-wide/from16 v52, v18

    move-wide/from16 v54, v34

    move-wide/from16 v56, v40

    add-double v54, v54, v56

    move-wide/from16 v56, v36

    add-double v54, v54, v56

    sub-double v52, v52, v54

    move-wide/from16 v42, v52

    .line 884
    .restart local v42    # "contentAreaHeight":D
    move/from16 v52, v5

    if-eqz v52, :cond_13

    move-wide/from16 v52, v42

    :goto_f
    move-wide/from16 v44, v52

    .restart local v44    # "contentAndGraphicHeight":D
    goto/16 :goto_8

    .line 882
    .end local v40    # "expandableContentPrefHeight":D
    .end local v42    # "contentAreaHeight":D
    .end local v44    # "contentAndGraphicHeight":D
    :cond_12
    const-wide/16 v52, 0x0

    goto :goto_e

    .line 884
    .restart local v40    # "expandableContentPrefHeight":D
    .restart local v42    # "contentAreaHeight":D
    :cond_13
    move-wide/from16 v52, v38

    move-wide/from16 v54, v42

    invoke-static/range {v52 .. v55}, Ljava/lang/Math;->max(DD)D

    move-result-wide v52

    goto :goto_f

    .line 896
    .restart local v44    # "contentAndGraphicHeight":D
    .restart local v48    # "x":D
    .restart local v50    # "y":D
    :cond_14
    move-object/from16 v52, v28

    move-wide/from16 v53, v48

    move-wide/from16 v55, v50

    move-wide/from16 v57, v6

    move-wide/from16 v59, v20

    move-wide/from16 v61, v24

    add-double v59, v59, v61

    sub-double v57, v57, v59

    move-wide/from16 v59, v34

    invoke-virtual/range {v52 .. v60}, Ljavafx/scene/Node;->resizeRelocate(DDDD)V

    .line 897
    move-wide/from16 v52, v50

    move-wide/from16 v54, v34

    add-double v52, v52, v54

    move-wide/from16 v50, v52

    goto/16 :goto_9

    .line 901
    :cond_15
    move-wide/from16 v54, v44

    goto/16 :goto_a
.end method

.method public final lookupButton(Ljavafx/scene/control/ButtonType;)Ljavafx/scene/Node;
    .locals 4

    .prologue
    .line 723
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, p1

    .local v1, "buttonType":Ljavafx/scene/control/ButtonType;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/DialogPane;->buttonNodes:Ljava/util/Map;

    move-object v3, v1

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljavafx/scene/Node;

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/DialogPane;
    return-object v0
.end method

.method public final setContent(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 553
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, p1

    .local v1, "content":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/DialogPane;->content:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    .line 554
    return-void
.end method

.method public final setContentText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 579
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, p1

    .local v1, "contentText":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/DialogPane;->contentText:Ljavafx/beans/property/StringProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 580
    return-void
.end method

.method setDialog(Ljavafx/scene/control/Dialog;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/scene/control/Dialog",
            "<*>;)V"
        }
    .end annotation

    .prologue
    .line 1181
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, p1

    .local v1, "dialog":Ljavafx/scene/control/Dialog;, "Ljavafx/scene/control/Dialog<*>;"
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/DialogPane;->dialog:Ljavafx/scene/control/Dialog;

    .line 1182
    return-void
.end method

.method public final setExpandableContent(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 647
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, p1

    .local v1, "content":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/DialogPane;->expandableContentProperty:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 648
    return-void
.end method

.method public final setExpanded(Z)V
    .locals 4

    .prologue
    .line 687
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/DialogPane;->expandedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 688
    return-void
.end method

.method public final setGraphic(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 304
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, p1

    .local v1, "graphic":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/DialogPane;->graphicProperty:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 305
    return-void
.end method

.method public final setHeader(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 460
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, p1

    .local v1, "header":Ljavafx/scene/Node;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/DialogPane;->header:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->setValue(Ljava/lang/Object;)V

    .line 461
    return-void
.end method

.method public final setHeaderText(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 495
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/DialogPane;
    move-object v1, p1

    .local v1, "headerText":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/DialogPane;->headerText:Ljavafx/beans/property/StringProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 496
    return-void
.end method
