.class Lcom/sun/javafx/scene/control/skin/WebColorField;
.super Lcom/sun/javafx/scene/control/skin/InputField;
.source "WebColorField.java"


# instance fields
.field private value:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/scene/paint/Color;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/WebColorField;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/InputField;-><init>()V

    .line 42
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "value"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/WebColorField;->value:Ljavafx/beans/property/ObjectProperty;

    .line 51
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/WebColorField;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "webcolor-field"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 52
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
    .line 62
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/WebColorField;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/WebColorFieldSkin;-><init>(Lcom/sun/javafx/scene/control/skin/WebColorField;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/WebColorField;
    return-object v0
.end method

.method public final getValue()Ljavafx/scene/paint/Color;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/WebColorField;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/WebColorField;->value:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/scene/paint/Color;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/WebColorField;
    return-object v0
.end method

.method public final setValue(Ljavafx/scene/paint/Color;)V
    .locals 4

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/WebColorField;
    move-object v1, p1

    .local v1, "value":Ljavafx/scene/paint/Color;
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/WebColorField;->value:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    return-void
.end method

.method public final valueProperty()Ljavafx/beans/property/ObjectProperty;
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
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/WebColorField;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/WebColorField;->value:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/WebColorField;
    return-object v0
.end method
