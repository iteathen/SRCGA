.class Lcom/sun/javafx/scene/control/skin/IntegerField;
.super Lcom/sun/javafx/scene/control/skin/InputField;
.source "IntegerField.java"


# instance fields
.field private maxValue:Ljavafx/beans/property/IntegerProperty;

.field private value:Ljavafx/beans/property/IntegerProperty;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 53
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/IntegerField;
    move-object v1, v0

    const/4 v2, -0x1

    invoke-direct {v1, v2}, Lcom/sun/javafx/scene/control/skin/IntegerField;-><init>(I)V

    .line 54
    return-void
.end method

.method public constructor <init>(I)V
    .locals 9

    .prologue
    .line 55
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/IntegerField;
    move v1, p1

    .local v1, "maxVal":I
    move-object v2, v0

    invoke-direct {v2}, Lcom/sun/javafx/scene/control/skin/InputField;-><init>()V

    .line 40
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/SimpleIntegerProperty;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    const-string v6, "value"

    invoke-direct {v4, v5, v6}, Ljavafx/beans/property/SimpleIntegerProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/IntegerField;->value:Ljavafx/beans/property/IntegerProperty;

    .line 45
    move-object v2, v0

    new-instance v3, Ljavafx/beans/property/SimpleIntegerProperty;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v0

    const-string v6, "maxValue"

    const/4 v7, -0x1

    invoke-direct {v4, v5, v6, v7}, Ljavafx/beans/property/SimpleIntegerProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;I)V

    iput-object v3, v2, Lcom/sun/javafx/scene/control/skin/IntegerField;->maxValue:Ljavafx/beans/property/IntegerProperty;

    .line 56
    move-object v2, v0

    invoke-virtual {v2}, Lcom/sun/javafx/scene/control/skin/IntegerField;->getStyleClass()Ljavafx/collections/ObservableList;

    move-result-object v2

    const/4 v3, 0x1

    new-array v3, v3, [Ljava/lang/String;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    const/4 v5, 0x0

    const-string v6, "integer-field"

    aput-object v6, v4, v5

    invoke-interface {v2, v3}, Ljavafx/collections/ObservableList;->setAll([Ljava/lang/Object;)Z

    move-result v2

    .line 57
    move-object v2, v0

    move v3, v1

    invoke-virtual {v2, v3}, Lcom/sun/javafx/scene/control/skin/IntegerField;->setMaxValue(I)V

    .line 58
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
    .line 68
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/IntegerField;
    new-instance v1, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    move-object v3, v0

    invoke-direct {v2, v3}, Lcom/sun/javafx/scene/control/skin/IntegerFieldSkin;-><init>(Lcom/sun/javafx/scene/control/skin/IntegerField;)V

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/IntegerField;
    return-object v0
.end method

.method public final getMaxValue()I
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/IntegerField;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/IntegerField;->maxValue:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/IntegerField;
    return v0
.end method

.method public final getValue()I
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/IntegerField;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/IntegerField;->value:Ljavafx/beans/property/IntegerProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/IntegerProperty;->get()I

    move-result v1

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/IntegerField;
    return v0
.end method

.method public final maxValueProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 48
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/IntegerField;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/IntegerField;->maxValue:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/IntegerField;
    return-object v0
.end method

.method public final setMaxValue(I)V
    .locals 4

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/IntegerField;
    move v1, p1

    .local v1, "maxVal":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/IntegerField;->maxValue:Ljavafx/beans/property/IntegerProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    return-void
.end method

.method public final setValue(I)V
    .locals 4

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/IntegerField;
    move v1, p1

    .local v1, "value":I
    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/scene/control/skin/IntegerField;->value:Ljavafx/beans/property/IntegerProperty;

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/IntegerProperty;->set(I)V

    return-void
.end method

.method public final valueProperty()Ljavafx/beans/property/IntegerProperty;
    .locals 2

    .prologue
    .line 43
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/control/skin/IntegerField;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/scene/control/skin/IntegerField;->value:Ljavafx/beans/property/IntegerProperty;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/scene/control/skin/IntegerField;
    return-object v0
.end method
