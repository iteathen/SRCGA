.class Lcom/sun/javafx/css/converters/PaintConverter$Holder;
.super Ljava/lang/Object;
.source "PaintConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/converters/PaintConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final IMAGE_PATTERN_INSTANCE:Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;

.field static final INSTANCE:Lcom/sun/javafx/css/converters/PaintConverter;

.field static final LINEAR_GRADIENT_INSTANCE:Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;

.field static final RADIAL_GRADIENT_INSTANCE:Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;

.field static final REPEATING_IMAGE_PATTERN_INSTANCE:Lcom/sun/javafx/css/converters/PaintConverter$RepeatingImagePatternConverter;

.field static final SEQUENCE_INSTANCE:Lcom/sun/javafx/css/converters/PaintConverter$SequenceConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 48
    new-instance v0, Lcom/sun/javafx/css/converters/PaintConverter;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/css/converters/PaintConverter;-><init>(Lcom/sun/javafx/css/converters/PaintConverter$1;)V

    sput-object v0, Lcom/sun/javafx/css/converters/PaintConverter$Holder;->INSTANCE:Lcom/sun/javafx/css/converters/PaintConverter;

    .line 49
    new-instance v0, Lcom/sun/javafx/css/converters/PaintConverter$SequenceConverter;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/css/converters/PaintConverter$SequenceConverter;-><init>(Lcom/sun/javafx/css/converters/PaintConverter$1;)V

    sput-object v0, Lcom/sun/javafx/css/converters/PaintConverter$Holder;->SEQUENCE_INSTANCE:Lcom/sun/javafx/css/converters/PaintConverter$SequenceConverter;

    .line 50
    new-instance v0, Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;-><init>(Lcom/sun/javafx/css/converters/PaintConverter$1;)V

    sput-object v0, Lcom/sun/javafx/css/converters/PaintConverter$Holder;->LINEAR_GRADIENT_INSTANCE:Lcom/sun/javafx/css/converters/PaintConverter$LinearGradientConverter;

    .line 51
    new-instance v0, Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;-><init>(Lcom/sun/javafx/css/converters/PaintConverter$1;)V

    sput-object v0, Lcom/sun/javafx/css/converters/PaintConverter$Holder;->IMAGE_PATTERN_INSTANCE:Lcom/sun/javafx/css/converters/PaintConverter$ImagePatternConverter;

    .line 52
    new-instance v0, Lcom/sun/javafx/css/converters/PaintConverter$RepeatingImagePatternConverter;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/css/converters/PaintConverter$RepeatingImagePatternConverter;-><init>(Lcom/sun/javafx/css/converters/PaintConverter$1;)V

    sput-object v0, Lcom/sun/javafx/css/converters/PaintConverter$Holder;->REPEATING_IMAGE_PATTERN_INSTANCE:Lcom/sun/javafx/css/converters/PaintConverter$RepeatingImagePatternConverter;

    .line 53
    new-instance v0, Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;-><init>(Lcom/sun/javafx/css/converters/PaintConverter$1;)V

    sput-object v0, Lcom/sun/javafx/css/converters/PaintConverter$Holder;->RADIAL_GRADIENT_INSTANCE:Lcom/sun/javafx/css/converters/PaintConverter$RadialGradientConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 47
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/PaintConverter$Holder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
