.class synthetic Lcom/sun/javafx/sg/prism/NGRegion$1;
.super Ljava/lang/Object;
.source "NGRegion.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/sg/prism/NGRegion;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$javafx$scene$layout$BorderRepeat:[I

.field static final synthetic $SwitchMap$javafx$scene$shape$StrokeType:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 1827
    invoke-static {}, Ljavafx/scene/layout/BorderRepeat;->values()[Ljavafx/scene/layout/BorderRepeat;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/sg/prism/NGRegion$1;->$SwitchMap$javafx$scene$layout$BorderRepeat:[I

    :try_start_0
    sget-object v1, Lcom/sun/javafx/sg/prism/NGRegion$1;->$SwitchMap$javafx$scene$layout$BorderRepeat:[I

    sget-object v2, Ljavafx/scene/layout/BorderRepeat;->REPEAT:Ljavafx/scene/layout/BorderRepeat;

    invoke-virtual {v2}, Ljavafx/scene/layout/BorderRepeat;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sun/javafx/sg/prism/NGRegion$1;->$SwitchMap$javafx$scene$layout$BorderRepeat:[I

    sget-object v2, Ljavafx/scene/layout/BorderRepeat;->STRETCH:Ljavafx/scene/layout/BorderRepeat;

    invoke-virtual {v2}, Ljavafx/scene/layout/BorderRepeat;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_1
    .catch Ljava/lang/NoSuchFieldError; {:try_start_1 .. :try_end_1} :catch_1

    :goto_1
    :try_start_2
    sget-object v1, Lcom/sun/javafx/sg/prism/NGRegion$1;->$SwitchMap$javafx$scene$layout$BorderRepeat:[I

    sget-object v2, Ljavafx/scene/layout/BorderRepeat;->ROUND:Ljavafx/scene/layout/BorderRepeat;

    invoke-virtual {v2}, Ljavafx/scene/layout/BorderRepeat;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_2
    .catch Ljava/lang/NoSuchFieldError; {:try_start_2 .. :try_end_2} :catch_2

    :goto_2
    :try_start_3
    sget-object v1, Lcom/sun/javafx/sg/prism/NGRegion$1;->$SwitchMap$javafx$scene$layout$BorderRepeat:[I

    sget-object v2, Ljavafx/scene/layout/BorderRepeat;->SPACE:Ljavafx/scene/layout/BorderRepeat;

    invoke-virtual {v2}, Ljavafx/scene/layout/BorderRepeat;->ordinal()I

    move-result v2

    const/4 v3, 0x4

    aput v3, v1, v2
    :try_end_3
    .catch Ljava/lang/NoSuchFieldError; {:try_start_3 .. :try_end_3} :catch_3

    .line 1512
    :goto_3
    invoke-static {}, Ljavafx/scene/shape/StrokeType;->values()[Ljavafx/scene/shape/StrokeType;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/sg/prism/NGRegion$1;->$SwitchMap$javafx$scene$shape$StrokeType:[I

    :try_start_4
    sget-object v1, Lcom/sun/javafx/sg/prism/NGRegion$1;->$SwitchMap$javafx$scene$shape$StrokeType:[I

    sget-object v2, Ljavafx/scene/shape/StrokeType;->INSIDE:Ljavafx/scene/shape/StrokeType;

    invoke-virtual {v2}, Ljavafx/scene/shape/StrokeType;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_4
    .catch Ljava/lang/NoSuchFieldError; {:try_start_4 .. :try_end_4} :catch_4

    :goto_4
    :try_start_5
    sget-object v1, Lcom/sun/javafx/sg/prism/NGRegion$1;->$SwitchMap$javafx$scene$shape$StrokeType:[I

    sget-object v2, Ljavafx/scene/shape/StrokeType;->OUTSIDE:Ljavafx/scene/shape/StrokeType;

    invoke-virtual {v2}, Ljavafx/scene/shape/StrokeType;->ordinal()I

    move-result v2

    const/4 v3, 0x2

    aput v3, v1, v2
    :try_end_5
    .catch Ljava/lang/NoSuchFieldError; {:try_start_5 .. :try_end_5} :catch_5

    :goto_5
    :try_start_6
    sget-object v1, Lcom/sun/javafx/sg/prism/NGRegion$1;->$SwitchMap$javafx$scene$shape$StrokeType:[I

    sget-object v2, Ljavafx/scene/shape/StrokeType;->CENTERED:Ljavafx/scene/shape/StrokeType;

    invoke-virtual {v2}, Ljavafx/scene/shape/StrokeType;->ordinal()I

    move-result v2

    const/4 v3, 0x3

    aput v3, v1, v2
    :try_end_6
    .catch Ljava/lang/NoSuchFieldError; {:try_start_6 .. :try_end_6} :catch_6

    :goto_6
    return-void

    .line 1827
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

    .line 1512
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
