.class public final Ljavafx/scene/input/KeyCodeCombinationBuilder;
.super Ljava/lang/Object;
.source "KeyCodeCombinationBuilder.java"

# interfaces
.implements Ljavafx/util/Builder;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljavafx/util/Builder",
        "<",
        "Ljavafx/scene/input/KeyCodeCombination;",
        ">;"
    }
.end annotation

.annotation runtime Ljava/lang/Deprecated;
.end annotation


# instance fields
.field private alt:Ljavafx/scene/input/KeyCombination$ModifierValue;

.field private code:Ljavafx/scene/input/KeyCode;

.field private control:Ljavafx/scene/input/KeyCombination$ModifierValue;

.field private meta:Ljavafx/scene/input/KeyCombination$ModifierValue;

.field private shift:Ljavafx/scene/input/KeyCombination$ModifierValue;

.field private shortcut:Ljavafx/scene/input/KeyCombination$ModifierValue;


# direct methods
.method protected constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCodeCombinationBuilder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 38
    return-void
.end method

.method public static create()Ljavafx/scene/input/KeyCodeCombinationBuilder;
    .locals 3

    .prologue
    .line 43
    new-instance v0, Ljavafx/scene/input/KeyCodeCombinationBuilder;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Ljavafx/scene/input/KeyCodeCombinationBuilder;-><init>()V

    return-object v0
.end method


# virtual methods
.method public alt(Ljavafx/scene/input/KeyCombination$ModifierValue;)Ljavafx/scene/input/KeyCodeCombinationBuilder;
    .locals 4

    .prologue
    .line 51
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCodeCombinationBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/input/KeyCodeCombinationBuilder;->alt:Ljavafx/scene/input/KeyCombination$ModifierValue;

    .line 52
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/KeyCodeCombinationBuilder;
    return-object v0
.end method

.method public bridge synthetic build()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCodeCombinationBuilder;
    move-object v1, v0

    invoke-virtual {v1}, Ljavafx/scene/input/KeyCodeCombinationBuilder;->build()Ljavafx/scene/input/KeyCodeCombination;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/KeyCodeCombinationBuilder;
    return-object v0
.end method

.method public build()Ljavafx/scene/input/KeyCodeCombination;
    .locals 11

    .prologue
    .line 104
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCodeCombinationBuilder;
    new-instance v2, Ljavafx/scene/input/KeyCodeCombination;

    move-object v10, v2

    move-object v2, v10

    move-object v3, v10

    move-object v4, v0

    iget-object v4, v4, Ljavafx/scene/input/KeyCodeCombinationBuilder;->code:Ljavafx/scene/input/KeyCode;

    move-object v5, v0

    iget-object v5, v5, Ljavafx/scene/input/KeyCodeCombinationBuilder;->shift:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v6, v0

    iget-object v6, v6, Ljavafx/scene/input/KeyCodeCombinationBuilder;->control:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v7, v0

    iget-object v7, v7, Ljavafx/scene/input/KeyCodeCombinationBuilder;->alt:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v8, v0

    iget-object v8, v8, Ljavafx/scene/input/KeyCodeCombinationBuilder;->meta:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v9, v0

    iget-object v9, v9, Ljavafx/scene/input/KeyCodeCombinationBuilder;->shortcut:Ljavafx/scene/input/KeyCombination$ModifierValue;

    invoke-direct/range {v3 .. v9}, Ljavafx/scene/input/KeyCodeCombination;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$ModifierValue;)V

    move-object v1, v2

    .line 105
    .local v1, "x":Ljavafx/scene/input/KeyCodeCombination;
    move-object v2, v1

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/KeyCodeCombinationBuilder;
    return-object v0
.end method

.method public code(Ljavafx/scene/input/KeyCode;)Ljavafx/scene/input/KeyCodeCombinationBuilder;
    .locals 4

    .prologue
    .line 60
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCodeCombinationBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/input/KeyCode;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/input/KeyCodeCombinationBuilder;->code:Ljavafx/scene/input/KeyCode;

    .line 61
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/KeyCodeCombinationBuilder;
    return-object v0
.end method

.method public control(Ljavafx/scene/input/KeyCombination$ModifierValue;)Ljavafx/scene/input/KeyCodeCombinationBuilder;
    .locals 4

    .prologue
    .line 69
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCodeCombinationBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/input/KeyCodeCombinationBuilder;->control:Ljavafx/scene/input/KeyCombination$ModifierValue;

    .line 70
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/KeyCodeCombinationBuilder;
    return-object v0
.end method

.method public meta(Ljavafx/scene/input/KeyCombination$ModifierValue;)Ljavafx/scene/input/KeyCodeCombinationBuilder;
    .locals 4

    .prologue
    .line 78
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCodeCombinationBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/input/KeyCodeCombinationBuilder;->meta:Ljavafx/scene/input/KeyCombination$ModifierValue;

    .line 79
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/KeyCodeCombinationBuilder;
    return-object v0
.end method

.method public shift(Ljavafx/scene/input/KeyCombination$ModifierValue;)Ljavafx/scene/input/KeyCodeCombinationBuilder;
    .locals 4

    .prologue
    .line 87
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCodeCombinationBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/input/KeyCodeCombinationBuilder;->shift:Ljavafx/scene/input/KeyCombination$ModifierValue;

    .line 88
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/KeyCodeCombinationBuilder;
    return-object v0
.end method

.method public shortcut(Ljavafx/scene/input/KeyCombination$ModifierValue;)Ljavafx/scene/input/KeyCodeCombinationBuilder;
    .locals 4

    .prologue
    .line 96
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCodeCombinationBuilder;
    move-object v1, p1

    .local v1, "x":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object v2, v0

    move-object v3, v1

    iput-object v3, v2, Ljavafx/scene/input/KeyCodeCombinationBuilder;->shortcut:Ljavafx/scene/input/KeyCombination$ModifierValue;

    .line 97
    move-object v2, v0

    move-object v0, v2

    .end local v0    # "this":Ljavafx/scene/input/KeyCodeCombinationBuilder;
    return-object v0
.end method
