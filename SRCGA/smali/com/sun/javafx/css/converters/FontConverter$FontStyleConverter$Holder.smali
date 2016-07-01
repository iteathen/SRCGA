.class Lcom/sun/javafx/css/converters/FontConverter$FontStyleConverter$Holder;
.super Ljava/lang/Object;
.source "FontConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/converters/FontConverter$FontStyleConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/sun/javafx/css/converters/FontConverter$FontStyleConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 115
    new-instance v0, Lcom/sun/javafx/css/converters/FontConverter$FontStyleConverter;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/css/converters/FontConverter$FontStyleConverter;-><init>(Lcom/sun/javafx/css/converters/FontConverter$1;)V

    sput-object v0, Lcom/sun/javafx/css/converters/FontConverter$FontStyleConverter$Holder;->INSTANCE:Lcom/sun/javafx/css/converters/FontConverter$FontStyleConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 114
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/converters/FontConverter$FontStyleConverter$Holder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
