.class Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
.super Ljavafx/scene/layout/HBox;
.source "CustomColorDialog.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/CustomColorDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ColorRectPane"
.end annotation


# instance fields
.field private alpha:Ljavafx/beans/property/DoubleProperty;

.field private blue:Ljavafx/beans/property/IntegerProperty;

.field private bright:Ljavafx/beans/property/DoubleProperty;

.field private changeIsLocal:Z

.field private colorBar:Ljavafx/scene/layout/Pane;

.field private colorBarIndicator:Ljavafx/scene/layout/Region;

.field private colorRect:Ljavafx/scene/layout/Pane;

.field private colorRectIndicator:Ljavafx/scene/layout/Region;

.field private colorRectOverlayOne:Ljavafx/scene/layout/Pane;

.field private colorRectOverlayTwo:Ljavafx/scene/layout/Pane;

.field private green:Ljavafx/beans/property/IntegerProperty;

.field private hue:Ljavafx/beans/property/DoubleProperty;

.field private red:Ljavafx/beans/property/IntegerProperty;

.field private sat:Ljavafx/beans/property/DoubleProperty;

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)V
    .locals 41

    .prologue
    .line 333
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-object/from16 v2, p1

    move-object v8, v1

    move-object v9, v2

    iput-object v9, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    move-object v8, v1

    invoke-direct {v8}, Ljavafx/scene/layout/HBox;-><init>()V

    .line 231
    move-object v8, v1

    const/4 v9, 0x0

    iput-boolean v9, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->changeIsLocal:Z

    .line 232
    move-object v8, v1

    new-instance v9, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$1;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    move-object v11, v1

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-direct {v10, v11, v12, v13}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$1;-><init>(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;D)V

    iput-object v9, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->hue:Ljavafx/beans/property/DoubleProperty;

    .line 241
    move-object v8, v1

    new-instance v9, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$2;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    move-object v11, v1

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-direct {v10, v11, v12, v13}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$2;-><init>(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;D)V

    iput-object v9, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->sat:Ljavafx/beans/property/DoubleProperty;

    .line 250
    move-object v8, v1

    new-instance v9, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$3;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    move-object v11, v1

    const-wide/high16 v12, -0x4010000000000000L    # -1.0

    invoke-direct {v10, v11, v12, v13}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$3;-><init>(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;D)V

    iput-object v9, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->bright:Ljavafx/beans/property/DoubleProperty;

    .line 259
    move-object v8, v1

    new-instance v9, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$4;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    move-object v11, v1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$4;-><init>(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;I)V

    iput-object v9, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->red:Ljavafx/beans/property/IntegerProperty;

    .line 269
    move-object v8, v1

    new-instance v9, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$5;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    move-object v11, v1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$5;-><init>(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;I)V

    iput-object v9, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->green:Ljavafx/beans/property/IntegerProperty;

    .line 279
    move-object v8, v1

    new-instance v9, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$6;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    move-object v11, v1

    const/4 v12, -0x1

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$6;-><init>(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;I)V

    iput-object v9, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->blue:Ljavafx/beans/property/IntegerProperty;

    .line 289
    move-object v8, v1

    new-instance v9, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$7;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    move-object v11, v1

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    invoke-direct {v10, v11, v12, v13}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$7;-><init>(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;D)V

    iput-object v9, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->alpha:Ljavafx/beans/property/DoubleProperty;

    .line 335
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v8

    const-string v9, "color-rect-pane"

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 337
    move-object v8, v2

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->customColorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v8

    move-object v9, v1

    invoke-static {v9}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Ljavafx/beans/value/ChangeListener;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavafx/beans/property/ObjectProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 341
    move-object v8, v1

    new-instance v9, Ljavafx/scene/layout/Region;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    invoke-direct {v10}, Ljavafx/scene/layout/Region;-><init>()V

    iput-object v9, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRectIndicator:Ljavafx/scene/layout/Region;

    .line 342
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRectIndicator:Ljavafx/scene/layout/Region;

    const-string v9, "color-rect-indicator"

    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Region;->setId(Ljava/lang/String;)V

    .line 343
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRectIndicator:Ljavafx/scene/layout/Region;

    const/4 v9, 0x0

    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Region;->setManaged(Z)V

    .line 344
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRectIndicator:Ljavafx/scene/layout/Region;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Region;->setMouseTransparent(Z)V

    .line 345
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRectIndicator:Ljavafx/scene/layout/Region;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Region;->setCache(Z)V

    .line 347
    new-instance v8, Ljavafx/scene/layout/StackPane;

    move-object/from16 v40, v8

    move-object/from16 v8, v40

    move-object/from16 v9, v40

    invoke-direct {v9}, Ljavafx/scene/layout/StackPane;-><init>()V

    move-object v3, v8

    .line 349
    .local v3, "colorRectOpacityContainer":Ljavafx/scene/layout/Pane;
    move-object v8, v1

    new-instance v9, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$8;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    move-object v11, v1

    move-object v12, v2

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$8;-><init>(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)V

    iput-object v9, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRect:Ljavafx/scene/layout/Pane;

    .line 365
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRect:Ljavafx/scene/layout/Pane;

    invoke-virtual {v8}, Ljavafx/scene/layout/Pane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    const/4 v11, 0x0

    const-string v12, "color-rect"

    aput-object v12, v10, v11

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    const/4 v11, 0x1

    const-string v12, "transparent-pattern"

    aput-object v12, v10, v11

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v8

    .line 367
    new-instance v8, Ljavafx/scene/layout/Pane;

    move-object/from16 v40, v8

    move-object/from16 v8, v40

    move-object/from16 v9, v40

    invoke-direct {v9}, Ljavafx/scene/layout/Pane;-><init>()V

    move-object v4, v8

    .line 368
    .local v4, "colorRectHue":Ljavafx/scene/layout/Pane;
    move-object v8, v4

    invoke-virtual {v8}, Ljavafx/scene/layout/Pane;->backgroundProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v8

    new-instance v9, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$9;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    move-object v11, v1

    move-object v12, v2

    invoke-direct {v10, v11, v12}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$9;-><init>(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;Lcom/sun/javafx/scene/control/skin/CustomColorDialog;)V

    invoke-virtual {v8, v9}, Ljavafx/beans/property/ObjectProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 381
    move-object v8, v1

    new-instance v9, Ljavafx/scene/layout/Pane;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    invoke-direct {v10}, Ljavafx/scene/layout/Pane;-><init>()V

    iput-object v9, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRectOverlayOne:Ljavafx/scene/layout/Pane;

    .line 382
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRectOverlayOne:Ljavafx/scene/layout/Pane;

    invoke-virtual {v8}, Ljavafx/scene/layout/Pane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v8

    const-string v9, "color-rect"

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 383
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRectOverlayOne:Ljavafx/scene/layout/Pane;

    new-instance v9, Ljavafx/scene/layout/Background;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    const/4 v11, 0x1

    new-array v11, v11, [Ljavafx/scene/layout/BackgroundFill;

    move-object/from16 v40, v11

    move-object/from16 v11, v40

    move-object/from16 v12, v40

    const/4 v13, 0x0

    new-instance v14, Ljavafx/scene/layout/BackgroundFill;

    move-object/from16 v40, v14

    move-object/from16 v14, v40

    move-object/from16 v15, v40

    new-instance v16, Ljavafx/scene/paint/LinearGradient;

    move-object/from16 v40, v16

    move-object/from16 v16, v40

    move-object/from16 v17, v40

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/high16 v22, 0x3ff0000000000000L    # 1.0

    const-wide/16 v24, 0x0

    const/16 v26, 0x1

    sget-object v27, Ljavafx/scene/paint/CycleMethod;->NO_CYCLE:Ljavafx/scene/paint/CycleMethod;

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljavafx/scene/paint/Stop;

    move-object/from16 v28, v0

    move-object/from16 v40, v28

    move-object/from16 v28, v40

    move-object/from16 v29, v40

    const/16 v30, 0x0

    new-instance v31, Ljavafx/scene/paint/Stop;

    move-object/from16 v40, v31

    move-object/from16 v31, v40

    move-object/from16 v32, v40

    const-wide/16 v33, 0x0

    const/16 v35, 0xff

    const/16 v36, 0xff

    const/16 v37, 0xff

    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    .line 385
    invoke-static/range {v35 .. v39}, Ljavafx/scene/paint/Color;->rgb(IIID)Ljavafx/scene/paint/Color;

    move-result-object v35

    invoke-direct/range {v32 .. v35}, Ljavafx/scene/paint/Stop;-><init>(DLjavafx/scene/paint/Color;)V

    aput-object v31, v29, v30

    move-object/from16 v40, v28

    move-object/from16 v28, v40

    move-object/from16 v29, v40

    const/16 v30, 0x1

    new-instance v31, Ljavafx/scene/paint/Stop;

    move-object/from16 v40, v31

    move-object/from16 v31, v40

    move-object/from16 v32, v40

    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    const/16 v35, 0xff

    const/16 v36, 0xff

    const/16 v37, 0xff

    const-wide/16 v38, 0x0

    .line 386
    invoke-static/range {v35 .. v39}, Ljavafx/scene/paint/Color;->rgb(IIID)Ljavafx/scene/paint/Color;

    move-result-object v35

    invoke-direct/range {v32 .. v35}, Ljavafx/scene/paint/Stop;-><init>(DLjavafx/scene/paint/Color;)V

    aput-object v31, v29, v30

    invoke-direct/range {v17 .. v28}, Ljavafx/scene/paint/LinearGradient;-><init>(DDDDZLjavafx/scene/paint/CycleMethod;[Ljavafx/scene/paint/Stop;)V

    sget-object v17, Ljavafx/scene/layout/CornerRadii;->EMPTY:Ljavafx/scene/layout/CornerRadii;

    sget-object v18, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    invoke-direct/range {v15 .. v18}, Ljavafx/scene/layout/BackgroundFill;-><init>(Ljavafx/scene/paint/Paint;Ljavafx/scene/layout/CornerRadii;Ljavafx/geometry/Insets;)V

    aput-object v14, v12, v13

    invoke-direct {v10, v11}, Ljavafx/scene/layout/Background;-><init>([Ljavafx/scene/layout/BackgroundFill;)V

    .line 383
    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Pane;->setBackground(Ljavafx/scene/layout/Background;)V

    .line 389
    move-object v8, v1

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Ljavafx/event/EventHandler;

    move-result-object v8

    move-object v5, v8

    .line 396
    .local v5, "rectMouseHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/input/MouseEvent;>;"
    move-object v8, v1

    new-instance v9, Ljavafx/scene/layout/Pane;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    invoke-direct {v10}, Ljavafx/scene/layout/Pane;-><init>()V

    iput-object v9, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRectOverlayTwo:Ljavafx/scene/layout/Pane;

    .line 397
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRectOverlayTwo:Ljavafx/scene/layout/Pane;

    invoke-virtual {v8}, Ljavafx/scene/layout/Pane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljava/lang/String;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    const/4 v11, 0x0

    const-string v12, "color-rect"

    aput-object v12, v10, v11

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v8

    .line 398
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRectOverlayTwo:Ljavafx/scene/layout/Pane;

    new-instance v9, Ljavafx/scene/layout/Background;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    const/4 v11, 0x1

    new-array v11, v11, [Ljavafx/scene/layout/BackgroundFill;

    move-object/from16 v40, v11

    move-object/from16 v11, v40

    move-object/from16 v12, v40

    const/4 v13, 0x0

    new-instance v14, Ljavafx/scene/layout/BackgroundFill;

    move-object/from16 v40, v14

    move-object/from16 v14, v40

    move-object/from16 v15, v40

    new-instance v16, Ljavafx/scene/paint/LinearGradient;

    move-object/from16 v40, v16

    move-object/from16 v16, v40

    move-object/from16 v17, v40

    const-wide/16 v18, 0x0

    const-wide/16 v20, 0x0

    const-wide/16 v22, 0x0

    const-wide/high16 v24, 0x3ff0000000000000L    # 1.0

    const/16 v26, 0x1

    sget-object v27, Ljavafx/scene/paint/CycleMethod;->NO_CYCLE:Ljavafx/scene/paint/CycleMethod;

    const/16 v28, 0x2

    move/from16 v0, v28

    new-array v0, v0, [Ljavafx/scene/paint/Stop;

    move-object/from16 v28, v0

    move-object/from16 v40, v28

    move-object/from16 v28, v40

    move-object/from16 v29, v40

    const/16 v30, 0x0

    new-instance v31, Ljavafx/scene/paint/Stop;

    move-object/from16 v40, v31

    move-object/from16 v31, v40

    move-object/from16 v32, v40

    const-wide/16 v33, 0x0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-wide/16 v38, 0x0

    .line 400
    invoke-static/range {v35 .. v39}, Ljavafx/scene/paint/Color;->rgb(IIID)Ljavafx/scene/paint/Color;

    move-result-object v35

    invoke-direct/range {v32 .. v35}, Ljavafx/scene/paint/Stop;-><init>(DLjavafx/scene/paint/Color;)V

    aput-object v31, v29, v30

    move-object/from16 v40, v28

    move-object/from16 v28, v40

    move-object/from16 v29, v40

    const/16 v30, 0x1

    new-instance v31, Ljavafx/scene/paint/Stop;

    move-object/from16 v40, v31

    move-object/from16 v31, v40

    move-object/from16 v32, v40

    const-wide/high16 v33, 0x3ff0000000000000L    # 1.0

    const/16 v35, 0x0

    const/16 v36, 0x0

    const/16 v37, 0x0

    const-wide/high16 v38, 0x3ff0000000000000L    # 1.0

    invoke-static/range {v35 .. v39}, Ljavafx/scene/paint/Color;->rgb(IIID)Ljavafx/scene/paint/Color;

    move-result-object v35

    invoke-direct/range {v32 .. v35}, Ljavafx/scene/paint/Stop;-><init>(DLjavafx/scene/paint/Color;)V

    aput-object v31, v29, v30

    invoke-direct/range {v17 .. v28}, Ljavafx/scene/paint/LinearGradient;-><init>(DDDDZLjavafx/scene/paint/CycleMethod;[Ljavafx/scene/paint/Stop;)V

    sget-object v17, Ljavafx/scene/layout/CornerRadii;->EMPTY:Ljavafx/scene/layout/CornerRadii;

    sget-object v18, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    invoke-direct/range {v15 .. v18}, Ljavafx/scene/layout/BackgroundFill;-><init>(Ljavafx/scene/paint/Paint;Ljavafx/scene/layout/CornerRadii;Ljavafx/geometry/Insets;)V

    aput-object v14, v12, v13

    invoke-direct {v10, v11}, Ljavafx/scene/layout/Background;-><init>([Ljavafx/scene/layout/BackgroundFill;)V

    .line 398
    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Pane;->setBackground(Ljavafx/scene/layout/Background;)V

    .line 402
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRectOverlayTwo:Ljavafx/scene/layout/Pane;

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Pane;->setOnMouseDragged(Ljavafx/event/EventHandler;)V

    .line 403
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRectOverlayTwo:Ljavafx/scene/layout/Pane;

    move-object v9, v5

    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Pane;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 405
    new-instance v8, Ljavafx/scene/layout/Pane;

    move-object/from16 v40, v8

    move-object/from16 v8, v40

    move-object/from16 v9, v40

    invoke-direct {v9}, Ljavafx/scene/layout/Pane;-><init>()V

    move-object v6, v8

    .line 406
    .local v6, "colorRectBlackBorder":Ljavafx/scene/layout/Pane;
    move-object v8, v6

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Pane;->setMouseTransparent(Z)V

    .line 407
    move-object v8, v6

    invoke-virtual {v8}, Ljavafx/scene/layout/Pane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljava/lang/String;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    const/4 v11, 0x0

    const-string v12, "color-rect"

    aput-object v12, v10, v11

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    const/4 v11, 0x1

    const-string v12, "color-rect-border"

    aput-object v12, v10, v11

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v8

    .line 409
    move-object v8, v1

    new-instance v9, Ljavafx/scene/layout/Pane;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    invoke-direct {v10}, Ljavafx/scene/layout/Pane;-><init>()V

    iput-object v9, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorBar:Ljavafx/scene/layout/Pane;

    .line 410
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorBar:Ljavafx/scene/layout/Pane;

    invoke-virtual {v8}, Ljavafx/scene/layout/Pane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v8

    const-string v9, "color-bar"

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v8

    .line 411
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorBar:Ljavafx/scene/layout/Pane;

    new-instance v9, Ljavafx/scene/layout/Background;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    const/4 v11, 0x1

    new-array v11, v11, [Ljavafx/scene/layout/BackgroundFill;

    move-object/from16 v40, v11

    move-object/from16 v11, v40

    move-object/from16 v12, v40

    const/4 v13, 0x0

    new-instance v14, Ljavafx/scene/layout/BackgroundFill;

    move-object/from16 v40, v14

    move-object/from16 v14, v40

    move-object/from16 v15, v40

    # invokes: Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->createHueGradient()Ljavafx/scene/paint/LinearGradient;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$1000()Ljavafx/scene/paint/LinearGradient;

    move-result-object v16

    sget-object v17, Ljavafx/scene/layout/CornerRadii;->EMPTY:Ljavafx/scene/layout/CornerRadii;

    sget-object v18, Ljavafx/geometry/Insets;->EMPTY:Ljavafx/geometry/Insets;

    invoke-direct/range {v15 .. v18}, Ljavafx/scene/layout/BackgroundFill;-><init>(Ljavafx/scene/paint/Paint;Ljavafx/scene/layout/CornerRadii;Ljavafx/geometry/Insets;)V

    aput-object v14, v12, v13

    invoke-direct {v10, v11}, Ljavafx/scene/layout/Background;-><init>([Ljavafx/scene/layout/BackgroundFill;)V

    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Pane;->setBackground(Ljavafx/scene/layout/Background;)V

    .line 414
    move-object v8, v1

    new-instance v9, Ljavafx/scene/layout/Region;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    invoke-direct {v10}, Ljavafx/scene/layout/Region;-><init>()V

    iput-object v9, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorBarIndicator:Ljavafx/scene/layout/Region;

    .line 415
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorBarIndicator:Ljavafx/scene/layout/Region;

    const-string v9, "color-bar-indicator"

    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Region;->setId(Ljava/lang/String;)V

    .line 416
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorBarIndicator:Ljavafx/scene/layout/Region;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Region;->setMouseTransparent(Z)V

    .line 417
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorBarIndicator:Ljavafx/scene/layout/Region;

    const/4 v9, 0x1

    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Region;->setCache(Z)V

    .line 419
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRectIndicator:Ljavafx/scene/layout/Region;

    invoke-virtual {v8}, Ljavafx/scene/layout/Region;->layoutXProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v8

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->sat:Ljavafx/beans/property/DoubleProperty;

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Ljavafx/beans/property/DoubleProperty;->divide(I)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v9

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRect:Ljavafx/scene/layout/Pane;

    invoke-virtual {v10}, Ljavafx/scene/layout/Pane;->widthProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/beans/binding/DoubleBinding;->multiply(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 420
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRectIndicator:Ljavafx/scene/layout/Region;

    invoke-virtual {v8}, Ljavafx/scene/layout/Region;->layoutYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v8

    const/4 v9, 0x1

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->bright:Ljavafx/beans/property/DoubleProperty;

    const/16 v11, 0x64

    invoke-virtual {v10, v11}, Ljavafx/beans/property/DoubleProperty;->divide(I)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v10

    invoke-static {v9, v10}, Ljavafx/beans/binding/Bindings;->subtract(ILjavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v9

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRect:Ljavafx/scene/layout/Pane;

    invoke-virtual {v10}, Ljavafx/scene/layout/Pane;->heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v10

    invoke-interface {v9, v10}, Ljavafx/beans/binding/NumberBinding;->multiply(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/NumberBinding;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 421
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorBarIndicator:Ljavafx/scene/layout/Region;

    invoke-virtual {v8}, Ljavafx/scene/layout/Region;->layoutYProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v8

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->hue:Ljavafx/beans/property/DoubleProperty;

    const/16 v10, 0x168

    invoke-virtual {v9, v10}, Ljavafx/beans/property/DoubleProperty;->divide(I)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v9

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorBar:Ljavafx/scene/layout/Pane;

    invoke-virtual {v10}, Ljavafx/scene/layout/Pane;->heightProperty()Ljavafx/beans/property/ReadOnlyDoubleProperty;

    move-result-object v10

    invoke-virtual {v9, v10}, Ljavafx/beans/binding/DoubleBinding;->multiply(Ljavafx/beans/value/ObservableNumberValue;)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 422
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/layout/Pane;->opacityProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v8

    move-object v9, v1

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->alpha:Ljavafx/beans/property/DoubleProperty;

    const/16 v10, 0x64

    invoke-virtual {v9, v10}, Ljavafx/beans/property/DoubleProperty;->divide(I)Ljavafx/beans/binding/DoubleBinding;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 424
    move-object v8, v1

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane$$Lambda$3;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Ljavafx/event/EventHandler;

    move-result-object v8

    move-object v7, v8

    .line 429
    .local v7, "barMouseHandler":Ljavafx/event/EventHandler;, "Ljavafx/event/EventHandler<Ljavafx/scene/input/MouseEvent;>;"
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorBar:Ljavafx/scene/layout/Pane;

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Pane;->setOnMouseDragged(Ljavafx/event/EventHandler;)V

    .line 430
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorBar:Ljavafx/scene/layout/Pane;

    move-object v9, v7

    invoke-virtual {v8, v9}, Ljavafx/scene/layout/Pane;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 432
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorBar:Ljavafx/scene/layout/Pane;

    invoke-virtual {v8}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    const/4 v9, 0x1

    new-array v9, v9, [Ljavafx/scene/Node;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    const/4 v11, 0x0

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorBarIndicator:Ljavafx/scene/layout/Region;

    aput-object v12, v10, v11

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v8

    .line 433
    move-object v8, v3

    invoke-virtual {v8}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljavafx/scene/Node;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    const/4 v11, 0x0

    move-object v12, v4

    aput-object v12, v10, v11

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    const/4 v11, 0x1

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRectOverlayOne:Ljavafx/scene/layout/Pane;

    aput-object v12, v10, v11

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    const/4 v11, 0x2

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRectOverlayTwo:Ljavafx/scene/layout/Pane;

    aput-object v12, v10, v11

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v8

    .line 434
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRect:Ljavafx/scene/layout/Pane;

    invoke-virtual {v8}, Ljavafx/scene/layout/Pane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    const/4 v9, 0x3

    new-array v9, v9, [Ljavafx/scene/Node;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    const/4 v11, 0x0

    move-object v12, v3

    aput-object v12, v10, v11

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    const/4 v11, 0x1

    move-object v12, v6

    aput-object v12, v10, v11

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    const/4 v11, 0x2

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRectIndicator:Ljavafx/scene/layout/Region;

    aput-object v12, v10, v11

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v8

    .line 435
    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRect:Ljavafx/scene/layout/Pane;

    sget-object v9, Ljavafx/scene/layout/Priority;->SOMETIMES:Ljavafx/scene/layout/Priority;

    invoke-static {v8, v9}, Ljavafx/scene/layout/HBox;->setHgrow(Ljavafx/scene/Node;Ljavafx/scene/layout/Priority;)V

    .line 436
    move-object v8, v1

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v8

    const/4 v9, 0x2

    new-array v9, v9, [Ljavafx/scene/Node;

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    const/4 v11, 0x0

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRect:Ljavafx/scene/layout/Pane;

    aput-object v12, v10, v11

    move-object/from16 v40, v9

    move-object/from16 v9, v40

    move-object/from16 v10, v40

    const/4 v11, 0x1

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorBar:Ljavafx/scene/layout/Pane;

    aput-object v12, v10, v11

    invoke-interface {v8, v9}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v8

    .line 437
    return-void
.end method

.method static synthetic access$000(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)V
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->updateValues()V

    return-void
.end method

.method static synthetic access$1500(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->sat:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    return-object v0
.end method

.method static synthetic access$1600(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->bright:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    return-object v0
.end method

.method static synthetic access$1700(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->red:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    return-object v0
.end method

.method static synthetic access$1800(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->green:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    return-object v0
.end method

.method static synthetic access$1900(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->blue:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    return-object v0
.end method

.method static synthetic access$400(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Z
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->changeIsLocal:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    return v0
.end method

.method static synthetic access$402(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;Z)Z
    .locals 7

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->changeIsLocal:Z

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    return v0
.end method

.method static synthetic access$500(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)V
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->updateHSBColor()V

    return-void
.end method

.method static synthetic access$600(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)V
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->updateRGBColor()V

    return-void
.end method

.method static synthetic access$700(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->alpha:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    return-object v0
.end method

.method static synthetic access$900(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->hue:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;Ljavafx/beans/value/ObservableValue;Ljavafx/scene/paint/Color;Ljavafx/scene/paint/Color;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->lambda$new$315(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/paint/Color;Ljavafx/scene/paint/Color;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->lambda$new$316(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method static synthetic access$lambda$2(Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;Ljavafx/scene/input/MouseEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->lambda$new$317(Ljavafx/scene/input/MouseEvent;)V

    return-void
.end method

.method private colorChanged()V
    .locals 6

    .prologue
    .line 321
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->changeIsLocal:Z

    if-nez v1, :cond_0

    .line 322
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->changeIsLocal:Z

    .line 323
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->hue:Ljavafx/beans/property/DoubleProperty;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->getCustomColor()Ljavafx/scene/paint/Color;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/paint/Color;->getHue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 324
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->sat:Ljavafx/beans/property/DoubleProperty;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->getCustomColor()Ljavafx/scene/paint/Color;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/paint/Color;->getSaturation()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 325
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->bright:Ljavafx/beans/property/DoubleProperty;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->getCustomColor()Ljavafx/scene/paint/Color;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/paint/Color;->getBrightness()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 326
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->red:Ljavafx/beans/property/IntegerProperty;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->getCustomColor()Ljavafx/scene/paint/Color;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/paint/Color;->getRed()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$800(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 327
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->green:Ljavafx/beans/property/IntegerProperty;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->getCustomColor()Ljavafx/scene/paint/Color;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/paint/Color;->getGreen()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$800(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 328
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->blue:Ljavafx/beans/property/IntegerProperty;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->getCustomColor()Ljavafx/scene/paint/Color;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/paint/Color;->getBlue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$800(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 329
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->changeIsLocal:Z

    .line 331
    :cond_0
    return-void
.end method

.method private synthetic lambda$new$315(Ljavafx/beans/value/ObservableValue;Ljavafx/scene/paint/Color;Ljavafx/scene/paint/Color;)V
    .locals 5

    .prologue
    .line 338
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-object v1, p1

    .local v1, "ov":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "t":Ljavafx/scene/paint/Color;
    move-object v3, p3

    .local v3, "t1":Ljavafx/scene/paint/Color;
    move-object v4, v0

    invoke-direct {v4}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorChanged()V

    .line 339
    return-void
.end method

.method private synthetic lambda$new$316(Ljavafx/scene/input/MouseEvent;)V
    .locals 14

    .prologue
    .line 390
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-object v2, p1

    .local v2, "event":Ljavafx/scene/input/MouseEvent;
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getX()D

    move-result-wide v7

    move-wide v3, v7

    .line 391
    .local v3, "x":D
    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v7

    move-wide v5, v7

    .line 392
    .local v5, "y":D
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->sat:Ljavafx/beans/property/DoubleProperty;

    move-wide v8, v3

    move-object v10, v1

    iget-object v10, v10, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRect:Ljavafx/scene/layout/Pane;

    invoke-virtual {v10}, Ljavafx/scene/layout/Pane;->getWidth()D

    move-result-wide v10

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->clamp(D)D

    move-result-wide v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    mul-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 393
    move-object v7, v1

    iget-object v7, v7, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->bright:Ljavafx/beans/property/DoubleProperty;

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    move-wide v10, v5

    move-object v12, v1

    iget-object v12, v12, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRect:Ljavafx/scene/layout/Pane;

    invoke-virtual {v12}, Ljavafx/scene/layout/Pane;->getHeight()D

    move-result-wide v12

    div-double/2addr v10, v12

    invoke-static {v10, v11}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->clamp(D)D

    move-result-wide v10

    const-wide/high16 v12, 0x4059000000000000L    # 100.0

    mul-double/2addr v10, v12

    sub-double/2addr v8, v10

    invoke-virtual {v7, v8, v9}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 394
    return-void
.end method

.method private synthetic lambda$new$317(Ljavafx/scene/input/MouseEvent;)V
    .locals 10

    .prologue
    .line 425
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-object v2, p1

    .local v2, "event":Ljavafx/scene/input/MouseEvent;
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/input/MouseEvent;->getY()D

    move-result-wide v5

    move-wide v3, v5

    .line 426
    .local v3, "y":D
    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->hue:Ljavafx/beans/property/DoubleProperty;

    move-wide v6, v3

    move-object v8, v1

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRect:Ljavafx/scene/layout/Pane;

    invoke-virtual {v8}, Ljavafx/scene/layout/Pane;->getHeight()D

    move-result-wide v8

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->clamp(D)D

    move-result-wide v6

    const-wide v8, 0x4076800000000000L    # 360.0

    mul-double/2addr v6, v8

    invoke-virtual {v5, v6, v7}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 427
    return-void
.end method

.method private updateHSBColor()V
    .locals 12

    .prologue
    .line 312
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->hue:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->sat:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v4}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->clamp(D)D

    move-result-wide v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->bright:Ljavafx/beans/property/DoubleProperty;

    .line 313
    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->clamp(D)D

    move-result-wide v6

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->alpha:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v8}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->clamp(D)D

    move-result-wide v8

    .line 312
    invoke-static/range {v2 .. v9}, Ljavafx/scene/paint/Color;->hsb(DDDD)Ljavafx/scene/paint/Color;

    move-result-object v2

    move-object v1, v2

    .line 314
    .local v1, "newColor":Ljavafx/scene/paint/Color;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->red:Ljavafx/beans/property/IntegerProperty;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/paint/Color;->getRed()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$800(D)I

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 315
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->green:Ljavafx/beans/property/IntegerProperty;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/paint/Color;->getGreen()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$800(D)I

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 316
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->blue:Ljavafx/beans/property/IntegerProperty;

    move-object v3, v1

    invoke-virtual {v3}, Ljavafx/scene/paint/Color;->getBlue()D

    move-result-wide v3

    invoke-static {v3, v4}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$800(D)I

    move-result v3

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 317
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    move-object v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->setCustomColor(Ljavafx/scene/paint/Color;)V

    .line 318
    return-void
.end method

.method private updateRGBColor()V
    .locals 10

    .prologue
    .line 304
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->red:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v3}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v3

    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->green:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v4}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v4

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->blue:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v5}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v5

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->alpha:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->clamp(D)D

    move-result-wide v6

    invoke-static {v3, v4, v5, v6, v7}, Ljavafx/scene/paint/Color;->rgb(IIID)Ljavafx/scene/paint/Color;

    move-result-object v3

    move-object v2, v3

    .line 305
    .local v2, "newColor":Ljavafx/scene/paint/Color;
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->hue:Ljavafx/beans/property/DoubleProperty;

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/paint/Color;->getHue()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 306
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->sat:Ljavafx/beans/property/DoubleProperty;

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/paint/Color;->getSaturation()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 307
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->bright:Ljavafx/beans/property/DoubleProperty;

    move-object v4, v2

    invoke-virtual {v4}, Ljavafx/scene/paint/Color;->getBrightness()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    mul-double/2addr v4, v6

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 308
    move-object v3, v1

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    move-object v4, v2

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->setCustomColor(Ljavafx/scene/paint/Color;)V

    .line 309
    return-void
.end method

.method private updateValues()V
    .locals 12

    .prologue
    .line 440
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->getCurrentColor()Ljavafx/scene/paint/Color;

    move-result-object v1

    if-nez v1, :cond_0

    .line 441
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    sget-object v2, Ljavafx/scene/paint/Color;->TRANSPARENT:Ljavafx/scene/paint/Color;

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->setCurrentColor(Ljavafx/scene/paint/Color;)V

    .line 443
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->changeIsLocal:Z

    .line 445
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->hue:Ljavafx/beans/property/DoubleProperty;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->getCurrentColor()Ljavafx/scene/paint/Color;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/paint/Color;->getHue()D

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 446
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->sat:Ljavafx/beans/property/DoubleProperty;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->getCurrentColor()Ljavafx/scene/paint/Color;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/paint/Color;->getSaturation()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 447
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->bright:Ljavafx/beans/property/DoubleProperty;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->getCurrentColor()Ljavafx/scene/paint/Color;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/paint/Color;->getBrightness()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 448
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->alpha:Ljavafx/beans/property/DoubleProperty;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->getCurrentColor()Ljavafx/scene/paint/Color;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/paint/Color;->getOpacity()D

    move-result-wide v2

    const-wide/high16 v4, 0x4059000000000000L    # 100.0

    mul-double/2addr v2, v4

    invoke-virtual {v1, v2, v3}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 449
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->hue:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v2}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v2

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->sat:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v4}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v4

    const-wide/high16 v6, 0x4059000000000000L    # 100.0

    div-double/2addr v4, v6

    invoke-static {v4, v5}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->clamp(D)D

    move-result-wide v4

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->bright:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v6}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v6

    const-wide/high16 v8, 0x4059000000000000L    # 100.0

    div-double/2addr v6, v8

    invoke-static {v6, v7}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->clamp(D)D

    move-result-wide v6

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->alpha:Ljavafx/beans/property/DoubleProperty;

    .line 450
    invoke-virtual {v8}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v8

    const-wide/high16 v10, 0x4059000000000000L    # 100.0

    div-double/2addr v8, v10

    invoke-static {v8, v9}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->clamp(D)D

    move-result-wide v8

    .line 449
    invoke-static/range {v2 .. v9}, Ljavafx/scene/paint/Color;->hsb(DDDD)Ljavafx/scene/paint/Color;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->setCustomColor(Ljavafx/scene/paint/Color;)V

    .line 451
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->red:Ljavafx/beans/property/IntegerProperty;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->getCustomColor()Ljavafx/scene/paint/Color;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/paint/Color;->getRed()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$800(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 452
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->green:Ljavafx/beans/property/IntegerProperty;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->getCustomColor()Ljavafx/scene/paint/Color;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/paint/Color;->getGreen()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$800(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 453
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->blue:Ljavafx/beans/property/IntegerProperty;

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->this$0:Lcom/sun/javafx/scene/control/skin/CustomColorDialog;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->getCustomColor()Ljavafx/scene/paint/Color;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/paint/Color;->getBlue()D

    move-result-wide v2

    invoke-static {v2, v3}, Lcom/sun/javafx/scene/control/skin/CustomColorDialog;->access$800(D)I

    move-result v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    .line 454
    move-object v1, v0

    const/4 v2, 0x0

    iput-boolean v2, v1, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->changeIsLocal:Z

    .line 455
    return-void
.end method


# virtual methods
.method protected layoutChildren()V
    .locals 9

    .prologue
    .line 458
    move-object v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;
    move-object v4, v1

    invoke-super {v4}, Ljavafx/scene/layout/HBox;->layoutChildren()V

    .line 461
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRectIndicator:Ljavafx/scene/layout/Region;

    invoke-virtual {v4}, Ljavafx/scene/layout/Region;->autosize()V

    .line 463
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRect:Ljavafx/scene/layout/Pane;

    invoke-virtual {v4}, Ljavafx/scene/layout/Pane;->getWidth()D

    move-result-wide v4

    move-object v6, v1

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRect:Ljavafx/scene/layout/Pane;

    invoke-virtual {v6}, Ljavafx/scene/layout/Pane;->getHeight()D

    move-result-wide v6

    invoke-static {v4, v5, v6, v7}, Ljava/lang/Math;->min(DD)D

    move-result-wide v4

    move-wide v2, v4

    .line 464
    .local v2, "size":D
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorRect:Ljavafx/scene/layout/Pane;

    move-wide v5, v2

    move-wide v7, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Ljavafx/scene/layout/Pane;->resize(DD)V

    .line 465
    move-object v4, v1

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorBar:Ljavafx/scene/layout/Pane;

    move-object v5, v1

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/CustomColorDialog$ColorRectPane;->colorBar:Ljavafx/scene/layout/Pane;

    invoke-virtual {v5}, Ljavafx/scene/layout/Pane;->getWidth()D

    move-result-wide v5

    move-wide v7, v2

    invoke-virtual {v4, v5, v6, v7, v8}, Ljavafx/scene/layout/Pane;->resize(DD)V

    .line 466
    return-void
.end method
