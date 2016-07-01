.class synthetic Lcom/sun/javafx/tk/quantum/CursorUtils$1;
.super Ljava/lang/Object;
.source "CursorUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/quantum/CursorUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$javafx$cursor$CursorType:[I

.field static final synthetic $SwitchMap$com$sun$prism$PixelFormat:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 149
    invoke-static {}, Lcom/sun/prism/PixelFormat;->values()[Lcom/sun/prism/PixelFormat;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$prism$PixelFormat:[I

    :try_start_0
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$prism$PixelFormat:[I

    sget-object v2, Lcom/sun/prism/PixelFormat;->INT_ARGB_PRE:Lcom/sun/prism/PixelFormat;

    invoke-virtual {v2}, Lcom/sun/prism/PixelFormat;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$prism$PixelFormat:[I

    sget-object v2, Lcom/sun/prism/PixelFormat;->BYTE_RGB:Lcom/sun/prism/PixelFormat;

    invoke-virtual {v2}, Lcom/sun/prism/PixelFormat;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$prism$PixelFormat:[I

    sget-object v2, Lcom/sun/prism/PixelFormat;->BYTE_BGRA_PRE:Lcom/sun/prism/PixelFormat;

    invoke-virtual {v2}, Lcom/sun/prism/PixelFormat;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$prism$PixelFormat:[I

    sget-object v2, Lcom/sun/prism/PixelFormat;->BYTE_GRAY:Lcom/sun/prism/PixelFormat;

    invoke-virtual {v2}, Lcom/sun/prism/PixelFormat;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 68
    :goto_3
    invoke-static {}, Lcom/sun/javafx/cursor/CursorType;->values()[Lcom/sun/javafx/cursor/CursorType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$javafx$cursor$CursorType:[I

    :try_start_4
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$javafx$cursor$CursorType:[I

    sget-object v2, Lcom/sun/javafx/cursor/CursorType;->CROSSHAIR:Lcom/sun/javafx/cursor/CursorType;

    invoke-virtual {v2}, Lcom/sun/javafx/cursor/CursorType;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$javafx$cursor$CursorType:[I

    sget-object v2, Lcom/sun/javafx/cursor/CursorType;->TEXT:Lcom/sun/javafx/cursor/CursorType;

    invoke-virtual {v2}, Lcom/sun/javafx/cursor/CursorType;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$javafx$cursor$CursorType:[I

    sget-object v2, Lcom/sun/javafx/cursor/CursorType;->WAIT:Lcom/sun/javafx/cursor/CursorType;

    invoke-virtual {v2}, Lcom/sun/javafx/cursor/CursorType;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$javafx$cursor$CursorType:[I

    sget-object v2, Lcom/sun/javafx/cursor/CursorType;->DEFAULT:Lcom/sun/javafx/cursor/CursorType;

    invoke-virtual {v2}, Lcom/sun/javafx/cursor/CursorType;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    :try_start_8
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$javafx$cursor$CursorType:[I

    sget-object v2, Lcom/sun/javafx/cursor/CursorType;->OPEN_HAND:Lcom/sun/javafx/cursor/CursorType;

    invoke-virtual {v2}, Lcom/sun/javafx/cursor/CursorType;->ordinal()I

    move-result v2

    const/4 v3, 0x5

    aput v3, v1, v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :goto_8
    :try_start_9
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$javafx$cursor$CursorType:[I

    sget-object v2, Lcom/sun/javafx/cursor/CursorType;->CLOSED_HAND:Lcom/sun/javafx/cursor/CursorType;

    invoke-virtual {v2}, Lcom/sun/javafx/cursor/CursorType;->ordinal()I

    move-result v2

    const/4 v3, 0x6

    aput v3, v1, v2
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :goto_9
    :try_start_a
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$javafx$cursor$CursorType:[I

    sget-object v2, Lcom/sun/javafx/cursor/CursorType;->HAND:Lcom/sun/javafx/cursor/CursorType;

    invoke-virtual {v2}, Lcom/sun/javafx/cursor/CursorType;->ordinal()I

    move-result v2

    const/4 v3, 0x7

    aput v3, v1, v2
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :goto_a
    :try_start_b
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$javafx$cursor$CursorType:[I

    sget-object v2, Lcom/sun/javafx/cursor/CursorType;->H_RESIZE:Lcom/sun/javafx/cursor/CursorType;

    invoke-virtual {v2}, Lcom/sun/javafx/cursor/CursorType;->ordinal()I

    move-result v2

    const/16 v3, 0x8

    aput v3, v1, v2
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :goto_b
    :try_start_c
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$javafx$cursor$CursorType:[I

    sget-object v2, Lcom/sun/javafx/cursor/CursorType;->V_RESIZE:Lcom/sun/javafx/cursor/CursorType;

    invoke-virtual {v2}, Lcom/sun/javafx/cursor/CursorType;->ordinal()I

    move-result v2

    const/16 v3, 0x9

    aput v3, v1, v2
    :try_end_c
    .catch Ljava/lang/NoSuchFieldError; {:try_start_c .. :try_end_c} :catch_c

    :goto_c
    :try_start_d
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$javafx$cursor$CursorType:[I

    sget-object v2, Lcom/sun/javafx/cursor/CursorType;->MOVE:Lcom/sun/javafx/cursor/CursorType;

    invoke-virtual {v2}, Lcom/sun/javafx/cursor/CursorType;->ordinal()I

    move-result v2

    const/16 v3, 0xa

    aput v3, v1, v2
    :try_end_d
    .catch Ljava/lang/NoSuchFieldError; {:try_start_d .. :try_end_d} :catch_d

    :goto_d
    :try_start_e
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$javafx$cursor$CursorType:[I

    sget-object v2, Lcom/sun/javafx/cursor/CursorType;->DISAPPEAR:Lcom/sun/javafx/cursor/CursorType;

    invoke-virtual {v2}, Lcom/sun/javafx/cursor/CursorType;->ordinal()I

    move-result v2

    const/16 v3, 0xb

    aput v3, v1, v2
    :try_end_e
    .catch Ljava/lang/NoSuchFieldError; {:try_start_e .. :try_end_e} :catch_e

    :goto_e
    :try_start_f
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$javafx$cursor$CursorType:[I

    sget-object v2, Lcom/sun/javafx/cursor/CursorType;->SW_RESIZE:Lcom/sun/javafx/cursor/CursorType;

    invoke-virtual {v2}, Lcom/sun/javafx/cursor/CursorType;->ordinal()I

    move-result v2

    const/16 v3, 0xc

    aput v3, v1, v2
    :try_end_f
    .catch Ljava/lang/NoSuchFieldError; {:try_start_f .. :try_end_f} :catch_f

    :goto_f
    :try_start_10
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$javafx$cursor$CursorType:[I

    sget-object v2, Lcom/sun/javafx/cursor/CursorType;->SE_RESIZE:Lcom/sun/javafx/cursor/CursorType;

    invoke-virtual {v2}, Lcom/sun/javafx/cursor/CursorType;->ordinal()I

    move-result v2

    const/16 v3, 0xd

    aput v3, v1, v2
    :try_end_10
    .catch Ljava/lang/NoSuchFieldError; {:try_start_10 .. :try_end_10} :catch_10

    :goto_10
    :try_start_11
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$javafx$cursor$CursorType:[I

    sget-object v2, Lcom/sun/javafx/cursor/CursorType;->NW_RESIZE:Lcom/sun/javafx/cursor/CursorType;

    invoke-virtual {v2}, Lcom/sun/javafx/cursor/CursorType;->ordinal()I

    move-result v2

    const/16 v3, 0xe

    aput v3, v1, v2
    :try_end_11
    .catch Ljava/lang/NoSuchFieldError; {:try_start_11 .. :try_end_11} :catch_11

    :goto_11
    :try_start_12
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$javafx$cursor$CursorType:[I

    sget-object v2, Lcom/sun/javafx/cursor/CursorType;->NE_RESIZE:Lcom/sun/javafx/cursor/CursorType;

    invoke-virtual {v2}, Lcom/sun/javafx/cursor/CursorType;->ordinal()I

    move-result v2

    const/16 v3, 0xf

    aput v3, v1, v2
    :try_end_12
    .catch Ljava/lang/NoSuchFieldError; {:try_start_12 .. :try_end_12} :catch_12

    :goto_12
    :try_start_13
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$javafx$cursor$CursorType:[I

    sget-object v2, Lcom/sun/javafx/cursor/CursorType;->N_RESIZE:Lcom/sun/javafx/cursor/CursorType;

    invoke-virtual {v2}, Lcom/sun/javafx/cursor/CursorType;->ordinal()I

    move-result v2

    const/16 v3, 0x10

    aput v3, v1, v2
    :try_end_13
    .catch Ljava/lang/NoSuchFieldError; {:try_start_13 .. :try_end_13} :catch_13

    :goto_13
    :try_start_14
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$javafx$cursor$CursorType:[I

    sget-object v2, Lcom/sun/javafx/cursor/CursorType;->S_RESIZE:Lcom/sun/javafx/cursor/CursorType;

    invoke-virtual {v2}, Lcom/sun/javafx/cursor/CursorType;->ordinal()I

    move-result v2

    const/16 v3, 0x11

    aput v3, v1, v2
    :try_end_14
    .catch Ljava/lang/NoSuchFieldError; {:try_start_14 .. :try_end_14} :catch_14

    :goto_14
    :try_start_15
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$javafx$cursor$CursorType:[I

    sget-object v2, Lcom/sun/javafx/cursor/CursorType;->W_RESIZE:Lcom/sun/javafx/cursor/CursorType;

    invoke-virtual {v2}, Lcom/sun/javafx/cursor/CursorType;->ordinal()I

    move-result v2

    const/16 v3, 0x12

    aput v3, v1, v2
    :try_end_15
    .catch Ljava/lang/NoSuchFieldError; {:try_start_15 .. :try_end_15} :catch_15

    :goto_15
    :try_start_16
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$javafx$cursor$CursorType:[I

    sget-object v2, Lcom/sun/javafx/cursor/CursorType;->E_RESIZE:Lcom/sun/javafx/cursor/CursorType;

    invoke-virtual {v2}, Lcom/sun/javafx/cursor/CursorType;->ordinal()I

    move-result v2

    const/16 v3, 0x13

    aput v3, v1, v2
    :try_end_16
    .catch Ljava/lang/NoSuchFieldError; {:try_start_16 .. :try_end_16} :catch_16

    :goto_16
    :try_start_17
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$javafx$cursor$CursorType:[I

    sget-object v2, Lcom/sun/javafx/cursor/CursorType;->NONE:Lcom/sun/javafx/cursor/CursorType;

    invoke-virtual {v2}, Lcom/sun/javafx/cursor/CursorType;->ordinal()I

    move-result v2

    const/16 v3, 0x14

    aput v3, v1, v2
    :try_end_17
    .catch Ljava/lang/NoSuchFieldError; {:try_start_17 .. :try_end_17} :catch_17

    :goto_17
    :try_start_18
    sget-object v1, Lcom/sun/javafx/tk/quantum/CursorUtils$1;->$SwitchMap$com$sun$javafx$cursor$CursorType:[I

    sget-object v2, Lcom/sun/javafx/cursor/CursorType;->IMAGE:Lcom/sun/javafx/cursor/CursorType;

    invoke-virtual {v2}, Lcom/sun/javafx/cursor/CursorType;->ordinal()I

    move-result v2

    const/16 v3, 0x15

    aput v3, v1, v2
    :try_end_18
    .catch Ljava/lang/NoSuchFieldError; {:try_start_18 .. :try_end_18} :catch_18

    :goto_18
    return-void

    .line 149
    :catch_0
    move-exception v1

    move-object v0, v1

    goto/16 :goto_0

    :catch_1
    move-exception v1

    move-object v0, v1

    goto/16 :goto_1

    :catch_2
    move-exception v1

    move-object v0, v1

    goto/16 :goto_2

    :catch_3
    move-exception v1

    move-object v0, v1

    goto/16 :goto_3

    .line 68
    :catch_4
    move-exception v1

    move-object v0, v1

    goto/16 :goto_4

    :catch_5
    move-exception v1

    move-object v0, v1

    goto/16 :goto_5

    :catch_6
    move-exception v1

    move-object v0, v1

    goto/16 :goto_6

    :catch_7
    move-exception v1

    move-object v0, v1

    goto/16 :goto_7

    :catch_8
    move-exception v1

    move-object v0, v1

    goto/16 :goto_8

    :catch_9
    move-exception v1

    move-object v0, v1

    goto/16 :goto_9

    :catch_a
    move-exception v1

    move-object v0, v1

    goto/16 :goto_a

    :catch_b
    move-exception v1

    move-object v0, v1

    goto/16 :goto_b

    :catch_c
    move-exception v1

    move-object v0, v1

    goto/16 :goto_c

    :catch_d
    move-exception v1

    move-object v0, v1

    goto/16 :goto_d

    :catch_e
    move-exception v1

    move-object v0, v1

    goto/16 :goto_e

    :catch_f
    move-exception v1

    move-object v0, v1

    goto/16 :goto_f

    :catch_10
    move-exception v1

    move-object v0, v1

    goto/16 :goto_10

    :catch_11
    move-exception v1

    move-object v0, v1

    goto/16 :goto_11

    :catch_12
    move-exception v1

    move-object v0, v1

    goto/16 :goto_12

    :catch_13
    move-exception v1

    move-object v0, v1

    goto/16 :goto_13

    :catch_14
    move-exception v1

    move-object v0, v1

    goto/16 :goto_14

    :catch_15
    move-exception v1

    move-object v0, v1

    goto :goto_15

    :catch_16
    move-exception v1

    move-object v0, v1

    goto :goto_16

    :catch_17
    move-exception v1

    move-object v0, v1

    goto :goto_17

    :catch_18
    move-exception v1

    move-object v0, v1

    goto :goto_18
.end method
