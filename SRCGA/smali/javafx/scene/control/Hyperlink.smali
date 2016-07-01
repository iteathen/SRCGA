.class public Ljavafx/scene/control/Hyperlink;
.super Ljavafx/scene/control/ButtonBase;
.source "Hyperlink.java"


# static fields
.field private static final DEFAULT_STYLE_CLASS:Ljava/lang/String; = "hyperlink"

.field private static final PSEUDO_CLASS_VISITED:Ljavafx/css/PseudoClass;


# instance fields
.field private visited:Ljavafx/beans/property/BooleanProperty;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 170
    const-string v0, "visited"

    .line 171
    invoke-static {v0}, Ljavafx/css/PseudoClass;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v0

    sput-object v0, Ljavafx/scene/control/Hyperlink;->PSEUDO_CLASS_VISITED:Ljavafx/css/PseudoClass;

    .line 170
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 65
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Hyperlink;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/ButtonBase;-><init>()V

    .line 66
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/control/Hyperlink;->initialize()V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 4

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Hyperlink;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/scene/control/ButtonBase;-><init>(Ljava/lang/String;)V

    .line 76
    move-object v2, v0

    invoke-direct {v2}, Ljavafx/scene/control/Hyperlink;->initialize()V

    .line 77
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljavafx/scene/Node;)V
    .locals 6

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Hyperlink;
    move-object v1, p1

    .local v1, "text":Ljava/lang/String;
    move-object v2, p2

    .local v2, "graphic":Ljavafx/scene/Node;
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-direct {v3, v4, v5}, Ljavafx/scene/control/ButtonBase;-><init>(Ljava/lang/String;Ljavafx/scene/Node;)V

    .line 87
    move-object v3, v0

    invoke-direct {v3}, Ljavafx/scene/control/Hyperlink;->initialize()V

    .line 88
    return-void
.end method

.method static synthetic access$000()Ljavafx/css/PseudoClass;
    .locals 1

    .prologue
    .line 54
    sget-object v0, Ljavafx/scene/control/Hyperlink;->PSEUDO_CLASS_VISITED:Ljavafx/css/PseudoClass;

    return-object v0
.end method

.method private initialize()V
    .locals 7

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Hyperlink;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Hyperlink;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "hyperlink"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 93
    move-object v1, v0

    sget-object v2, Ljavafx/scene/AccessibleRole;->HYPERLINK:Ljavafx/scene/AccessibleRole;

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Hyperlink;->setAccessibleRole(Ljavafx/scene/AccessibleRole;)V

    .line 98
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Hyperlink;->cursorProperty()Ljavafx/beans/property/ObjectProperty;

    move-result-object v1

    check-cast v1, Ljavafx/css/StyleableProperty;

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/Cursor;->HAND:Ljavafx/scene/Cursor;

    invoke-interface {v1, v2, v3}, Ljavafx/css/StyleableProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V

    .line 99
    return-void
.end method


# virtual methods
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
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Hyperlink;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/HyperlinkSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/HyperlinkSkin;-><init>(Ljavafx/scene/control/Hyperlink;)V

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Hyperlink;
    return-object v0
.end method

.method public fire()V
    .locals 5

    .prologue
    .line 148
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Hyperlink;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/Hyperlink;->isDisabled()Z

    move-result v1

    if-nez v1, :cond_2

    .line 150
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Hyperlink;->visited:Ljavafx/beans/property/BooleanProperty;

    if-eqz v1, :cond_0

    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Hyperlink;->visited:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->isBound()Z

    move-result v1

    if-nez v1, :cond_1

    .line 151
    :cond_0
    move-object v1, v0

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Hyperlink;->setVisited(Z)V

    .line 153
    :cond_1
    move-object v1, v0

    new-instance v2, Ljavafx/event/ActionEvent;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/event/ActionEvent;-><init>()V

    invoke-virtual {v1, v2}, Ljavafx/scene/control/Hyperlink;->fireEvent(Ljavafx/event/Event;)V

    .line 155
    :cond_2
    return-void
.end method

.method protected impl_cssGetCursorInitialValue()Ljavafx/scene/Cursor;
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Hyperlink;
    sget-object v1, Ljavafx/scene/Cursor;->HAND:Ljavafx/scene/Cursor;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Hyperlink;
    return-object v0
.end method

.method public final isVisited()Z
    .locals 2

    .prologue
    .line 134
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Hyperlink;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Hyperlink;->visited:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Hyperlink;
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/Hyperlink;
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Hyperlink;->visited:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public varargs queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;
    .locals 6

    .prologue
    .line 192
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Hyperlink;
    move-object v1, p1

    .local v1, "attribute":Ljavafx/scene/AccessibleAttribute;
    move-object v2, p2

    .local v2, "parameters":[Ljava/lang/Object;
    sget-object v3, Ljavafx/scene/control/Hyperlink$2;->$SwitchMap$javafx$scene$AccessibleAttribute:[I

    move-object v4, v1

    invoke-virtual {v4}, Ljavafx/scene/AccessibleAttribute;->ordinal()I

    move-result v4

    aget v3, v3, v4

    packed-switch v3, :pswitch_data_0

    .line 194
    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    invoke-super {v3, v4, v5}, Ljavafx/scene/control/ButtonBase;->queryAccessibleAttribute(Ljavafx/scene/AccessibleAttribute;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/control/Hyperlink;
    :goto_0
    return-object v0

    .line 193
    .restart local v0    # "this":Ljavafx/scene/control/Hyperlink;
    :pswitch_0
    move-object v3, v0

    invoke-virtual {v3}, Ljavafx/scene/control/Hyperlink;->isVisited()Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    move-object v0, v3

    goto :goto_0

    .line 192
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method public final setVisited(Z)V
    .locals 4

    .prologue
    .line 131
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Hyperlink;
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/Hyperlink;->visitedProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 132
    return-void
.end method

.method public final visitedProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 6

    .prologue
    .line 110
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/Hyperlink;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Hyperlink;->visited:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 111
    move-object v1, v0

    new-instance v2, Ljavafx/scene/control/Hyperlink$1;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    invoke-direct {v3, v4}, Ljavafx/scene/control/Hyperlink$1;-><init>(Ljavafx/scene/control/Hyperlink;)V

    iput-object v2, v1, Ljavafx/scene/control/Hyperlink;->visited:Ljavafx/beans/property/BooleanProperty;

    .line 127
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/Hyperlink;->visited:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/Hyperlink;
    return-object v0
.end method
