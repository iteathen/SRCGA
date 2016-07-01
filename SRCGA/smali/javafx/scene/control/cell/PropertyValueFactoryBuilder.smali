.class public Ljavafx/scene/control/cell/PropertyValueFactoryBuilder;
.super Ljava/lang/Object;
.source "PropertyValueFactoryBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<S:",
        "Ljava/lang/Object;",
        "T:",
        "Ljava/lang/Object;",
        "B:",
        "Ljavafx/scene/control/cell/PropertyValueFactoryBuilder",
        "<TS;TT;TB;>;>",
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/control/cell/PropertyValueFactory",
        "<TS;TT;>;>;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private property:Ljava/lang/String;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/PropertyValueFactoryBuilder;, "Ljavafx/scene/control/cell/PropertyValueFactoryBuilder<TS;TT;TB;>;"
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/control/cell/PropertyValueFactoryBuilder;
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<S:",
            "Ljava/lang/Object;",
            "T:",
            "Ljava/lang/Object;",
            ">()",
            "Ljavafx/scene/control/cell/PropertyValueFactoryBuilder",
            "<TS;TT;*>;"
        }
    .end annotation

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/control/cell/PropertyValueFactoryBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/control/cell/PropertyValueFactoryBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/PropertyValueFactoryBuilder;, "Ljavafx/scene/control/cell/PropertyValueFactoryBuilder<TS;TT;TB;>;"
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/control/cell/PropertyValueFactoryBuilder;->build()Ljavafx/scene/control/cell/PropertyValueFactory;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/control/cell/PropertyValueFactoryBuilder;, "Ljavafx/scene/control/cell/PropertyValueFactoryBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public build()Ljavafx/scene/control/cell/PropertyValueFactory;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljavafx/scene/control/cell/PropertyValueFactory",
            "<TS;TT;>;"
        }
    .end annotation

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/PropertyValueFactoryBuilder;, "Ljavafx/scene/control/cell/PropertyValueFactoryBuilder<TS;TT;TB;>;"
    new-instance v2, Ljavafx/scene/control/cell/PropertyValueFactory;

    move-object v5, v2

    move-object v2, v5

    move-object v3, v5

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/control/cell/PropertyValueFactoryBuilder;->property:Ljava/lang/String;

    invoke-direct {v3, v4}, Ljavafx/scene/control/cell/PropertyValueFactory;-><init>(Ljava/lang/String;)V

    move-object v1, v2

    .line 61
    .local v1, "x":Ljavafx/scene/control/cell/PropertyValueFactory;, "Ljavafx/scene/control/cell/PropertyValueFactory<TS;TT;>;"
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/cell/PropertyValueFactoryBuilder;, "Ljavafx/scene/control/cell/PropertyValueFactoryBuilder<TS;TT;TB;>;"
    return-object v0
.end method

.method public property(Ljava/lang/String;)Ljavafx/scene/control/cell/PropertyValueFactoryBuilder;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")TB;"
        }
    .end annotation

    .prologue
    .line 52
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/control/cell/PropertyValueFactoryBuilder;, "Ljavafx/scene/control/cell/PropertyValueFactoryBuilder<TS;TT;TB;>;"
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/control/cell/PropertyValueFactoryBuilder;->property:Ljava/lang/String;

    .line 53
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/control/cell/PropertyValueFactoryBuilder;, "Ljavafx/scene/control/cell/PropertyValueFactoryBuilder<TS;TT;TB;>;"
    return-object v0
.end method
