.class public abstract Ljavafx/css/StyleableObjectProperty;
.super Ljavafx/beans/property/ObjectPropertyBase;
.source "StyleableObjectProperty.java"

# interfaces
.implements Ljavafx/css/StyleableProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<T:",
        "Ljava/lang/Object;",
        ">",
        "Ljavafx/beans/property/ObjectPropertyBase",
        "<TT;>;",
        "Ljavafx/css/StyleableProperty",
        "<TT;>;"
    }
.end annotation


# instance fields
.field private origin:Ljavafx/css/StyleOrigin;


# direct methods
.method public constructor <init>()V
    .locals 3

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleableObjectProperty;, "Ljavafx/css/StyleableObjectProperty<TT;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/ObjectPropertyBase;-><init>()V

    .line 90
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/css/StyleableObjectProperty;->origin:Ljavafx/css/StyleOrigin;

    .line 53
    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleableObjectProperty;, "Ljavafx/css/StyleableObjectProperty<TT;>;"
    move-object v1, p1

    .local v1, "initialValue":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    move-object v3, v1

    invoke-direct {v2, v3}, Ljavafx/beans/property/ObjectPropertyBase;-><init>(Ljava/lang/Object;)V

    .line 90
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/css/StyleableObjectProperty;->origin:Ljavafx/css/StyleOrigin;

    .line 63
    return-void
.end method


# virtual methods
.method public applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/css/StyleOrigin;",
            "TT;)V"
        }
    .end annotation

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleableObjectProperty;, "Ljavafx/css/StyleableObjectProperty<TT;>;"
    move-object v1, p1

    .local v1, "origin":Ljavafx/css/StyleOrigin;
    move-object v2, p2

    .local v2, "v":Ljava/lang/Object;, "TT;"
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/css/StyleableObjectProperty;->set(Ljava/lang/Object;)V

    .line 69
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/css/StyleableObjectProperty;->origin:Ljavafx/css/StyleOrigin;

    .line 70
    return-void
.end method

.method public bind(Ljavafx/beans/value/ObservableValue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+TT;>;)V"
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleableObjectProperty;, "Ljavafx/css/StyleableObjectProperty<TT;>;"
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+TT;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/property/ObjectPropertyBase;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 76
    move-object v2, v0

    sget-object v3, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    iput-object v3, v2, Ljavafx/css/StyleableObjectProperty;->origin:Ljavafx/css/StyleOrigin;

    .line 77
    return-void
.end method

.method public getStyleOrigin()Ljavafx/css/StyleOrigin;
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleableObjectProperty;, "Ljavafx/css/StyleableObjectProperty<TT;>;"
    move-object v1, v0

    iget-object v1, v1, Ljavafx/css/StyleableObjectProperty;->origin:Ljavafx/css/StyleOrigin;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/css/StyleableObjectProperty;, "Ljavafx/css/StyleableObjectProperty<TT;>;"
    return-object v0
.end method

.method public set(Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(TT;)V"
        }
    .end annotation

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleableObjectProperty;, "Ljavafx/css/StyleableObjectProperty<TT;>;"
    move-object v1, p1

    .local v1, "v":Ljava/lang/Object;, "TT;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/property/ObjectPropertyBase;->set(Ljava/lang/Object;)V

    .line 83
    move-object v2, v0

    sget-object v3, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    iput-object v3, v2, Ljavafx/css/StyleableObjectProperty;->origin:Ljavafx/css/StyleOrigin;

    .line 84
    return-void
.end method
