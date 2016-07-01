.class public Ljavafx/scene/shape/ClosePathBuilder;
.super Ljavafx/scene/shape/PathElementBuilder;
.source "ClosePathBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<B:",
        "Ljavafx/scene/shape/ClosePathBuilder",
        "<TB;>;>",
        "Ljavafx/scene/shape/PathElementBuilder",
        "<TB;>;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/shape/ClosePath;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ClosePathBuilder;, "Ljavafx/scene/shape/ClosePathBuilder<TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljavafx/scene/shape/PathElementBuilder;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/shape/ClosePathBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/shape/ClosePathBuilder",
            "<*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/shape/ClosePathBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/shape/ClosePathBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ClosePathBuilder;, "Ljavafx/scene/shape/ClosePathBuilder<TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/shape/ClosePathBuilder;->build()Ljavafx/scene/shape/ClosePath;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/shape/ClosePathBuilder;, "Ljavafx/scene/shape/ClosePathBuilder<TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/shape/ClosePath;
    .locals 5

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/shape/ClosePathBuilder;, "Ljavafx/scene/shape/ClosePathBuilder<TB;>;"
    new-instance v2, Ljavafx/scene/shape/ClosePath;

    move-object v4, v2

    move-object v2, v4

    move-object v3, v4

    invoke-direct {v3}, Ljavafx/scene/shape/ClosePath;-><init>()V

    move-object v1, v2

    .line 51
    .local v1, "x":Ljavafx/scene/shape/ClosePath;
    move-object v2, v0

    move-object v3, v1

    invoke-virtual {v2, v3}, Ljavafx/scene/shape/ClosePathBuilder;->applyTo(Ljavafx/scene/shape/PathElement;)V

    .line 52
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/shape/ClosePathBuilder;, "Ljavafx/scene/shape/ClosePathBuilder<TB;>;"
    return-object v0
.end method
