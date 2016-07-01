.class public Ljavafx/scene/control/ButtonBar;
.super Ljavafx/scene/control/Control;
.source "ButtonBar.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/ButtonBar$ButtonData;
    }
.end annotation


# static fields
.field public static final BUTTON_ORDER_LINUX:Ljava/lang/String; = "L_HE+UNYACBXIO_R"

.field public static final BUTTON_ORDER_MAC_OS:Ljava/lang/String; = "L_HE+U+FBIX_NCYOA_R"

.field public static final BUTTON_ORDER_NONE:Ljava/lang/String; = ""

.field public static final BUTTON_ORDER_WINDOWS:Ljava/lang/String; = "L_E+U+FBXI_YNOCAH_R"


# instance fields
.field private final buttonMinWidthProperty:Ljavafx/beans/property/DoubleProperty;

.field private final buttonOrderProperty:Ljavafx/beans/property/StringProperty;

.field private buttons:Ljavafx/collections/ObservableList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 448
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBar;
    move-object v1, v0

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljavafx/scene/control/ButtonBar;-><init>(Ljava/lang/String;)V

    .line 449
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 9

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBar;
    move-object v1, p1

    .local v1, "buttonOrder":Ljava/lang/String;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/Control;-><init>()V

    .line 433
    move-object v3, v0

    invoke-static {}, Ljavafx/collections/FXCollections;->observableArrayList()Ljavafx/collections/ObservableList;

    move-result-object v4

    iput-object v4, v3, Ljavafx/scene/control/ButtonBar;->buttons:Ljavafx/collections/ObservableList;

    .line 530
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleStringProperty;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const-string v7, "buttonOrder"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleStringProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/control/ButtonBar;->buttonOrderProperty:Ljavafx/beans/property/StringProperty;

    .line 558
    move-object v3, v0

    new-instance v4, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v8, v4

    move-object v4, v8

    move-object v5, v8

    move-object v6, v0

    const-string v7, "buttonMinWidthProperty"

    invoke-direct {v5, v6, v7}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v4, v3, Ljavafx/scene/control/ButtonBar;->buttonMinWidthProperty:Ljavafx/beans/property/DoubleProperty;

    .line 458
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ButtonBar;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v3

    const-string v4, "button-bar"

    invoke-interface {v3, v4}, Ljavafx/collections/ObservableList;->add(Ljava/lang/Object;)Z

    move-result v3

    .line 466
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/ButtonBar;->focusTraversableProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v3

    check-cast v3, Ljavafx/css/StyleableProperty;

    const/4 v4, 0x0

    sget-object v5, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    invoke-interface {v3, v4, v5}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 468
    move-object v3, v1

    if-eqz v3, :cond_0

    move-object v3, v1

    invoke-virtual {v3}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    move v2, v3

    .line 470
    .local v2, "buttonOrderEmpty":Z
    invoke-static {}, Lcom/sun/javafx/util/Utils;->isMac()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 471
    move-object v3, v0

    move v4, v2

    if-eqz v4, :cond_2

    sget-object v4, Ljavafx/scene/control/ButtonBar;->BUTTON_ORDER_MAC_OS:Ljava/lang/String;

    :goto_1
    invoke-virtual {v3, v4}, Ljavafx/scene/control/ButtonBar;->setButtonOrder(Ljava/lang/String;)V

    .line 472
    move-object v3, v0

    const-wide v4, 0x4051800000000000L    # 70.0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ButtonBar;->setButtonMinWidth(D)V

    .line 481
    :goto_2
    return-void

    .line 468
    .end local v2    # "buttonOrderEmpty":Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0

    .line 471
    .restart local v2    # "buttonOrderEmpty":Z
    :cond_2
    move-object v4, v1

    goto :goto_1

    .line 473
    :cond_3
    invoke-static {}, Lcom/sun/javafx/util/Utils;->isUnix()Z

    move-result v3

    if-eqz v3, :cond_5

    .line 474
    move-object v3, v0

    move v4, v2

    if-eqz v4, :cond_4

    sget-object v4, Ljavafx/scene/control/ButtonBar;->BUTTON_ORDER_LINUX:Ljava/lang/String;

    :goto_3
    invoke-virtual {v3, v4}, Ljavafx/scene/control/ButtonBar;->setButtonOrder(Ljava/lang/String;)V

    .line 475
    move-object v3, v0

    const-wide v4, 0x4055400000000000L    # 85.0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ButtonBar;->setButtonMinWidth(D)V

    goto :goto_2

    .line 474
    :cond_4
    move-object v4, v1

    goto :goto_3

    .line 478
    :cond_5
    move-object v3, v0

    move v4, v2

    if-eqz v4, :cond_6

    sget-object v4, Ljavafx/scene/control/ButtonBar;->BUTTON_ORDER_WINDOWS:Ljava/lang/String;

    :goto_4
    invoke-virtual {v3, v4}, Ljavafx/scene/control/ButtonBar;->setButtonOrder(Ljava/lang/String;)V

    .line 479
    move-object v3, v0

    const-wide v4, 0x4052c00000000000L    # 75.0

    invoke-virtual {v3, v4, v5}, Ljavafx/scene/control/ButtonBar;->setButtonMinWidth(D)V

    goto :goto_2

    .line 478
    :cond_6
    move-object v4, v1

    goto :goto_4
.end method

.method public static getButtonData(Ljavafx/scene/Node;)Ljavafx/scene/control/ButtonBar$ButtonData;
    .locals 5

    .prologue
    .line 379
    move-object v0, p0

    .local v0, "button":Ljavafx/scene/Node;
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v3

    move-object v1, v3

    .line 380
    .local v1, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    move-object v3, v1

    const-string v4, "javafx.scene.control.ButtonBar.ButtonData"

    invoke-interface {v3, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 381
    move-object v3, v1

    const-string v4, "javafx.scene.control.ButtonBar.ButtonData"

    invoke-interface {v3, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/beans/property/ObjectProperty;

    move-object v2, v3

    .line 382
    .local v2, "property":Ljavafx/beans/property/ObjectProperty;, "Ljavafx/beans/property/ObjectProperty<Ljavafx/scene/control/ButtonBar$ButtonData;>;"
    move-object v3, v2

    if-nez v3, :cond_0

    const/4 v3, 0x0

    :goto_0
    move-object v0, v3

    .line 384
    .end local v0    # "button":Ljavafx/scene/Node;
    .end local v2    # "property":Ljavafx/beans/property/ObjectProperty;, "Ljavafx/beans/property/ObjectProperty<Ljavafx/scene/control/ButtonBar$ButtonData;>;"
    :goto_1
    return-object v0

    .line 382
    .restart local v0    # "button":Ljavafx/scene/Node;
    .restart local v2    # "property":Ljavafx/beans/property/ObjectProperty;, "Ljavafx/beans/property/ObjectProperty<Ljavafx/scene/control/ButtonBar$ButtonData;>;"
    :cond_0
    move-object v3, v2

    invoke-virtual {v3}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljavafx/scene/control/ButtonBar$ButtonData;

    goto :goto_0

    .line 384
    .end local v2    # "property":Ljavafx/beans/property/ObjectProperty;, "Ljavafx/beans/property/ObjectProperty<Ljavafx/scene/control/ButtonBar$ButtonData;>;"
    :cond_1
    const/4 v3, 0x0

    move-object v0, v3

    goto :goto_1
.end method

.method public static isButtonUniformSize(Ljavafx/scene/Node;)Z
    .locals 4

    .prologue
    .line 418
    move-object v0, p0

    .local v0, "button":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    const-string v3, "javafx.scene.control.ButtonBar.independentSize"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Boolean;

    move-object v1, v2

    .line 419
    .local v1, "value":Ljava/lang/Boolean;
    move-object v2, v1

    if-nez v2, :cond_0

    .line 420
    sget-object v2, Ljava/lang/Boolean;->TRUE:Ljava/lang/Boolean;

    move-object v1, v2

    .line 422
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    move v0, v2

    .end local v0    # "button":Ljavafx/scene/Node;
    return v0
.end method

.method public static setButtonData(Ljavafx/scene/Node;Ljavafx/scene/control/ButtonBar$ButtonData;)V
    .locals 11

    .prologue
    .line 361
    move-object v0, p0

    .local v0, "button":Ljavafx/scene/Node;
    move-object v1, p1

    .local v1, "buttonData":Ljavafx/scene/control/ButtonBar$ButtonData;
    move-object v5, v0

    invoke-virtual {v5}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v5

    move-object v2, v5

    .line 362
    .local v2, "properties":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/Object;Ljava/lang/Object;>;"
    const-string v5, "javafx.scene.control.ButtonBar.ButtonData"

    move-object v3, v5

    .line 363
    .local v3, "key":Ljava/lang/String;
    move-object v5, v2

    move-object v6, v3

    invoke-interface {v5, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljavafx/beans/property/ObjectProperty;

    move-object v4, v5

    .line 364
    .local v4, "property":Ljavafx/beans/property/ObjectProperty;, "Ljavafx/beans/property/ObjectProperty<Ljavafx/scene/control/ButtonBar$ButtonData;>;"
    move-object v5, v4

    if-nez v5, :cond_0

    .line 365
    new-instance v5, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v10, v5

    move-object v5, v10

    move-object v6, v10

    move-object v7, v0

    const-string v8, "buttonData"

    move-object v9, v1

    invoke-direct {v6, v7, v8, v9}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Ljava/lang/Object;)V

    move-object v4, v5

    .line 366
    move-object v5, v2

    move-object v6, v3

    move-object v7, v4

    invoke-interface {v5, v6, v7}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    .line 370
    :goto_0
    return-void

    .line 368
    :cond_0
    move-object v5, v4

    move-object v6, v1

    invoke-virtual {v5, v6}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    goto :goto_0
.end method

.method public static setButtonUniformSize(Ljavafx/scene/Node;Z)V
    .locals 5

    .prologue
    .line 405
    move-object v0, p0

    .local v0, "button":Ljavafx/scene/Node;
    move v1, p1

    .local v1, "uniformSize":Z
    move v2, v1

    if-eqz v2, :cond_0

    .line 406
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    const-string v3, "javafx.scene.control.ButtonBar.independentSize"

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableMap;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    .line 410
    :goto_0
    return-void

    .line 408
    :cond_0
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/Node;->getProperties()Ljavafx/collections/ObservableMap;

    move-result-object v2

    const-string v3, "javafx.scene.control.ButtonBar.independentSize"

    move v4, v1

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-interface {v2, v3, v4}, Ljavafx/collections/ObservableMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    goto :goto_0
.end method


# virtual methods
.method public final buttonMinWidthProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 556
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBar;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ButtonBar;->buttonMinWidthProperty:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ButtonBar;
    return-object v0
.end method

.method public final buttonOrderProperty()Ljavafx/beans/property/StringProperty;
    .locals 2

    .prologue
    .line 528
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBar;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ButtonBar;->buttonOrderProperty:Ljavafx/beans/property/StringProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ButtonBar;
    return-object v0
.end method

.method protected createDefaultSkin()Ljavafx/scene/control/Skin;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/Skin",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 495
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBar;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/ButtonBarSkin;-><init>(Ljavafx/scene/control/ButtonBar;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ButtonBar;
    return-object v0
.end method

.method public final getButtonMinWidth()D
    .locals 3

    .prologue
    .line 572
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBar;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ButtonBar;->buttonMinWidthProperty:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ButtonBar;
    return-wide v0
.end method

.method public final getButtonOrder()Ljava/lang/String;
    .locals 2

    .prologue
    .line 547
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBar;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ButtonBar;->buttonOrderProperty:Ljavafx/beans/property/StringProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/StringProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ButtonBar;
    return-object v0
.end method

.method public final getButtons()Ljavafx/collections/ObservableList;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/collections/ObservableList",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation

    .prologue
    .line 509
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBar;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/ButtonBar;->buttons:Ljavafx/collections/ObservableList;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ButtonBar;
    return-object v0
.end method

.method protected impl_cssGetFocusTraversableInitialValue()Ljava/lang/Boolean;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 592
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBar;
    sget-object v1, Ljava/lang/Boolean;->FALSE:Ljava/lang/Boolean;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/ButtonBar;
    return-object v0
.end method

.method public final setButtonMinWidth(D)V
    .locals 7

    .prologue
    .line 565
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBar;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Ljavafx/scene/control/ButtonBar;->buttonMinWidthProperty:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    .line 566
    return-void
.end method

.method public final setButtonOrder(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 539
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/ButtonBar;
    move-object v1, p1

    .local v1, "buttonOrder":Ljava/lang/String;
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/ButtonBar;->buttonOrderProperty:Ljavafx/beans/property/StringProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/StringProperty;->set(Ljava/lang/Object;)V

    .line 540
    return-void
.end method
