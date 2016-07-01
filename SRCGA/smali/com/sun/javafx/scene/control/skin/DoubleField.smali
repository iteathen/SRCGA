.class Lcom/sun/javafx/scene/control/skin/DoubleField;
.super Lcom/sun/javafx/scene/control/skin/InputField;
.source "DoubleField.java"


# instance fields
.field private value:Ljavafx/beans/property/DoubleProperty;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 49
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DoubleField;
    move-object v1, v0

    invoke-direct {v1}, Lcom/sun/javafx/scene/control/skin/InputField;-><init>()V

    .line 41
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleDoubleProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "value"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleDoubleProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Lcom/sun/javafx/scene/control/skin/DoubleField;->value:Ljavafx/beans/property/DoubleProperty;

    .line 50
    move-object v1, v0

    invoke-virtual {v1}, Lcom/sun/javafx/scene/control/skin/DoubleField;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v1

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/String;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    const/4 v4, 0x0

    const-string v5, "double-field"

    aput-object v5, v3, v4

    invoke-interface {v1, v2}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v1

    .line 51
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
    .line 61
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DoubleField;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/DoubleFieldSkin;-><init>(Lcom/sun/javafx/scene/control/skin/DoubleField;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/DoubleField;
    return-object v0
.end method

.method public final getValue()D
    .locals 3

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DoubleField;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/DoubleField;->value:Ljavafx/beans/property/DoubleProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/DoubleProperty;->get()D

    move-result-wide v1

    move-wide v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/DoubleField;
    return-wide v0
.end method

.method public final setValue(D)V
    .locals 7

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DoubleField;
    move-wide v1, p1

    .local v1, "value":D
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/scene/control/skin/DoubleField;->value:Ljavafx/beans/property/DoubleProperty;

    move-wide v4, v1

    invoke-virtual {v3, v4, v5}, Ljavafx/beans/property/DoubleProperty;->set(D)V

    return-void
.end method

.method public final valueProperty()Ljavafx/beans/property/DoubleProperty;
    .locals 2

    .prologue
    .line 44
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/DoubleField;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/DoubleField;->value:Ljavafx/beans/property/DoubleProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/DoubleField;
    return-object v0
.end method
