.class public final Ljavafx/scene/input/KeyCombination$Modifier;
.super Ljava/lang/Object;
.source "KeyCombination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/input/KeyCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Modifier"
.end annotation


# instance fields
.field private final key:Ljavafx/scene/input/KeyCode;

.field private final value:Ljavafx/scene/input/KeyCombination$ModifierValue;


# direct methods
.method private constructor <init>(Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;)V
    .locals 5

    .prologue
    .line 462
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCombination$Modifier;
    move-object v1, p1

    .local v1, "key":Ljavafx/scene/input/KeyCode;
    move-object v2, p2

    .local v2, "value":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object v3, v0

    invoke-direct {v3}, Ljava/lang/Object;-><init>()V

    .line 463
    move-object v3, v0

    move-object v4, v1

    iput-object v4, v3, Ljavafx/scene/input/KeyCombination$Modifier;->key:Ljavafx/scene/input/KeyCode;

    .line 464
    move-object v3, v0

    move-object v4, v2

    iput-object v4, v3, Ljavafx/scene/input/KeyCombination$Modifier;->value:Ljavafx/scene/input/KeyCombination$ModifierValue;

    .line 465
    return-void
.end method

.method synthetic constructor <init>(Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;Ljavafx/scene/input/KeyCombination$1;)V
    .locals 7

    .prologue
    .line 457
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCombination$Modifier;
    move-object v1, p1

    .local v1, "x0":Ljavafx/scene/input/KeyCode;
    move-object v2, p2

    .local v2, "x1":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object v3, p3

    .local v3, "x2":Ljavafx/scene/input/KeyCombination$1;
    move-object v4, v0

    move-object v5, v1

    move-object v6, v2

    invoke-direct {v4, v5, v6}, Ljavafx/scene/input/KeyCombination$Modifier;-><init>(Ljavafx/scene/input/KeyCode;Ljavafx/scene/input/KeyCombination$ModifierValue;)V

    return-void
.end method


# virtual methods
.method public getKey()Ljavafx/scene/input/KeyCode;
    .locals 2

    .prologue
    .line 473
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCombination$Modifier;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/KeyCombination$Modifier;->key:Ljavafx/scene/input/KeyCode;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/KeyCombination$Modifier;
    return-object v0
.end method

.method public getValue()Ljavafx/scene/input/KeyCombination$ModifierValue;
    .locals 2

    .prologue
    .line 482
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCombination$Modifier;
    move-object v1, v0

    iget-object v1, v1, Ljavafx/scene/input/KeyCombination$Modifier;->value:Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/KeyCombination$Modifier;
    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 5

    .prologue
    .line 491
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCombination$Modifier;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v4, v1

    move-object v1, v4

    move-object v2, v4

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/input/KeyCombination$Modifier;->value:Ljavafx/scene/input/KeyCombination$ModifierValue;

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->ANY:Ljavafx/scene/input/KeyCombination$ModifierValue;

    if-ne v2, v3, :cond_0

    const-string v2, "Ignore "

    :goto_0
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Ljavafx/scene/input/KeyCombination$Modifier;->key:Ljavafx/scene/input/KeyCode;

    .line 492
    invoke-virtual {v2}, Ljavafx/scene/input/KeyCode;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Ljavafx/scene/input/KeyCombination$Modifier;
    return-object v0

    .line 491
    .restart local v0    # "this":Ljavafx/scene/input/KeyCombination$Modifier;
    :cond_0
    const-string v2, ""

    goto :goto_0
.end method
