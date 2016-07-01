.class synthetic Lcom/sun/javafx/tk/quantum/WindowStage$1;
.super Ljava/lang/Object;
.source "WindowStage.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/tk/quantum/WindowStage;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$javafx$tk$FocusCause:[I

.field static final synthetic $SwitchMap$javafx$stage$StageStyle:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 814
    invoke-static {}, Lcom/sun/javafx/tk/FocusCause;->values()[Lcom/sun/javafx/tk/FocusCause;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/tk/quantum/WindowStage$1;->$SwitchMap$com$sun$javafx$tk$FocusCause:[I

    :try_start_0
    sget-object v1, Lcom/sun/javafx/tk/quantum/WindowStage$1;->$SwitchMap$com$sun$javafx$tk$FocusCause:[I

    sget-object v2, Lcom/sun/javafx/tk/FocusCause;->TRAVERSED_FORWARD:Lcom/sun/javafx/tk/FocusCause;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/FocusCause;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sun/javafx/tk/quantum/WindowStage$1;->$SwitchMap$com$sun$javafx$tk$FocusCause:[I

    sget-object v2, Lcom/sun/javafx/tk/FocusCause;->TRAVERSED_BACKWARD:Lcom/sun/javafx/tk/FocusCause;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/FocusCause;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sun/javafx/tk/quantum/WindowStage$1;->$SwitchMap$com$sun$javafx$tk$FocusCause:[I

    sget-object v2, Lcom/sun/javafx/tk/FocusCause;->ACTIVATED:Lcom/sun/javafx/tk/FocusCause;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/FocusCause;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sun/javafx/tk/quantum/WindowStage$1;->$SwitchMap$com$sun$javafx$tk$FocusCause:[I

    sget-object v2, Lcom/sun/javafx/tk/FocusCause;->DEACTIVATED:Lcom/sun/javafx/tk/FocusCause;

    invoke-virtual {v2}, Lcom/sun/javafx/tk/FocusCause;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 172
    :goto_3
    invoke-static {}, Ljavafx/stage/StageStyle;->values()[Ljavafx/stage/StageStyle;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/tk/quantum/WindowStage$1;->$SwitchMap$javafx$stage$StageStyle:[I

    :try_start_4
    sget-object v1, Lcom/sun/javafx/tk/quantum/WindowStage$1;->$SwitchMap$javafx$stage$StageStyle:[I

    sget-object v2, Ljavafx/stage/StageStyle;->UNIFIED:Ljavafx/stage/StageStyle;

    invoke-virtual {v2}, Ljavafx/stage/StageStyle;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sun/javafx/tk/quantum/WindowStage$1;->$SwitchMap$javafx$stage$StageStyle:[I

    sget-object v2, Ljavafx/stage/StageStyle;->DECORATED:Ljavafx/stage/StageStyle;

    invoke-virtual {v2}, Ljavafx/stage/StageStyle;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sun/javafx/tk/quantum/WindowStage$1;->$SwitchMap$javafx$stage$StageStyle:[I

    sget-object v2, Ljavafx/stage/StageStyle;->UTILITY:Ljavafx/stage/StageStyle;

    invoke-virtual {v2}, Ljavafx/stage/StageStyle;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    return-void

    .line 814
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

    .line 172
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
