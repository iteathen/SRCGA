.class synthetic Lcom/sun/javafx/application/PlatformImpl$2;
.super Ljava/lang/Object;
.source "PlatformImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/application/PlatformImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$javafx$application$ConditionalFeature:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 721
    invoke-static {}, Ljavafx/application/ConditionalFeature;->values()[Ljavafx/application/ConditionalFeature;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    :try_start_0
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v2, Ljavafx/application/ConditionalFeature;->GRAPHICS:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v2}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v2, Ljavafx/application/ConditionalFeature;->CONTROLS:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v2}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v2, Ljavafx/application/ConditionalFeature;->MEDIA:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v2}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v2, Ljavafx/application/ConditionalFeature;->WEB:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v2}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    :goto_3
    :try_start_4
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v2, Ljavafx/application/ConditionalFeature;->SWT:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v2}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v2

    const/4 v3, 0x5

    aput v3, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v2, Ljavafx/application/ConditionalFeature;->SWING:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v2}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v2

    const/4 v3, 0x6

    aput v3, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v2, Ljavafx/application/ConditionalFeature;->FXML:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v2}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v2

    const/4 v3, 0x7

    aput v3, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    :try_start_7
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v2, Ljavafx/application/ConditionalFeature;->TWO_LEVEL_FOCUS:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v2}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v2

    const/16 v3, 0x8

    aput v3, v1, v2
    :try_end_7
    .catch Ljava/lang/NoSuchFieldError; {:try_start_7 .. :try_end_7} :catch_7

    :goto_7
    :try_start_8
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v2, Ljavafx/application/ConditionalFeature;->VIRTUAL_KEYBOARD:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v2}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v2

    const/16 v3, 0x9

    aput v3, v1, v2
    :try_end_8
    .catch Ljava/lang/NoSuchFieldError; {:try_start_8 .. :try_end_8} :catch_8

    :goto_8
    :try_start_9
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v2, Ljavafx/application/ConditionalFeature;->INPUT_TOUCH:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v2}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v2

    const/16 v3, 0xa

    aput v3, v1, v2
    :try_end_9
    .catch Ljava/lang/NoSuchFieldError; {:try_start_9 .. :try_end_9} :catch_9

    :goto_9
    :try_start_a
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v2, Ljavafx/application/ConditionalFeature;->INPUT_MULTITOUCH:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v2}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v2

    const/16 v3, 0xb

    aput v3, v1, v2
    :try_end_a
    .catch Ljava/lang/NoSuchFieldError; {:try_start_a .. :try_end_a} :catch_a

    :goto_a
    :try_start_b
    sget-object v1, Lcom/sun/javafx/application/PlatformImpl$2;->$SwitchMap$javafx$application$ConditionalFeature:[I

    sget-object v2, Ljavafx/application/ConditionalFeature;->INPUT_POINTER:Ljavafx/application/ConditionalFeature;

    invoke-virtual {v2}, Ljavafx/application/ConditionalFeature;->ordinal()I

    move-result v2

    const/16 v3, 0xc

    aput v3, v1, v2
    :try_end_b
    .catch Ljava/lang/NoSuchFieldError; {:try_start_b .. :try_end_b} :catch_b

    :goto_b
    return-void

    :catch_0
    move-exception v1

    move-object v0, v1

    goto/16 :goto_0

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

    :catch_7
    move-exception v1

    move-object v0, v1

    goto :goto_7

    :catch_8
    move-exception v1

    move-object v0, v1

    goto :goto_8

    :catch_9
    move-exception v1

    move-object v0, v1

    goto :goto_9

    :catch_a
    move-exception v1

    move-object v0, v1

    goto :goto_a

    :catch_b
    move-exception v1

    move-object v0, v1

    goto :goto_b
.end method
