.class synthetic Lcom/sun/javafx/scene/traversal/Direction$1;
.super Ljava/lang/Object;
.source "Direction.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/traversal/Direction;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$javafx$scene$traversal$Direction:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 60
    invoke-static {}, Lcom/sun/javafx/scene/traversal/Direction;->values()[Lcom/sun/javafx/scene/traversal/Direction;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/scene/traversal/Direction$1;->$SwitchMap$com$sun$javafx$scene$traversal$Direction:[I

    :try_start_0
    sget-object v1, Lcom/sun/javafx/scene/traversal/Direction$1;->$SwitchMap$com$sun$javafx$scene$traversal$Direction:[I

    sget-object v2, Lcom/sun/javafx/scene/traversal/Direction;->LEFT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/traversal/Direction;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sun/javafx/scene/traversal/Direction$1;->$SwitchMap$com$sun$javafx$scene$traversal$Direction:[I

    sget-object v2, Lcom/sun/javafx/scene/traversal/Direction;->RIGHT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/traversal/Direction;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_1
.end method
