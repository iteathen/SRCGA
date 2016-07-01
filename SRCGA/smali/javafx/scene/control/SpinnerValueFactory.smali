.class public abstract Ljavafx/scene/control/SpinnerValueFactory;
.super Ljava/lang/Object;
.source "SpinnerValueFactory.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Ljavafx/scene/control/SpinnerValueFactory$LocalTimeSpinnerValueFactory;,
        Ljavafx/scene/control/SpinnerValueFactory$LocalDateSpinnerValueFactory;,
        Ljavafx/scene/control/SpinnerValueFactory$DoubleSpinnerValueFactory;,
        Ljavafx/scene/control/SpinnerValueFactory$IntegerSpinnerValueFactory;,
        Ljavafx/scene/control/SpinnerValueFactory$ListSpinnerValueFactory;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;"
    }
.end annotation


# instance fields
.field private converter:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/StringConverter",
            "<TT;>;>;"
        }
    .end annotation
.end field

.field private value:Ljavafx/beans/property/ObjectProperty;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljavafx/beans/property/ObjectProperty",
            "<TT;>;"
        }
    .end annotation
.end field

.field private wrapAround:Ljavafx/beans/property/BooleanProperty;


# direct methods
.method public constructor <init>()V
    .locals 7

    .prologue
    .line 92
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 138
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "value"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/SpinnerValueFactory;->value:Ljavafx/beans/property/ObjectProperty;

    .line 157
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleObjectProperty;

    move-object v6, v2

    move-object v2, v6

    move-object v3, v6

    move-object v4, v0

    const-string v5, "converter"

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/SimpleObjectProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object v2, v1, Ljavafx/scene/control/SpinnerValueFactory;->converter:Ljavafx/beans/property/ObjectProperty;

    return-void
.end method


# virtual methods
.method public final converterProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<",
            "Ljavafx/util/StringConverter",
            "<TT;>;>;"
        }
    .end annotation

    .prologue
    .line 165
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory;->converter:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    return-object v0
.end method

.method public abstract decrement(I)V
.end method

.method public final getConverter()Ljavafx/util/StringConverter;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/util/StringConverter",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 159
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory;->converter:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljavafx/util/StringConverter;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    return-object v0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()TT;"
        }
    .end annotation

    .prologue
    .line 140
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory;->value:Ljavafx/beans/property/ObjectProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/ObjectProperty;->get()Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    return-object v0
.end method

.method public abstract increment(I)V
.end method

.method public final isWrapAround()Z
    .locals 2

    .prologue
    .line 180
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory;->wrapAround:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    :goto_0
    move v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    return v0

    .restart local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory;->wrapAround:Ljavafx/beans/property/BooleanProperty;

    invoke-virtual {v1}, Ljavafx/beans/property/BooleanProperty;->get()Z

    move-result v1

    goto :goto_0
.end method

.method public final setConverter(Ljavafx/util/StringConverter;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/util/StringConverter",
            "<TT;>;)V"
        }
    .end annotation

    .prologue
    .line 162
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    move-object v1, p1

    .local v1, "newValue":Ljavafx/util/StringConverter;, "Ljavafx/util/StringConverter<TT;>;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/SpinnerValueFactory;->converter:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 163
    return-void
.end method

.method public final setValue(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 143
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    move-object v1, p1

    .local v1, "newValue":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/control/SpinnerValueFactory;->value:Ljavafx/beans/property/ObjectProperty;

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/ObjectProperty;->set(Ljava/lang/Object;)V

    .line 144
    return-void
.end method

.method public final setWrapAround(Z)V
    .locals 4

    .prologue
    .line 177
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    move v1, p1

    .local v1, "value":Z
    move-object v2, v0

    invoke-virtual {v2}, Ljavafx/scene/control/SpinnerValueFactory;->wrapAroundProperty()Ljavafx/beans/property/BooleanProperty;

    move-result-object v2

    move v3, v1

    invoke-virtual {v2, v3}, Ljavafx/beans/property/BooleanProperty;->set(Z)V

    .line 178
    return-void
.end method

.method public final valueProperty()Ljavafx/beans/property/ObjectProperty;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/beans/property/ObjectProperty",
            "<TT;>;"
        }
    .end annotation

    .prologue
    .line 146
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory;->value:Ljavafx/beans/property/ObjectProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    return-object v0
.end method

.method public final wrapAroundProperty()Ljavafx/beans/property/BooleanProperty;
    .locals 8

    .prologue
    .line 183
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory;->wrapAround:Ljavafx/beans/property/BooleanProperty;

    if-nez v1, :cond_0

    .line 184
    move-object v1, v0

    new-instance v2, Ljavafx/beans/property/SimpleBooleanProperty;

    move-object v7, v2

    move-object v2, v7

    move-object v3, v7

    move-object v4, v0

    const-string v5, "wrapAround"

    const/4 v6, 0x0

    invoke-direct {v3, v4, v5, v6}, Ljavafx/beans/property/SimpleBooleanProperty;-><init>(Ljava/lang/Object;Ljava/lang/String;Z)V

    iput-object v2, v1, Ljavafx/scene/control/SpinnerValueFactory;->wrapAround:Ljavafx/beans/property/BooleanProperty;

    .line 186
    :cond_0
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/control/SpinnerValueFactory;->wrapAround:Ljavafx/beans/property/BooleanProperty;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/SpinnerValueFactory;, "Ljavafx/scene/control/SpinnerValueFactory<TT;>;"
    return-object v0
.end method
