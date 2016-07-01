.class synthetic Lcom/sun/javafx/css/converters/DurationConverter$1;
.super Ljava/lang/Object;
.source "DurationConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/converters/DurationConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1008
    name = null
.end annotation


# static fields
.field static final synthetic $SwitchMap$com$sun$javafx$css$SizeUnits:[I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 58
    invoke-static {}, Lcom/sun/javafx/css/SizeUnits;->values()[Lcom/sun/javafx/css/SizeUnits;

    move-result-object v1

    array-length v1, v1

    new-array v1, v1, [I

    sput-object v1, Lcom/sun/javafx/css/converters/DurationConverter$1;->$SwitchMap$com$sun$javafx$css$SizeUnits:[I

    :try_start_0
    sget-object v1, Lcom/sun/javafx/css/converters/DurationConverter$1;->$SwitchMap$com$sun$javafx$css$SizeUnits:[I

    sget-object v2, Lcom/sun/javafx/css/SizeUnits;->S:Lcom/sun/javafx/css/SizeUnits;

    invoke-virtual {v2}, Lcom/sun/javafx/css/SizeUnits;->ordinal()I

    move-result v2

    const/4 v3, 0x1

    aput v3, v1, v2
    :try_end_0
    .catch Ljava/lang/NoSuchFieldError; {:try_start_0 .. :try_end_0} :catch_0

    :goto_0
    :try_start_1
    sget-object v1, Lcom/sun/javafx/css/converters/DurationConverter$1;->$SwitchMap$com$sun$javafx$css$SizeUnits:[I

    sget-object v2, Lcom/sun/javafx/css/SizeUnits;->MS:Lcom/sun/javafx/css/SizeUnits;

    invoke-virtual {v2}, Lcom/sun/javafx/css/SizeUnits;->ordinal()I

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
