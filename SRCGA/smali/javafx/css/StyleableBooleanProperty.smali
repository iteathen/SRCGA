.class public abstract Ljavafx/css/StyleableBooleanProperty;
.super Ljavafx/beans/property/BooleanPropertyBase;
.source "StyleableBooleanProperty.java"

# interfaces
.implements Ljavafx/css/StyleableProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/BooleanPropertyBase;",
        "Ljavafx/css/StyleableProperty",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
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

    .local v0, "this":Ljavafx/css/StyleableBooleanProperty;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/BooleanPropertyBase;-><init>()V

    .line 91
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/css/StyleableBooleanProperty;->origin:Ljavafx/css/StyleOrigin;

    .line 53
    return-void
.end method

.method public constructor <init>(Z)V
    .locals 4

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleableBooleanProperty;
    move v1, p1

    .local v1, "initialValue":Z
    move-object v2, v0

    move v3, v1

    invoke-direct {v2, v3}, Ljavafx/beans/property/BooleanPropertyBase;-><init>(Z)V

    .line 91
    move-object v2, v0

    const/4 v3, 0x0

    iput-object v3, v2, Ljavafx/css/StyleableBooleanProperty;->origin:Ljavafx/css/StyleOrigin;

    .line 63
    return-void
.end method


# virtual methods
.method public applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Boolean;)V
    .locals 5

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleableBooleanProperty;
    move-object v1, p1

    .local v1, "origin":Ljavafx/css/StyleOrigin;
    move-object v2, p2

    .local v2, "v":Ljava/lang/Boolean;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    invoke-virtual {v3, v4}, Ljavafx/css/StyleableBooleanProperty;->set(Z)V

    .line 70
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/css/StyleableBooleanProperty;->origin:Ljavafx/css/StyleOrigin;

    .line 71
    return-void
.end method

.method public bridge synthetic applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleableBooleanProperty;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Boolean;

    invoke-virtual {v3, v4, v5}, Ljavafx/css/StyleableBooleanProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Boolean;)V

    return-void
.end method

.method public bind(Ljavafx/beans/value/ObservableValue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/Boolean;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 76
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleableBooleanProperty;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljava/lang/Boolean;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/property/BooleanPropertyBase;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 77
    move-object v2, v0

    sget-object v3, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    iput-object v3, v2, Ljavafx/css/StyleableBooleanProperty;->origin:Ljavafx/css/StyleOrigin;

    .line 78
    return-void
.end method

.method public getStyleOrigin()Ljavafx/css/StyleOrigin;
    .locals 2

    .prologue
    .line 89
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleableBooleanProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/css/StyleableBooleanProperty;->origin:Ljavafx/css/StyleOrigin;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/css/StyleableBooleanProperty;
    return-object v0
.end method

.method public set(Z)V
    .locals 4

    .prologue
    .line 83
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleableBooleanProperty;
    move v1, p1

    .local v1, "v":Z
    move-object v2, v0

    move v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/property/BooleanPropertyBase;->set(Z)V

    .line 84
    move-object v2, v0

    sget-object v3, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    iput-object v3, v2, Ljavafx/css/StyleableBooleanProperty;->origin:Ljavafx/css/StyleOrigin;

    .line 85
    return-void
.end method
