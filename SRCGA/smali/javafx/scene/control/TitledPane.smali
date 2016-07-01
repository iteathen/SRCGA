.class public Ljavafx/scene/control/TitledPane;
.super Ljavafx/scene/control/Labeled;
.source "TitledPane.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/TitledPane$StyleableProperties;
    }
.end annotation

.annotation runtime Ljavafx/beans/DefaultProperty;
    value = "content"
.end annotation


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "titled-pane"

.field private static final PSEUDO_CLASS_COLLAPSED:Ljavafx/css/PseudoClass;

.field private static final PSEUDO_CLASS_EXPANDED:Ljavafx/css/PseudoClass;


# instance fields
.field private animated:Ljavafx/beans/property/BooleanProperty;

.field private collapsible:Ljavafx/beans/property/BooleanProperty;

.field private content:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/Node;",
            ">;"
        }
    .end annotation
.end field

.field private expanded:Ljavafx/beans/property/BooleanProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 287
    const-string v0, "expanded"

    .line 288
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/TitledPane;->PSEUDO_CLASS_EXPANDED:Ljavafx/css/PseudoClass;

    .line 289
    const-string v0, "collapsed"

    .line 290
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/TitledPane;->PSEUDO_CLASS_COLLAPSED:Ljavafx/css/PseudoClass;

    .line 289
    return-void
.end method

.method public constructor <init>()V
    .locals 7

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Labeled;-><init>()V

    .line 152
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TitledPane$1;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TitledPane$1;-><init>(Ljavafx/scene/control/TitledPane;Z)V

    iput-object v2, v1, Ljavafx/scene/control/TitledPane;->expanded:Ljavafx/beans/property/BooleanProperty;

    .line 191
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TitledPane$2;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TitledPane$2;-><init>(Ljavafx/scene/control/TitledPane;Z)V

    iput-object v2, v1, Ljavafx/scene/control/TitledPane;->animated:Ljavafx/beans/property/BooleanProperty;

    .line 231
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/TitledPane$3;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const/4 v5, 0x1

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/TitledPane$3;-><init>(Ljavafx/scene/control/TitledPane;Z)V

    iput-object v2, v1, Ljavafx/scene/control/TitledPane;->collapsible:Ljavafx/beans/property/BooleanProperty;

    .line 90
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/TitledPane;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "titled-pane"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 91
    move-object v1, v0

    sget-object v2, Ljavafx/scene/AccessibleRole;->TITLED_PANE:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/TitledPane;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 94
    move-object v1, v0

    sget-object v2, Ljavafx/scene/control/TitledPane;->PSEUDO_CLASS_EXPANDED:Ljavafx/css/PseudoClass;

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v3}, Ljavafx/scene/control/TitledPane;->pseudoClassStateChanged(Ljavafx/css/PseudoClass;Z)V

    .line 95
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavafx/scene/Node;)V
    .locals 5

    .prologue
    .line 103
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane;
    move-object v1, p1

    .local v1, "title":Ljava/lang/String;
    move-object v2, p2

    .local v2, "content":Ljavafx/scene/Node;
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/TitledPane;-><init>()V

    .line 104
    move-object v3, v0

    move-object v4, v1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TitledPane;->setText(Ljava/lang/String;)V

    .line 105
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TitledPane;->setContent(Ljavafx/scene/Node;)V

    .line 106
    return-void
.end method

.method static synthetic access$000()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Ljavafx/scene/control/TitledPane;->PSEUDO_CLASS_EXPANDED:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$100()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 78
    sget-object v0, Ljavafx/scene/control/TitledPane;->PSEUDO_CLASS_COLLAPSED:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method static synthetic access$400(Ljavafx/scene/control/TitledPane;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TitledPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TitledPane;->collapsible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TitledPane;
    return-object v0
.end method

.method static synthetic access$500(Ljavafx/scene/control/TitledPane;)Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "x0":Ljavafx/scene/control/TitledPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TitledPane;->animated:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "x0":Ljavafx/scene/control/TitledPane;
    return-object v0
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
    .line 341
    # getter for: Ljavafx/scene/control/TitledPane$StyleableProperties;->STYLEABLES:Ljava/util/List;
    invoke-static {}, Ljavafx/scene/control/TitledPane$StyleableProperties;->access$600()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final animatedProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 227
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TitledPane;->animated:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TitledPane;
    return-object v0
.end method

.method public final collapsibleProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 266
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TitledPane;->collapsible:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TitledPane;
    return-object v0
.end method

.method public final contentProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 7
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
    .line 144
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TitledPane;->content:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    .line 145
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "content"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/TitledPane;->content:Ljavafx/beans/property/ObjectProperty;

    .line 147
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TitledPane;->content:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TitledPane;
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
    .line 276
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/TitledPaneSkin;-><init>(Ljavafx/scene/control/TitledPane;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TitledPane;
    return-object v0
.end method

.method public varargs executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 381
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane;
    move-object v1, p1

    .local v1, "action":Ljavafx/scene/AccessibleAction;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Ljavafx/scene/control/TitledPane$4;->$SwitchMap$javafx$scene$AccessibleAction:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAction;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 384
    move-object v3, v0

    move-object v4, v1

    const/4 v5, 0x0

    new-array v5, v5, [Ljava/lang/Object;

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/Labeled;->executeAccessibleAction(Ljavafx/scene/AccessibleAction;[Ljava/lang/Object;)V

    .line 386
    :goto_0
    return-void

    .line 382
    :pswitch_0
    move-object v3, v0

    const/4 v4, 0x1

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TitledPane;->setExpanded(Z)V

    goto :goto_0

    .line 383
    :pswitch_1
    move-object v3, v0

    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljavafx/scene/control/TitledPane;->setExpanded(Z)V

    goto :goto_0

    .line 381
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final expandedProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 2

    .prologue
    .line 187
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TitledPane;->expanded:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TitledPane;
    return-object v0
.end method

.method public final getContent()Ljavafx/scene/Node;
    .locals 2

    .prologue
    .line 135
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TitledPane;->content:Ljavafx/beans/property/ObjectProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TitledPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TitledPane;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TitledPane;->content:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/Node;

    goto :goto_0
.end method

.method public getContentBias()Ljavafx/geometry/Orientation;
    .locals 3

    .prologue
    .line 355
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TitledPane;->getContent()Ljavafx/scene/Node;

    move-result-object v2

    move-object v1, v2

    .line 356
    .local v1, "c":Ljavafx/scene/Node;
    move-object v2, v1

    if-nez v2, :cond_0

    move-object v2, v0

    invoke-super {v2}, Ljavafx/scene/control/Labeled;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v2

    :goto_0
    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/TitledPane;
    return-object v0

    .restart local v0    # "this":Ljavafx/scene/control/TitledPane;
    :cond_0
    move-object v2, v1

    invoke-virtual {v2}, Ljavafx/scene/Node;->getContentBias()Ljavafx/geometry/Orientation;

    move-result-object v2

    goto :goto_0
.end method

.method public getControlCssMetaData()Ljava/util/List;
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
    .line 350
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane;
    invoke-static {}, Ljavafx/scene/control/TitledPane;->getClassCssMetaData()Ljava/util/List;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TitledPane;
    return-object v0
.end method

.method public final isAnimated()Z
    .locals 2

    .prologue
    .line 222
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TitledPane;->animated:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TitledPane;
    return v0
.end method

.method public final isCollapsible()Z
    .locals 2

    .prologue
    .line 261
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TitledPane;->collapsible:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TitledPane;
    return v0
.end method

.method public final isExpanded()Z
    .locals 2

    .prologue
    .line 182
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/TitledPane;->expanded:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/TitledPane;
    return v0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 7

    .prologue
    .line 368
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v4, Ljavafx/scene/control/TitledPane$4;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v5, v1

    invoke-virtual {v5}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v5

    aget v4, v4, v5

    packed-switch v4, :pswitch_data_0

    .line 375
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-super {v4, v5, v6}, Ljavafx/scene/control/Labeled;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    .end local v0    # "this":Ljavafx/scene/control/TitledPane;
    :goto_0
    return-object v0

    .line 370
    .restart local v0    # "this":Ljavafx/scene/control/TitledPane;
    :pswitch_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->getAccessibleText()Ljava/lang/String;

    move-result-object v4

    move-object v3, v4

    .line 371
    .local v3, "accText":Ljava/lang/String;
    move-object v4, v3

    if-eqz v4, :cond_0

    move-object v4, v3

    invoke-virtual {v4}, Ljava/lang/String;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    move-object v4, v3

    move-object v0, v4

    goto :goto_0

    .line 372
    :cond_0
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->getText()Ljava/lang/String;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 374
    .end local v3    # "accText":Ljava/lang/String;
    :pswitch_1
    move-object v4, v0

    invoke-virtual {v4}, Ljavafx/scene/control/TitledPane;->isExpanded()Z

    move-result v4

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    move-object v0, v4

    goto :goto_0

    .line 368
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public final setAnimated(Z)V
    .locals 4

    .prologue
    .line 215
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TitledPane;->animatedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final setCollapsible(Z)V
    .locals 4

    .prologue
    .line 254
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TitledPane;->collapsibleProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method

.method public final setContent(Ljavafx/scene/Node;)V
    .locals 4

    .prologue
    .line 125
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/Node;
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TitledPane;->contentProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v2

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 126
    return-void
.end method

.method public final setExpanded(Z)V
    .locals 4

    .prologue
    .line 175
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/TitledPane;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/TitledPane;->expandedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    return-void
.end method
