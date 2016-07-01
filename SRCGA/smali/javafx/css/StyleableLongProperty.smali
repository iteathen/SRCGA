.class public abstract Ljavafx/css/StyleableLongProperty;
.super Ljavafx/beans/property/LongPropertyBase;
.source "StyleableLongProperty.java"

# interfaces
.implements Ljavafx/css/StyleableProperty;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljavafx/beans/property/LongPropertyBase;",
        "Ljavafx/css/StyleableProperty",
        "<",
        "Ljava/lang/Number;",
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

    .local v0, "this":Ljavafx/css/StyleableLongProperty;
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/beans/property/LongPropertyBase;-><init>()V

    .line 90
    move-object v1, v0

    const/4 v2, 0x0

    iput-object v2, v1, Ljavafx/css/StyleableLongProperty;->origin:Ljavafx/css/StyleOrigin;

    .line 53
    return-void
.end method

.method public constructor <init>(J)V
    .locals 7

    .prologue
    .line 62
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleableLongProperty;
    move-wide v1, p1

    .local v1, "initialValue":J
    move-object v3, v0

    move-wide v4, v1

    invoke-direct {v3, v4, v5}, Ljavafx/beans/property/LongPropertyBase;-><init>(J)V

    .line 90
    move-object v3, v0

    const/4 v4, 0x0

    iput-object v4, v3, Ljavafx/css/StyleableLongProperty;->origin:Ljavafx/css/StyleOrigin;

    .line 63
    return-void
.end method


# virtual methods
.method public applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Number;)V
    .locals 5

    .prologue
    .line 68
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleableLongProperty;
    move-object v1, p1

    .local v1, "origin":Ljavafx/css/StyleOrigin;
    move-object v2, p2

    .local v2, "v":Ljava/lang/Number;
    move-object v3, v0

    move-object v4, v2

    invoke-virtual {v3, v4}, Ljavafx/css/StyleableLongProperty;->setValue(Ljava/lang/Number;)V

    .line 69
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/css/StyleableLongProperty;->origin:Ljavafx/css/StyleOrigin;

    .line 70
    return-void
.end method

.method public bridge synthetic applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Object;)V
    .locals 6

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleableLongProperty;
    move-object v1, p1

    move-object v2, p2

    move-object v3, v0

    move-object v4, v1

    move-object v5, v2

    check-cast v5, Ljava/lang/Number;

    invoke-virtual {v3, v4, v5}, Ljavafx/css/StyleableLongProperty;->applyStyle(Ljavafx/css/StyleOrigin;Ljava/lang/Number;)V

    return-void
.end method

.method public bind(Ljavafx/beans/value/ObservableValue;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljavafx/beans/value/ObservableValue",
            "<+",
            "Ljava/lang/Number;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 75
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleableLongProperty;
    move-object v1, p1

    .local v1, "observable":Ljavafx/beans/value/ObservableValue;, "Ljavafx/beans/value/ObservableValue<+Ljava/lang/Number;>;"
    move-object v2, v0

    move-object v3, v1

    invoke-super {v2, v3}, Ljavafx/beans/property/LongPropertyBase;->bind(Ljavafx/beans/value/ObservableValue;)V

    .line 76
    move-object v2, v0

    sget-object v3, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    iput-object v3, v2, Ljavafx/css/StyleableLongProperty;->origin:Ljavafx/css/StyleOrigin;

    .line 77
    return-void
.end method

.method public getStyleOrigin()Ljavafx/css/StyleOrigin;
    .locals 2

    .prologue
    .line 88
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleableLongProperty;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/css/StyleableLongProperty;->origin:Ljavafx/css/StyleOrigin;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/css/StyleableLongProperty;
    return-object v0
.end method

.method public set(J)V
    .locals 7

    .prologue
    .line 82
    move-object v0, p0

    .local v0, "this":Ljavafx/css/StyleableLongProperty;
    move-wide v1, p1

    .local v1, "v":J
    move-object v3, v0

    move-wide v4, v1

    invoke-super {v3, v4, v5}, Ljavafx/beans/property/LongPropertyBase;->set(J)V

    .line 83
    move-object v3, v0

    sget-object v4, Ljavafx/css/StyleOrigin;->USER:Ljavafx/css/StyleOrigin;

    iput-object v4, v3, Ljavafx/css/StyleableLongProperty;->origin:Ljavafx/css/StyleOrigin;

    .line 84
    return-void
.end method
