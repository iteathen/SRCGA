.class public final Ljavafx/scene/text/FontBuilder;
.super Ljava/lang/Object;
.source "FontBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/text/Font;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private name:Ljava/lang/String;

.field private size:D


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/FontBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/text/FontBuilder;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/text/FontBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/text/FontBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/FontBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/text/FontBuilder;->build()Ljavafx/scene/text/Font;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/text/FontBuilder;
    return-object v0
.end method

.method public build()Ljavafx/scene/text/Font;
    .locals 9

    .prologue
    .line 68
    move-object v1, p0

    .local v1, "this":Ljavafx/scene/text/FontBuilder;
    new-instance v3, Ljavafx/scene/text/Font;

    move-object v8, v3

    move-object v3, v8

    move-object v4, v8

    move-object v5, v1

    iget-object v5, v5, Ljavafx/scene/text/FontBuilder;->name:Ljava/lang/String;

    move-object v6, v1

    iget-wide v6, v6, Ljavafx/scene/text/FontBuilder;->size:D

    invoke-direct {v4, v5, v6, v7}, Ljavafx/scene/text/Font;-><init>(Ljava/lang/String;D)V

    move-object v2, v3

    .line 69
    .local v2, "x":Ljavafx/scene/text/Font;
    move-object v3, v2

    move-object v1, v3

    .end local v1    # "this":Ljavafx/scene/text/FontBuilder;
    return-object v1
.end method

.method public name(Ljava/lang/String;)Ljavafx/scene/text/FontBuilder;
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/FontBuilder;
    move-object v1, p1

    .local v1, "x":Ljava/lang/String;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/text/FontBuilder;->name:Ljava/lang/String;

    .line 52
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/text/FontBuilder;
    return-object v0
.end method

.method public size(D)Ljavafx/scene/text/FontBuilder;
    .locals 7

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/text/FontBuilder;
    move-wide v1, p1

    .local v1, "x":D
    move-object v3, v0

    move-wide v4, v1

    iput-wide v4, v3, Ljavafx/scene/text/FontBuilder;->size:D

    .line 61
    move-object v3, v0

    move-object v0, v3

    .end local v0    # "this":Ljavafx/scene/text/FontBuilder;
    return-object v0
.end method
