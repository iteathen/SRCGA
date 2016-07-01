.class Lcom/sun/javafx/scene/layout/region/Margins$Holder;
.super Ljava/lang/Object;
.source "Margins.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/scene/layout/region/Margins;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static CONVERTER_INSTANCE:Lcom/sun/javafx/scene/layout/region/Margins$Converter;

.field static SEQUENCE_CONVERTER_INSTANCE:Lcom/sun/javafx/scene/layout/region/Margins$SequenceConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 46
    new-instance v0, Lcom/sun/javafx/scene/layout/region/Margins$Converter;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/scene/layout/region/Margins$Converter;-><init>(Lcom/sun/javafx/scene/layout/region/Margins$1;)V

    sput-object v0, Lcom/sun/javafx/scene/layout/region/Margins$Holder;->CONVERTER_INSTANCE:Lcom/sun/javafx/scene/layout/region/Margins$Converter;

    .line 47
    new-instance v0, Lcom/sun/javafx/scene/layout/region/Margins$SequenceConverter;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/scene/layout/region/Margins$SequenceConverter;-><init>(Lcom/sun/javafx/scene/layout/region/Margins$1;)V

    sput-object v0, Lcom/sun/javafx/scene/layout/region/Margins$Holder;->SEQUENCE_CONVERTER_INSTANCE:Lcom/sun/javafx/scene/layout/region/Margins$SequenceConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/scene/layout/region/Margins$Holder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
