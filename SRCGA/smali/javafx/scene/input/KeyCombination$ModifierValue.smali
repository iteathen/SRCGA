.class public final enum Ljavafx/scene/input/KeyCombination$ModifierValue;
.super Ljava/lang/Enum;
.source "KeyCombination.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Ljavafx/scene/input/KeyCombination;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "ModifierValue"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Ljavafx/scene/input/KeyCombination$ModifierValue;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Ljavafx/scene/input/KeyCombination$ModifierValue;

.field public static final enum ANY:Ljavafx/scene/input/KeyCombination$ModifierValue;

.field public static final enum DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

.field public static final enum UP:Ljavafx/scene/input/KeyCombination$ModifierValue;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 503
    new-instance v0, Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DOWN"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Ljavafx/scene/input/KeyCombination$ModifierValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    .line 505
    new-instance v0, Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "UP"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Ljavafx/scene/input/KeyCombination$ModifierValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/input/KeyCombination$ModifierValue;->UP:Ljavafx/scene/input/KeyCombination$ModifierValue;

    .line 510
    new-instance v0, Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "ANY"

    const/4 v3, 0x2

    invoke-direct {v1, v2, v3}, Ljavafx/scene/input/KeyCombination$ModifierValue;-><init>(Ljava/lang/String;I)V

    sput-object v0, Ljavafx/scene/input/KeyCombination$ModifierValue;->ANY:Ljavafx/scene/input/KeyCombination$ModifierValue;

    .line 501
    const/4 v0, 0x3

    new-array v0, v0, [Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->DOWN:Ljavafx/scene/input/KeyCombination$ModifierValue;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->UP:Ljavafx/scene/input/KeyCombination$ModifierValue;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x2

    sget-object v3, Ljavafx/scene/input/KeyCombination$ModifierValue;->ANY:Ljavafx/scene/input/KeyCombination$ModifierValue;

    aput-object v3, v1, v2

    sput-object v0, Ljavafx/scene/input/KeyCombination$ModifierValue;->$VALUES:[Ljavafx/scene/input/KeyCombination$ModifierValue;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 501
    move-object v0, p0

    .local v0, "this":Ljavafx/scene/input/KeyCombination$ModifierValue;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Ljavafx/scene/input/KeyCombination$ModifierValue;
    .locals 3

    .prologue
    .line 501
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Ljavafx/scene/input/KeyCombination$ModifierValue;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Ljavafx/scene/input/KeyCombination$ModifierValue;
    .locals 1

    .prologue
    .line 501
    sget-object v0, Ljavafx/scene/input/KeyCombination$ModifierValue;->$VALUES:[Ljavafx/scene/input/KeyCombination$ModifierValue;

    invoke-virtual {v0}, [Ljavafx/scene/input/KeyCombination$ModifierValue;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljavafx/scene/input/KeyCombination$ModifierValue;

    return-object v0
.end method
