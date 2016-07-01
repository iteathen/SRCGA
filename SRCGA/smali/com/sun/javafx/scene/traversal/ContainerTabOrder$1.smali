.class synthetic Lcom/sun/javafx/scene/traversal/ContainerTabOrder$1;
.super Ljava/lang/Object;
.source "ContainerTabOrder.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/traversal/ContainerTabOrder;
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
    .line 40
    invoke-static {}, Lcom/sun/javafx/scene/traversal/Direction;->values()[Lcom/sun/javafx/scene/traversal/Direction;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/scene/traversal/ContainerTabOrder$1;->$SwitchMap$com$sun$javafx$scene$traversal$Direction:[I

    :try_start_0
    sget-object v1, Lcom/sun/javafx/scene/traversal/ContainerTabOrder$1;->$SwitchMap$com$sun$javafx$scene$traversal$Direction:[I

    sget-object v2, Lcom/sun/javafx/scene/traversal/Direction;->NEXT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/traversal/Direction;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sun/javafx/scene/traversal/ContainerTabOrder$1;->$SwitchMap$com$sun$javafx$scene$traversal$Direction:[I

    sget-object v2, Lcom/sun/javafx/scene/traversal/Direction;->NEXT_IN_LINE:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/traversal/Direction;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sun/javafx/scene/traversal/ContainerTabOrder$1;->$SwitchMap$com$sun$javafx$scene$traversal$Direction:[I

    sget-object v2, Lcom/sun/javafx/scene/traversal/Direction;->PREVIOUS:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/traversal/Direction;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sun/javafx/scene/traversal/ContainerTabOrder$1;->$SwitchMap$com$sun$javafx$scene$traversal$Direction:[I

    sget-object v2, Lcom/sun/javafx/scene/traversal/Direction;->UP:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/traversal/Direction;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sun/javafx/scene/traversal/ContainerTabOrder$1;->$SwitchMap$com$sun$javafx$scene$traversal$Direction:[I

    sget-object v2, Lcom/sun/javafx/scene/traversal/Direction;->DOWN:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/traversal/Direction;->ordinal()I

    move-result v2

    const/4 v3, 0x5

    aput v3, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sun/javafx/scene/traversal/ContainerTabOrder$1;->$SwitchMap$com$sun$javafx$scene$traversal$Direction:[I

    sget-object v2, Lcom/sun/javafx/scene/traversal/Direction;->LEFT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/traversal/Direction;->ordinal()I

    move-result v2

    const/4 v3, 0x6

    aput v3, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sun/javafx/scene/traversal/ContainerTabOrder$1;->$SwitchMap$com$sun$javafx$scene$traversal$Direction:[I

    sget-object v2, Lcom/sun/javafx/scene/traversal/Direction;->RIGHT:Lcom/sun/javafx/scene/traversal/Direction;

    invoke-virtual {v2}, Lcom/sun/javafx/scene/traversal/Direction;->ordinal()I

    move-result v2

    const/4 v3, 0x7

    aput v3, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    goto :goto_0

    :catch_1
    move-exception v1

    move-object v0, v1

    goto :goto_1

    :catch_2
    move-exception v1

    move-object v0, v1

    goto :goto_2

    :catch_3
    move-exception v1

    move-object v0, v1

    goto :goto_3

    :catch_4
    move-exception v1

    move-object v0, v1

    goto :goto_4

    :catch_5
    move-exception v1

    move-object v0, v1

    goto :goto_5

    :catch_6
    move-exception v1

    move-object v0, v1

    goto :goto_6
.end method
