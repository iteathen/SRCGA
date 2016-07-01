.class Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
.super Ljavafx/scene/control/ToggleButton;
.source "PaginationSkin.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/control/skin/PaginationSkin;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "IndicatorButton"
.end annotation


# instance fields
.field private pageNumber:I

.field final synthetic this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

.field private final updateSkinIndicatorType:Ljavafx/collections/ListChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ListChangeListener",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final updateTooltipVisibility:Ljavafx/beans/value/ChangeListener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/value/ChangeListener",
            "<",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/sun/javafx/scene/control/skin/PaginationSkin;I)V
    .locals 9

    .prologue
    .line 1195
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    move-object v1, p1

    .local v1, "this$0":Lcom/sun/javafx/scene/control/skin/PaginationSkin;
    move v2, p2

    .local v2, "pageNumber":I
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/ToggleButton;-><init>()V

    .line 1187
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton$$Lambda$1;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;)Ljavafx/collections/ListChangeListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->updateSkinIndicatorType:Ljavafx/collections/ListChangeListener;

    .line 1190
    move-object v3, v0

    move-object v4, v0

    invoke-static {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton$$Lambda$2;->lambdaFactory$(Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;)Ljavafx/beans/value/ChangeListener;

    move-result-object v4

    iput-object v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->updateTooltipVisibility:Ljavafx/beans/value/ChangeListener;

    .line 1196
    move-object v3, v0

    move v4, v2

    iput v4, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->pageNumber:I

    .line 1197
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->setFocusTraversable(Z)V

    .line 1198
    move-object v3, v0

    invoke-direct {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->setIndicatorType()V

    .line 1199
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->isTooltipVisible()Z

    move-result v4

    invoke-direct {v3, v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->setTooltipVisible(Z)V

    .line 1201
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Pagination;

    invoke-virtual {v3}, Ljavafx/scene/control/Pagination;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->updateSkinIndicatorType:Ljavafx/collections/ListChangeListener;

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->addListener(Ljavafx/collections/ListChangeListener;)V

    .line 1203
    move-object v3, v0

    new-instance v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton$1;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    move-object v7, v1

    invoke-direct {v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton$1;-><init>(Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;Lcom/sun/javafx/scene/control/skin/PaginationSkin;)V

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->setOnAction(Ljavafx/event/EventHandler;)V

    .line 1214
    move-object v3, v1

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->tooltipVisibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    move-object v4, v0

    iget-object v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->updateTooltipVisibility:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v3, v4}, Ljavafx/beans/property/BooleanProperty;->addListener(Ljavafx/beans/value/ChangeListener;)V

    .line 1216
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->prefHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v3

    move-object v4, v0

    invoke-virtual {v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->minHeightProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 1217
    move-object v3, v0

    sget-object v4, Ljavafx/scene/AccessibleRole;->PAGE_ITEM:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v3, v4}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 1218
    return-void
.end method

.method static synthetic access$2800(Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;)I
    .locals 2

    .prologue
    .line 1186
    move-object v0, p0

    .local v0, "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->pageNumber:I

    move v0, v1

    .end local v0    # "x0":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    return v0
.end method

.method static synthetic access$lambda$0(Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;Ljavafx/collections/ListChangeListener$Change;)V
    .locals 4

    move-object v0, p0

    move-object v1, p1

    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->lambda$new$428(Ljavafx/collections/ListChangeListener$Change;)V

    return-void
.end method

.method static synthetic access$lambda$1(Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 8

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    move-object v7, v3

    invoke-direct {v4, v5, v6, v7}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->lambda$new$429(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V

    return-void
.end method

.method private synthetic lambda$new$428(Ljavafx/collections/ListChangeListener$Change;)V
    .locals 3

    .prologue
    .line 1188
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    move-object v1, p1

    .local v1, "c":Ljavafx/collections/ListChangeListener$Change;
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->setIndicatorType()V

    return-void
.end method

.method private synthetic lambda$new$429(Ljavafx/beans/value/ObservableValue;Ljava/lang/Boolean;Ljava/lang/Boolean;)V
    .locals 6

    .prologue
    .line 1191
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    move-object v1, p1

    .local v1, "ob":Ljavafx/beans/value/ObservableValue;
    move-object v2, p2

    .local v2, "oldValue":Ljava/lang/Boolean;
    move-object v3, p3

    .local v3, "newValue":Ljava/lang/Boolean;
    move-object v4, v0

    move-object v5, v3

    invoke-virtual {v5}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    invoke-direct {v4, v5}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->setTooltipVisible(Z)V

    return-void
.end method

.method private setIndicatorType()V
    .locals 4

    .prologue
    .line 1221
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Pagination;

    invoke-virtual {v1}, Ljavafx/scene/control/Pagination;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "bullet"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1222
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "number-button"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 1223
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "bullet-button"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 1224
    move-object v1, v0

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->setText(Ljava/lang/String;)V

    .line 1227
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->prefWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->minWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljavafx/beans/property/DoubleProperty;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 1236
    :goto_0
    return-void

    .line 1229
    :cond_0
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "bullet-button"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->remove(Ljava/lang/Object;)Z

    move-result v1

    .line 1230
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const-string v2, "number-button"

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v1

    .line 1231
    move-object v1, v0

    move-object v2, v0

    iget v2, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->pageNumber:I

    const/4 v3, 0x1

    add-int/lit8 v2, v2, 0x1

    invoke-static {v2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->setText(Ljava/lang/String;)V

    .line 1234
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->prefWidthProperty()Ljavafx/beans/property/DoubleProperty;

    move-result-object v1

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->unbind()V

    goto :goto_0
.end method

.method private setTooltipVisible(Z)V
    .locals 8

    .prologue
    .line 1239
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    move v1, p1

    .local v1, "b":Z
    move v2, v1

    if-eqz v2, :cond_0

    .line 1240
    move-object v2, v0

    new-instance v3, Ljavafx/scene/control/Tooltip;

    move-object v7, v3

    move-object v3, v7

    move-object v4, v7

    move-object v5, v0

    iget v5, v5, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->pageNumber:I

    const/4 v6, 0x1

    add-int/lit8 v5, v5, 0x1

    invoke-static {v5}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v5

    invoke-direct {v4, v5}, Ljavafx/scene/control/Tooltip;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->setTooltip(Ljavafx/scene/control/Tooltip;)V

    .line 1244
    :goto_0
    return-void

    .line 1242
    :cond_0
    move-object v2, v0

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->setTooltip(Ljavafx/scene/control/Tooltip;)V

    goto :goto_0
.end method


# virtual methods
.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 1273
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$8;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1277
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/ToggleButton;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 1279
    :goto_0
    return-void

    .line 1275
    :pswitch_0
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/Pagination;

    move-object v4, v0

    iget v4, v4, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->pageNumber:I

    invoke-virtual {v3, v4}, Ljavafx/scene/control/Pagination;->setCurrentPageIndex(I)V

    .line 1276
    goto :goto_0

    .line 1273
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public fire()V
    .locals 2

    .prologue
    .line 1252
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->getToggleGroup()Ljavafx/scene/control/ToggleGroup;

    move-result-object v1

    if-eqz v1, :cond_0

    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->isSelected()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1253
    :cond_0
    move-object v1, v0

    invoke-super {v1}, Ljavafx/scene/control/ToggleButton;->fire()V

    .line 1255
    :cond_1
    return-void
.end method

.method public getPageNumber()I
    .locals 2

    .prologue
    .line 1247
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    move-object v1, v0

    iget v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->pageNumber:I

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    return v0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 1264
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Lcom/sun/javafx/scene/control/skin/PaginationSkin$8;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 1267
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/ToggleButton;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    :goto_0
    return-object v0

    .line 1265
    .restart local v0    # "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->getText()Ljava/lang/String;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 1266
    :pswitch_1
    move-object v3, v0

    invoke-virtual {v3}, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->isSelected()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 1264
    :pswitch_data_0
    .packed-switch 0x4
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public release()V
    .locals 3

    .prologue
    .line 1258
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->getSkinnable()Ljavafx/scene/control/Control;

    move-result-object v1

    check-cast v1, Ljavafx/scene/control/Pagination;

    invoke-virtual {v1}, Ljavafx/scene/control/Pagination;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->updateSkinIndicatorType:Ljavafx/collections/ListChangeListener;

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->removeListener(Ljavafx/collections/ListChangeListener;)V

    .line 1259
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->this$0:Lcom/sun/javafx/scene/control/skin/PaginationSkin;

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/PaginationSkin;->tooltipVisibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/PaginationSkin$IndicatorButton;->updateTooltipVisibility:Ljavafx/beans/value/ChangeListener;

    invoke-virtual {v1, v2}, Ljavafx/beans/property/BooleanProperty;->removeListener(Ljavafx/beans/value/ChangeListener;)V

    .line 1260
    return-void
.end method
