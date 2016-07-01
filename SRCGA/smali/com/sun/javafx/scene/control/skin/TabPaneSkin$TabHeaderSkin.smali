.class Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
.super Ljavafx/scene/layout/StackPane;
.source "TabPaneSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TabHeaderSkin"
.end annotation


# instance fields
.field private animationState:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;

.field private final animationTransition:Ljavafx/beans/property/DoubleProperty;

.field private clip:Ljavafx/scene/shape/Rectangle;

.field private closeBtn:Ljavafx/scene/layout/StackPane;

.field private currentAnimation:Ljavafx/animation/Timeline;

.field private inner:Ljavafx/scene/layout/StackPane;

.field private isClosing:Z

.field private label:Ljavafx/scene/control/Label;

.field private listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

.field private oldTooltip:Ljavafx/scene/control/Tooltip;

.field private final styleClassListener:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final tab:Ljavafx/scene/control/Tab;

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

.field private tooltip:Ljavafx/scene/control/Tooltip;

.field private final weakStyleClassListener:Ljavafx/collections/WeakListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/WeakListChangeListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Ljavafx/scene/control/Tab;)V
    .locals 14

    .prologue
    .line 1136
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin;
    move-object/from16 v2, p2

    .local v2, "tab":Ljavafx/scene/control/Tab;
    move-object v5, v0

    move-object v6, v1

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    move-object v5, v0

    invoke-direct {v5}, Ljavafx/scene/layout/StackPane;-><init>()V

    .line 1118
    move-object v5, v0

    const/4 v6, 0x0

    iput-boolean v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->isClosing:Z

    .line 1120
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    invoke-static {v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/util/Callback;

    move-result-object v8

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;-><init>(Ljavafx/util/Callback;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    .line 1126
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$1;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    invoke-direct {v7, v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$1;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->styleClassListener:Ljavafx/collections/ListChangeListener;

    .line 1133
    move-object v5, v0

    new-instance v6, Ljavafx/collections/WeakListChangeListener;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    iget-object v8, v8, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->styleClassListener:Ljavafx/collections/ListChangeListener;

    invoke-direct {v7, v8}, Ljavafx/collections/WeakListChangeListener;-><init>(Ljavafx/collections/ListChangeListener;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->weakStyleClassListener:Ljavafx/collections/WeakListChangeListener;

    .line 1429
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$6;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move-object v9, v0

    const-string v10, "animationTransition"

    const-wide/high16 v11, 0x3ff0000000000000L    # 1.0

    invoke-direct/range {v7 .. v12}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$6;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljava/lang/Object;Ljava/lang/String;D)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->animationTransition:Ljavafx/beans/property/DoubleProperty;

    .line 1441
    move-object v5, v0

    sget-object v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;->NONE:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->animationState:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;

    .line 1137
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/Tab;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v6

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll(Ljava/util/Collection;)Z

    move-result v5

    .line 1138
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/Tab;->getId()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->setId(Ljava/lang/String;)V

    .line 1139
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/Tab;->getStyle()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->setStyle(Ljava/lang/String;)V

    .line 1140
    move-object v5, v0

    sget-object v6, Ljavafx/scene/AccessibleRole;->TAB_ITEM:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 1142
    move-object v5, v0

    move-object v6, v2

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->tab:Ljavafx/scene/control/Tab;

    .line 1143
    move-object v5, v0

    new-instance v6, Ljavafx/scene/shape/Rectangle;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    invoke-direct {v7}, Ljavafx/scene/shape/Rectangle;-><init>()V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->clip:Ljavafx/scene/shape/Rectangle;

    .line 1144
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->clip:Ljavafx/scene/shape/Rectangle;

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->setClip(Ljavafx/scene/Node;)V

    .line 1146
    move-object v5, v0

    new-instance v6, Ljavafx/scene/control/Label;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v2

    invoke-virtual {v8}, Ljavafx/scene/control/Tab;->getText()Ljava/lang/String;

    move-result-object v8

    move-object v9, v2

    invoke-virtual {v9}, Ljavafx/scene/control/Tab;->getGraphic()Ljavafx/scene/Node;

    move-result-object v9

    invoke-direct {v7, v8, v9}, Ljavafx/scene/control/Label;-><init>(Ljava/lang/String;Ljavafx/scene/Node;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->label:Ljavafx/scene/control/Label;

    .line 1147
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->label:Ljavafx/scene/control/Label;

    invoke-virtual {v5}, Ljavafx/scene/control/Label;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x0

    const-string v9, "tab-label"

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 1149
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$2;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$2;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->closeBtn:Ljavafx/scene/layout/StackPane;

    .line 1171
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->closeBtn:Ljavafx/scene/layout/StackPane;

    sget-object v6, Ljavafx/scene/AccessibleRole;->BUTTON:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 1172
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->closeBtn:Ljavafx/scene/layout/StackPane;

    const-string v6, "Accessibility.title.TabPane.CloseButton"

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/resources/ControlResources;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setAccessibleText(Ljava/lang/String;)V

    .line 1173
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->closeBtn:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/String;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x0

    const-string v9, "tab-close-button"

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v5

    .line 1174
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->closeBtn:Ljavafx/scene/layout/StackPane;

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$3;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$3;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)V

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/StackPane;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 1185
    move-object v5, v0

    invoke-direct {v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->updateGraphicRotation()V

    .line 1187
    new-instance v5, Ljavafx/scene/layout/Region;

    move-object v13, v5

    move-object v5, v13

    move-object v6, v13

    invoke-direct {v6}, Ljavafx/scene/layout/Region;-><init>()V

    move-object v3, v5

    .line 1188
    .local v3, "focusIndicator":Ljavafx/scene/layout/Region;
    move-object v5, v3

    const/4 v6, 0x1

    invoke-virtual {v5, v6}, Ljavafx/scene/layout/Region;->setMouseTransparent(Z)V

    .line 1189
    move-object v5, v3

    invoke-virtual {v5}, Ljavafx/scene/layout/Region;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const-string v6, "focus-indicator"

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1191
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move-object v9, v1

    move-object v10, v3

    invoke-direct {v7, v8, v9, v10}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$4;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Lcom/sun/javafx/scene/control/skin/TabPaneSkin;Ljavafx/scene/layout/Region;)V

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->inner:Ljavafx/scene/layout/StackPane;

    .line 1277
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->inner:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    const-string v6, "tab-container"

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v5

    .line 1278
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->inner:Ljavafx/scene/layout/StackPane;

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TabPane;

    invoke-virtual {v6}, Ljavafx/scene/control/TabPane;->getSide()Ljavafx/geometry/Side;

    move-result-object v6

    sget-object v7, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    invoke-virtual {v6, v7}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    const-wide v6, 0x4066800000000000L    # 180.0

    :goto_0
    invoke-virtual {v5, v6, v7}, Ljavafx/scene/layout/StackPane;->setRotate(D)V

    .line 1279
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->inner:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v5}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x3

    new-array v6, v6, [Ljavafx/scene/Node;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->label:Ljavafx/scene/control/Label;

    aput-object v9, v7, v8

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x1

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->closeBtn:Ljavafx/scene/layout/StackPane;

    aput-object v9, v7, v8

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x2

    move-object v9, v3

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v5

    .line 1281
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v5

    const/4 v6, 0x1

    new-array v6, v6, [Ljavafx/scene/Node;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    const/4 v8, 0x0

    move-object v9, v0

    iget-object v9, v9, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->inner:Ljavafx/scene/layout/StackPane;

    aput-object v9, v7, v8

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addAll([Ljava/lang/Object;)Z

    move-result v5

    .line 1283
    move-object v5, v0

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/Tab;->getTooltip()Ljavafx/scene/control/Tooltip;

    move-result-object v6

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->tooltip:Ljavafx/scene/control/Tooltip;

    .line 1284
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->tooltip:Ljavafx/scene/control/Tooltip;

    if-eqz v5, :cond_0

    .line 1285
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->tooltip:Ljavafx/scene/control/Tooltip;

    invoke-static {v5, v6}, Ljavafx/scene/control/Tooltip;->install(Ljavafx/scene/Node;Ljavafx/scene/control/Tooltip;)V

    .line 1286
    move-object v5, v0

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->tooltip:Ljavafx/scene/control/Tooltip;

    iput-object v6, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->oldTooltip:Ljavafx/scene/control/Tooltip;

    .line 1289
    :cond_0
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/Tab;->closableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    const-string v7, "CLOSABLE"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 1290
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/Tab;->selectedProperty()Ljavafx/beans/property/ReadOnlyBooleanProperty;

    move-result-object v6

    const-string v7, "SELECTED"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 1291
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/Tab;->textProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v6

    const-string v7, "TEXT"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 1292
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/Tab;->graphicProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    const-string v7, "GRAPHIC"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 1293
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/Tab;->contextMenuProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    const-string v7, "CONTEXT_MENU"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 1294
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/Tab;->tooltipProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    const-string v7, "TOOLTIP"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 1295
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/Tab;->disableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    const-string v7, "DISABLE"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 1296
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v6, v2

    invoke-virtual {v6}, Ljavafx/scene/control/Tab;->styleProperty()Ljavafx/beans/property/StringProperty;

    move-result-object v6

    const-string v7, "STYLE"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 1298
    move-object v5, v2

    invoke-virtual {v5}, Ljavafx/scene/control/Tab;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v5

    move-object v6, v0

    iget-object v6, v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->weakStyleClassListener:Ljavafx/collections/WeakListChangeListener;

    invoke-interface {v5, v6}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 1300
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TabPane;

    invoke-virtual {v6}, Ljavafx/scene/control/TabPane;->tabClosingPolicyProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    const-string v7, "TAB_CLOSING_POLICY"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 1301
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TabPane;

    invoke-virtual {v6}, Ljavafx/scene/control/TabPane;->sideProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v6

    const-string v7, "SIDE"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 1302
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TabPane;

    invoke-virtual {v6}, Ljavafx/scene/control/TabPane;->rotateGraphicProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v6

    const-string v7, "ROTATE_GRAPHIC"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 1303
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TabPane;

    invoke-virtual {v6}, Ljavafx/scene/control/TabPane;->tabMinWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v6

    const-string v7, "TAB_MIN_WIDTH"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 1304
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TabPane;

    invoke-virtual {v6}, Ljavafx/scene/control/TabPane;->tabMaxWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v6

    const-string v7, "TAB_MAX_WIDTH"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 1305
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TabPane;

    invoke-virtual {v6}, Ljavafx/scene/control/TabPane;->tabMinHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v6

    const-string v7, "TAB_MIN_HEIGHT"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 1306
    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    move-object v6, v1

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v6

    check-cast v6, Ljavafx/scene/control/TabPane;

    invoke-virtual {v6}, Ljavafx/scene/control/TabPane;->tabMaxHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v6

    const-string v7, "TAB_MAX_HEIGHT"

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->registerChangeListener(Ljavafx/beans/value/ObservableValue;Ljava/lang/String;)V

    .line 1308
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v5

    const-class v6, Ljavafx/scene/control/Tab;

    move-object v7, v2

    invoke-interface {v5, v6, v7}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1309
    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v5

    const-class v6, Ljavafx/scene/control/ContextMenu;

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/Tab;->getContextMenu()Ljavafx/scene/control/ContextMenu;

    move-result-object v7

    invoke-interface {v5, v6, v7}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 1311
    move-object v5, v0

    move-object v6, v0

    invoke-static {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/event/EventHandler;

    move-result-object v6

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->setOnContextMenuRequested(Ljavafx/event/EventHandler;)V

    .line 1317
    move-object v5, v0

    new-instance v6, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$5;

    move-object v13, v6

    move-object v6, v13

    move-object v7, v13

    move-object v8, v0

    move-object v9, v1

    invoke-direct {v7, v8, v9}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin$5;-><init>(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)V

    invoke-virtual {v5, v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->setOnMousePressed(Ljavafx/event/EventHandler;)V

    .line 1338
    move-object v5, v0

    # getter for: Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->SELECTED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$3500()Ljavafx/css/PseudoClass;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/Tab;->isSelected()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 1339
    move-object v5, v0

    # getter for: Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->DISABLED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$3600()Ljavafx/css/PseudoClass;

    move-result-object v6

    move-object v7, v2

    invoke-virtual {v7}, Ljavafx/scene/control/Tab;->isDisable()Z

    move-result v7

    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 1340
    move-object v5, v1

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v5

    check-cast v5, Ljavafx/scene/control/TabPane;

    invoke-virtual {v5}, Ljavafx/scene/control/TabPane;->getSide()Ljavafx/geometry/Side;

    move-result-object v5

    move-object v4, v5

    .line 1341
    .local v4, "side":Ljavafx/geometry/Side;
    move-object v5, v0

    # getter for: Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->TOP_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$3700()Ljavafx/css/PseudoClass;

    move-result-object v6

    move-object v7, v4

    sget-object v8, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    if-ne v7, v8, :cond_2

    const/4 v7, 0x1

    :goto_1
    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 1342
    move-object v5, v0

    # getter for: Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->RIGHT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$3800()Ljavafx/css/PseudoClass;

    move-result-object v6

    move-object v7, v4

    sget-object v8, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    if-ne v7, v8, :cond_3

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 1343
    move-object v5, v0

    # getter for: Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->BOTTOM_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$3900()Ljavafx/css/PseudoClass;

    move-result-object v6

    move-object v7, v4

    sget-object v8, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    if-ne v7, v8, :cond_4

    const/4 v7, 0x1

    :goto_3
    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 1344
    move-object v5, v0

    # getter for: Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->LEFT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$4000()Ljavafx/css/PseudoClass;

    move-result-object v6

    move-object v7, v4

    sget-object v8, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    if-ne v7, v8, :cond_5

    const/4 v7, 0x1

    :goto_4
    invoke-virtual {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 1345
    return-void

    .line 1278
    .end local v4    # "side":Ljavafx/geometry/Side;
    :cond_1
    const-wide/16 v6, 0x0

    goto/16 :goto_0

    .line 1341
    .restart local v4    # "side":Ljavafx/geometry/Side;
    :cond_2
    const/4 v7, 0x0

    goto :goto_1

    .line 1342
    :cond_3
    const/4 v7, 0x0

    goto :goto_2

    .line 1343
    :cond_4
    const/4 v7, 0x0

    goto :goto_3

    .line 1344
    :cond_5
    const/4 v7, 0x0

    goto :goto_4
.end method

.method static synthetic access$1000(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/scene/control/Tab;
    .locals 2

    .prologue
    .line 1106
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->tab:Ljavafx/scene/control/Tab;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    return-object v0
.end method

.method static synthetic access$1200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 1106
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->animationTransition:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    return-object v0
.end method

.method static synthetic access$1300(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/scene/layout/StackPane;
    .locals 2

    .prologue
    .line 1106
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->inner:Ljavafx/scene/layout/StackPane;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    return-object v0
.end method

.method static synthetic access$300(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Z
    .locals 2

    .prologue
    .line 1106
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->isClosing:Z

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    return v0
.end method

.method static synthetic access$302(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Z)Z
    .locals 7

    .prologue
    .line 1106
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move v1, p1

    .local v1, "x1":Z
    move-object v2, v0

    move v3, v1

    move-object v5, v2

    move v6, v3

    move v2, v6

    move-object v3, v5

    move v4, v6

    iput-boolean v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->isClosing:Z

    move v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    return v0
.end method

.method static synthetic access$3200(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/scene/control/Label;
    .locals 2

    .prologue
    .line 1106
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->label:Ljavafx/scene/control/Label;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    return-object v0
.end method

.method static synthetic access$3300(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Z
    .locals 2

    .prologue
    .line 1106
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->showCloseButton()Z

    move-result v1

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    return v0
.end method

.method static synthetic access$3400(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/scene/layout/StackPane;
    .locals 2

    .prologue
    .line 1106
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->closeBtn:Ljavafx/scene/layout/StackPane;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    return-object v0
.end method

.method static synthetic access$400(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/scene/control/Tab;)V
    .locals 4

    .prologue
    .line 1106
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v1, p1

    .local v1, "x1":Ljavafx/scene/control/Tab;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->removeListeners(Ljavafx/scene/control/Tab;)V

    return-void
.end method

.method static synthetic access$700(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;
    .locals 2

    .prologue
    .line 1106
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->animationState:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    return-object v0
.end method

.method static synthetic access$702(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;)Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;
    .locals 7

    .prologue
    .line 1106
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v1, p1

    .local v1, "x1":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->animationState:Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabAnimationState;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    return-object v0
.end method

.method static synthetic access$800(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;)Ljavafx/animation/Timeline;
    .locals 2

    .prologue
    .line 1106
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->currentAnimation:Ljavafx/animation/Timeline;

    move-object v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    return-object v0
.end method

.method static synthetic access$802(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/animation/Timeline;)Ljavafx/animation/Timeline;
    .locals 7

    .prologue
    .line 1106
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v1, p1

    .local v1, "x1":Ljavafx/animation/Timeline;
    move-object v2, v0

    move-object v3, v1

    move-object v5, v2

    move-object v6, v3

    move-object v2, v6

    move-object v3, v5

    move-object v4, v6

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->currentAnimation:Ljavafx/animation/Timeline;

    move-object v0, v2

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    return-object v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->lambda$new$489(Ljava/lang/String;)Ljava/lang/Void;

    move-result-object v2

    move-object v0, v2

    return-object v0
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;Ljavafx/scene/input/ContextMenuEvent;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->lambda$new$490(Ljavafx/scene/input/ContextMenuEvent;)V

    return-void
.end method

.method private handlePropertyChanged(Ljava/lang/String;)V
    .locals 7

    .prologue
    .line 1349
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v1, p1

    .local v1, "p":Ljava/lang/String;
    const-string v3, "CLOSABLE"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1350
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->inner:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->requestLayout()V

    .line 1351
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->requestLayout()V

    .line 1413
    :cond_0
    :goto_0
    return-void

    .line 1352
    :cond_1
    const-string v3, "SELECTED"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1353
    move-object v3, v0

    # getter for: Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->SELECTED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$3500()Ljavafx/css/PseudoClass;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->tab:Ljavafx/scene/control/Tab;

    invoke-virtual {v5}, Ljavafx/scene/control/Tab;->isSelected()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 1357
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->inner:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->requestLayout()V

    .line 1358
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->requestLayout()V

    goto :goto_0

    .line 1359
    :cond_2
    const-string v3, "TEXT"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 1360
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->label:Ljavafx/scene/control/Label;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->getTab()Ljavafx/scene/control/Tab;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/Tab;->getText()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Label;->setText(Ljava/lang/String;)V

    goto :goto_0

    .line 1361
    :cond_3
    const-string v3, "GRAPHIC"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 1362
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->label:Ljavafx/scene/control/Label;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->getTab()Ljavafx/scene/control/Tab;

    move-result-object v4

    invoke-virtual {v4}, Ljavafx/scene/control/Tab;->getGraphic()Ljavafx/scene/Node;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Label;->setGraphic(Ljavafx/scene/Node;)V

    goto :goto_0

    .line 1363
    :cond_4
    const-string v3, "CONTEXT_MENU"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    goto :goto_0

    .line 1365
    :cond_5
    const-string v3, "TOOLTIP"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_7

    .line 1367
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->oldTooltip:Ljavafx/scene/control/Tooltip;

    if-eqz v3, :cond_6

    .line 1368
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->oldTooltip:Ljavafx/scene/control/Tooltip;

    invoke-static {v3, v4}, Ljavafx/scene/control/Tooltip;->uninstall(Ljavafx/scene/Node;Ljavafx/scene/control/Tooltip;)V

    .line 1370
    :cond_6
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->tab:Ljavafx/scene/control/Tab;

    invoke-virtual {v4}, Ljavafx/scene/control/Tab;->getTooltip()Ljavafx/scene/control/Tooltip;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->tooltip:Ljavafx/scene/control/Tooltip;

    .line 1371
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->tooltip:Ljavafx/scene/control/Tooltip;

    if-eqz v3, :cond_0

    .line 1373
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->tooltip:Ljavafx/scene/control/Tooltip;

    invoke-static {v3, v4}, Ljavafx/scene/control/Tooltip;->install(Ljavafx/scene/Node;Ljavafx/scene/control/Tooltip;)V

    .line 1374
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->tooltip:Ljavafx/scene/control/Tooltip;

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->oldTooltip:Ljavafx/scene/control/Tooltip;

    goto/16 :goto_0

    .line 1376
    :cond_7
    const-string v3, "DISABLE"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_8

    .line 1377
    move-object v3, v0

    # getter for: Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->DISABLED_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$3600()Ljavafx/css/PseudoClass;

    move-result-object v4

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->tab:Ljavafx/scene/control/Tab;

    invoke-virtual {v5}, Ljavafx/scene/control/Tab;->isDisable()Z

    move-result v5

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 1378
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->inner:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->requestLayout()V

    .line 1379
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->requestLayout()V

    goto/16 :goto_0

    .line 1380
    :cond_8
    const-string v3, "STYLE"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_9

    .line 1381
    move-object v3, v0

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->tab:Ljavafx/scene/control/Tab;

    invoke-virtual {v4}, Ljavafx/scene/control/Tab;->getStyle()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->setStyle(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1385
    :cond_9
    const-string v3, "TAB_CLOSING_POLICY"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_a

    .line 1386
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->inner:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v3}, Ljavafx/scene/layout/StackPane;->requestLayout()V

    .line 1387
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->requestLayout()V

    goto/16 :goto_0

    .line 1388
    :cond_a
    const-string v3, "SIDE"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_11

    .line 1389
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TabPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->getSide()Ljavafx/geometry/Side;

    move-result-object v3

    move-object v2, v3

    .line 1390
    .local v2, "side":Ljavafx/geometry/Side;
    move-object v3, v0

    # getter for: Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->TOP_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$3700()Ljavafx/css/PseudoClass;

    move-result-object v4

    move-object v5, v2

    sget-object v6, Ljavafx/geometry/Side;->TOP:Ljavafx/geometry/Side;

    if-ne v5, v6, :cond_c

    const/4 v5, 0x1

    :goto_1
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 1391
    move-object v3, v0

    # getter for: Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->RIGHT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$3800()Ljavafx/css/PseudoClass;

    move-result-object v4

    move-object v5, v2

    sget-object v6, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    if-ne v5, v6, :cond_d

    const/4 v5, 0x1

    :goto_2
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 1392
    move-object v3, v0

    # getter for: Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->BOTTOM_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$3900()Ljavafx/css/PseudoClass;

    move-result-object v4

    move-object v5, v2

    sget-object v6, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    if-ne v5, v6, :cond_e

    const/4 v5, 0x1

    :goto_3
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 1393
    move-object v3, v0

    # getter for: Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->LEFT_PSEUDOCLASS_STATE:Ljavafx/css/PseudoClass;
    invoke-static {}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$4000()Ljavafx/css/PseudoClass;

    move-result-object v4

    move-object v5, v2

    sget-object v6, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    if-ne v5, v6, :cond_f

    const/4 v5, 0x1

    :goto_4
    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 1394
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->inner:Ljavafx/scene/layout/StackPane;

    move-object v4, v2

    sget-object v5, Ljavafx/geometry/Side;->BOTTOM:Ljavafx/geometry/Side;

    if-ne v4, v5, :cond_10

    const-wide v4, 0x4066800000000000L    # 180.0

    :goto_5
    invoke-virtual {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->setRotate(D)V

    .line 1395
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TabPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->isRotateGraphic()Z

    move-result v3

    if-eqz v3, :cond_b

    .line 1396
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->updateGraphicRotation()V

    .line 1398
    :cond_b
    goto/16 :goto_0

    .line 1390
    :cond_c
    const/4 v5, 0x0

    goto :goto_1

    .line 1391
    :cond_d
    const/4 v5, 0x0

    goto :goto_2

    .line 1392
    :cond_e
    const/4 v5, 0x0

    goto :goto_3

    .line 1393
    :cond_f
    const/4 v5, 0x0

    goto :goto_4

    .line 1394
    :cond_10
    const-wide/16 v4, 0x0

    goto :goto_5

    .line 1398
    .end local v2    # "side":Ljavafx/geometry/Side;
    :cond_11
    const-string v3, "ROTATE_GRAPHIC"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_12

    .line 1399
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->updateGraphicRotation()V

    goto/16 :goto_0

    .line 1400
    :cond_12
    const-string v3, "TAB_MIN_WIDTH"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_13

    .line 1401
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->requestLayout()V

    .line 1402
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TabPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->requestLayout()V

    goto/16 :goto_0

    .line 1403
    :cond_13
    const-string v3, "TAB_MAX_WIDTH"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_14

    .line 1404
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->requestLayout()V

    .line 1405
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TabPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->requestLayout()V

    goto/16 :goto_0

    .line 1406
    :cond_14
    const-string v3, "TAB_MIN_HEIGHT"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_15

    .line 1407
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->requestLayout()V

    .line 1408
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TabPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->requestLayout()V

    goto/16 :goto_0

    .line 1409
    :cond_15
    const-string v3, "TAB_MAX_HEIGHT"

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1410
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->requestLayout()V

    .line 1411
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TabPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->requestLayout()V

    goto/16 :goto_0
.end method

.method private synthetic lambda$new$489(Ljava/lang/String;)Ljava/lang/Void;
    .locals 4

    .prologue
    .line 1122
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v1, p1

    .local v1, "param":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->handlePropertyChanged(Ljava/lang/String;)V

    .line 1123
    const/4 v2, 0x0

    move-object v0, v2

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    return-object v0
.end method

.method private synthetic lambda$new$490(Ljavafx/scene/input/ContextMenuEvent;)V
    .locals 8

    .prologue
    .line 1312
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v1, p1

    .local v1, "me":Ljavafx/scene/input/ContextMenuEvent;
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->getTab()Ljavafx/scene/control/Tab;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/Tab;->getContextMenu()Ljavafx/scene/control/ContextMenu;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 1313
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->getTab()Ljavafx/scene/control/Tab;

    move-result-object v2

    invoke-virtual {v2}, Ljavafx/scene/control/Tab;->getContextMenu()Ljavafx/scene/control/ContextMenu;

    move-result-object v2

    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->inner:Ljavafx/scene/layout/StackPane;

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/input/ContextMenuEvent;->getScreenX()D

    move-result-wide v4

    move-object v6, v1

    invoke-virtual {v6}, Ljavafx/scene/input/ContextMenuEvent;->getScreenY()D

    move-result-wide v6

    invoke-virtual/range {v2 .. v7}, Ljavafx/scene/control/ContextMenu;->show(Ljavafx/scene/Node;DD)V

    .line 1314
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/input/ContextMenuEvent;->consume()V

    .line 1316
    :cond_0
    return-void
.end method

.method private removeListeners(Ljavafx/scene/control/Tab;)V
    .locals 3

    .prologue
    .line 1436
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v1, p1

    .local v1, "tab":Ljavafx/scene/control/Tab;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->listener:Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/MultiplePropertyChangeListenerHandler;->dispose()V

    .line 1437
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->inner:Ljavafx/scene/layout/StackPane;

    invoke-virtual {v2}, Ljavafx/scene/layout/StackPane;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->clear()V

    .line 1438
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->getChildren()Ljavafx/collections/ObservableList;

    move-result-object v2

    invoke-interface {v2}, Ljavafx/collections/ObservableList;->clear()V

    .line 1439
    return-void
.end method

.method private showCloseButton()Z
    .locals 3

    .prologue
    .line 1424
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->tab:Ljavafx/scene/control/Tab;

    invoke-virtual {v1}, Ljavafx/scene/control/Tab;->isClosable()Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    .line 1425
    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TabPane;

    invoke-virtual {v1}, Ljavafx/scene/control/TabPane;->getTabClosingPolicy()Ljavafx/scene/control/TabPane$TabClosingPolicy;

    move-result-object v1

    sget-object v2, Ljavafx/scene/control/TabPane$TabClosingPolicy;->ALL_TABS:Ljavafx/scene/control/TabPane$TabClosingPolicy;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TabPane$TabClosingPolicy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    .line 1426
    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/TabPane;

    invoke-virtual {v1}, Ljavafx/scene/control/TabPane;->getTabClosingPolicy()Ljavafx/scene/control/TabPane$TabClosingPolicy;

    move-result-object v1

    sget-object v2, Ljavafx/scene/control/TabPane$TabClosingPolicy;->SELECTED_TAB:Ljavafx/scene/control/TabPane$TabClosingPolicy;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TabPane$TabClosingPolicy;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->tab:Ljavafx/scene/control/Tab;

    invoke-virtual {v1}, Ljavafx/scene/control/Tab;->isSelected()Z

    move-result v1

    if-eqz v1, :cond_1

    :cond_0
    const/4 v1, 0x1

    :goto_0
    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    return v0

    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private updateGraphicRotation()V
    .locals 4

    .prologue
    .line 1416
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->label:Ljavafx/scene/control/Label;

    invoke-virtual {v1}, Ljavafx/scene/control/Label;->getGraphic()Ljavafx/scene/Node;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1417
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->label:Ljavafx/scene/control/Label;

    invoke-virtual {v1}, Ljavafx/scene/control/Label;->getGraphic()Ljavafx/scene/Node;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TabPane;

    invoke-virtual {v2}, Ljavafx/scene/control/TabPane;->isRotateGraphic()Z

    move-result v2

    if-eqz v2, :cond_1

    const-wide/16 v2, 0x0

    :goto_0
    invoke-virtual {v1, v2, v3}, Ljavafx/scene/Node;->setRotate(D)V

    .line 1421
    :cond_0
    return-void

    .line 1417
    :cond_1
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    .line 1418
    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TabPane;

    invoke-virtual {v2}, Ljavafx/scene/control/TabPane;->getSide()Ljavafx/geometry/Side;

    move-result-object v2

    sget-object v3, Ljavafx/geometry/Side;->RIGHT:Ljavafx/geometry/Side;

    invoke-virtual {v2, v3}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    const/high16 v2, -0x3d4c0000    # -90.0f

    .line 1419
    :goto_1
    float-to-double v2, v2

    goto :goto_0

    .line 1418
    :cond_2
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    .line 1419
    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v2

    check-cast v2, Ljavafx/scene/control/TabPane;

    invoke-virtual {v2}, Ljavafx/scene/control/TabPane;->getSide()Ljavafx/geometry/Side;

    move-result-object v2

    sget-object v3, Ljavafx/geometry/Side;->LEFT:Ljavafx/geometry/Side;

    invoke-virtual {v2, v3}, Ljavafx/geometry/Side;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    const/high16 v2, 0x42b40000    # 90.0f

    goto :goto_1

    :cond_3
    const/4 v2, 0x0

    goto :goto_1
.end method


# virtual methods
.method protected computePrefHeight(D)D
    .locals 21

    .prologue
    .line 1470
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-wide/from16 v2, p1

    .local v2, "width":D
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/TabPane;

    invoke-virtual {v15}, Ljavafx/scene/control/TabPane;->getTabMinHeight()D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->snapSize(D)D

    move-result-wide v14

    move-wide v4, v14

    .line 1471
    .local v4, "minHeight":D
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/TabPane;

    invoke-virtual {v15}, Ljavafx/scene/control/TabPane;->getTabMaxHeight()D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->snapSize(D)D

    move-result-wide v14

    move-wide v6, v14

    .line 1472
    .local v6, "maxHeight":D
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->snappedTopInset()D

    move-result-wide v14

    move-wide v8, v14

    .line 1473
    .local v8, "paddingTop":D
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->snappedBottomInset()D

    move-result-wide v14

    move-wide v10, v14

    .line 1474
    .local v10, "paddingBottom":D
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->label:Ljavafx/scene/control/Label;

    move-wide/from16 v16, v2

    invoke-virtual/range {v15 .. v17}, Ljavafx/scene/control/Label;->prefHeight(D)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->snapSize(D)D

    move-result-wide v14

    move-wide v12, v14

    .line 1476
    .local v12, "tmpPrefHeight":D
    move-wide v14, v12

    move-wide/from16 v16, v6

    cmpl-double v14, v14, v16

    if-lez v14, :cond_1

    .line 1477
    move-wide v14, v6

    move-wide v12, v14

    .line 1481
    :cond_0
    :goto_0
    move-wide v14, v12

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    add-double v16, v16, v18

    add-double v14, v14, v16

    move-wide v12, v14

    .line 1482
    move-wide v14, v12

    move-wide v1, v14

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    return-wide v1

    .line 1478
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    :cond_1
    move-wide v14, v12

    move-wide/from16 v16, v4

    cmpg-double v14, v14, v16

    if-gez v14, :cond_0

    .line 1479
    move-wide v14, v4

    move-wide v12, v14

    goto :goto_0
.end method

.method protected computePrefWidth(D)D
    .locals 21

    .prologue
    .line 1448
    move-object/from16 v1, p0

    .local v1, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-wide/from16 v2, p1

    .local v2, "height":D
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/TabPane;

    invoke-virtual {v15}, Ljavafx/scene/control/TabPane;->getTabMinWidth()D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->snapSize(D)D

    move-result-wide v14

    move-wide v4, v14

    .line 1449
    .local v4, "minWidth":D
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-virtual {v15}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v15

    check-cast v15, Ljavafx/scene/control/TabPane;

    invoke-virtual {v15}, Ljavafx/scene/control/TabPane;->getTabMaxWidth()D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->snapSize(D)D

    move-result-wide v14

    move-wide v6, v14

    .line 1450
    .local v6, "maxWidth":D
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->snappedRightInset()D

    move-result-wide v14

    move-wide v8, v14

    .line 1451
    .local v8, "paddingRight":D
    move-object v14, v1

    invoke-virtual {v14}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->snappedLeftInset()D

    move-result-wide v14

    move-wide v10, v14

    .line 1452
    .local v10, "paddingLeft":D
    move-object v14, v1

    move-object v15, v1

    iget-object v15, v15, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->label:Ljavafx/scene/control/Label;

    const-wide/high16 v16, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v15 .. v17}, Ljavafx/scene/control/Label;->prefWidth(D)D

    move-result-wide v15

    invoke-virtual/range {v14 .. v16}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->snapSize(D)D

    move-result-wide v14

    move-wide v12, v14

    .line 1455
    .local v12, "tmpPrefWidth":D
    move-object v14, v1

    invoke-direct {v14}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->showCloseButton()Z

    move-result v14

    if-eqz v14, :cond_0

    .line 1456
    move-wide v14, v12

    move-object/from16 v16, v1

    move-object/from16 v17, v1

    move-object/from16 v0, v17

    iget-object v0, v0, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->closeBtn:Ljavafx/scene/layout/StackPane;

    move-object/from16 v17, v0

    const-wide/high16 v18, -0x4010000000000000L    # -1.0

    invoke-virtual/range {v17 .. v19}, Ljavafx/scene/layout/StackPane;->prefWidth(D)D

    move-result-wide v17

    invoke-virtual/range {v16 .. v18}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->snapSize(D)D

    move-result-wide v16

    add-double v14, v14, v16

    move-wide v12, v14

    .line 1459
    :cond_0
    move-wide v14, v12

    move-wide/from16 v16, v6

    cmpl-double v14, v14, v16

    if-lez v14, :cond_2

    .line 1460
    move-wide v14, v6

    move-wide v12, v14

    .line 1464
    :cond_1
    :goto_0
    move-wide v14, v12

    move-wide/from16 v16, v8

    move-wide/from16 v18, v10

    add-double v16, v16, v18

    add-double v14, v14, v16

    move-wide v12, v14

    .line 1466
    move-wide v14, v12

    move-wide v1, v14

    .end local v1    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    return-wide v1

    .line 1461
    .restart local v1    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    :cond_2
    move-wide v14, v12

    move-wide/from16 v16, v4

    cmpg-double v14, v14, v16

    if-gez v14, :cond_1

    .line 1462
    move-wide v14, v4

    move-wide v12, v14

    goto :goto_0
.end method

.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 1512
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$3;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1516
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 1518
    :goto_0
    return-void

    .line 1514
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/TabPane;

    invoke-virtual {v3}, Ljavafx/scene/control/TabPane;->getSelectionModel()Ljavafx/scene/control/SingleSelectionModel;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->getTab()Ljavafx/scene/control/Tab;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/scene/control/SingleSelectionModel;->select(Ljava/lang/Object;)V

    .line 1515
    goto :goto_0

    .line 1512
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch
.end method

.method public getTab()Ljavafx/scene/control/Tab;
    .locals 2

    .prologue
    .line 1109
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->tab:Ljavafx/scene/control/Tab;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    return-object v0
.end method

.method protected layoutChildren()V
    .locals 10

    .prologue
    .line 1486
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v3, v0

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->getWidth()D

    move-result-wide v4

    invoke-virtual {v3, v4, v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->snapSize(D)D

    move-result-wide v3

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->snappedRightInset()D

    move-result-wide v5

    sub-double/2addr v3, v5

    move-object v5, v0

    invoke-virtual {v5}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->snappedLeftInset()D

    move-result-wide v5

    sub-double/2addr v3, v5

    move-object v5, v0

    iget-object v5, v5, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->animationTransition:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v5}, Ljavafx/beans/property/DoubleProperty;->getValue()Ljava/lang/Double;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Double;->doubleValue()D

    move-result-wide v5

    mul-double/2addr v3, v5

    move-wide v1, v3

    .line 1487
    .local v1, "w":D
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->inner:Ljavafx/scene/layout/StackPane;

    move-wide v4, v1

    move-object v6, v0

    move-object v7, v0

    invoke-virtual {v7}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->getHeight()D

    move-result-wide v7

    invoke-virtual {v6, v7, v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->snapSize(D)D

    move-result-wide v6

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->snappedTopInset()D

    move-result-wide v8

    sub-double/2addr v6, v8

    move-object v8, v0

    invoke-virtual {v8}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->snappedBottomInset()D

    move-result-wide v8

    sub-double/2addr v6, v8

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/layout/StackPane;->resize(DD)V

    .line 1488
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->inner:Ljavafx/scene/layout/StackPane;

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->snappedLeftInset()D

    move-result-wide v4

    move-object v6, v0

    invoke-virtual {v6}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->snappedTopInset()D

    move-result-wide v6

    invoke-virtual {v3, v4, v5, v6, v7}, Ljavafx/scene/layout/StackPane;->relocate(DD)V

    .line 1489
    return-void
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1503
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$3;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1506
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    :goto_0
    return-object v0

    .line 1504
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->getTab()Ljavafx/scene/control/Tab;

    move-result-object v3

    invoke-virtual {v3}, Ljavafx/scene/control/Tab;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 1505
    :pswitch_1
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->this$0:Lcom/sun/javafx/scene/control/skin/TabPaneSkin;

    invoke-static {v3}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin;->access$2900(Lcom/sun/javafx/scene/control/skin/TabPaneSkin;)Ljavafx/scene/control/Tab;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->getTab()Ljavafx/scene/control/Tab;

    move-result-object v4

    if-ne v3, v4, :cond_0

    const/4 v3, 0x1

    :goto_1
    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    goto :goto_1

    .line 1503
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method protected setHeight(D)V
    .locals 7

    .prologue
    .line 1497
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->setHeight(D)V

    .line 1498
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->clip:Ljavafx/scene/shape/Rectangle;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Rectangle;->setHeight(D)V

    .line 1499
    return-void
.end method

.method protected setWidth(D)V
    .locals 7

    .prologue
    .line 1492
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Ljavafx/scene/layout/StackPane;->setWidth(D)V

    .line 1493
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/TabPaneSkin$TabHeaderSkin;->clip:Ljavafx/scene/shape/Rectangle;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/shape/Rectangle;->setWidth(D)V

    .line 1494
    return-void
.end method
