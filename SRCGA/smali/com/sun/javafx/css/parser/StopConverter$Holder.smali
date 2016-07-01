.class Lcom/sun/javafx/css/parser/StopConverter$Holder;
.super Ljava/lang/Object;
.source "StopConverter.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/parser/StopConverter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "Holder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/sun/javafx/css/parser/StopConverter;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 42
    new-instance v0, Lcom/sun/javafx/css/parser/StopConverter;

    move-object v3, v0

    move-object v0, v3

    move-object v1, v3

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/sun/javafx/css/parser/StopConverter;-><init>(Lcom/sun/javafx/css/parser/StopConverter$1;)V

    sput-object v0, Lcom/sun/javafx/css/parser/StopConverter$Holder;->INSTANCE:Lcom/sun/javafx/css/parser/StopConverter;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 41
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/StopConverter$Holder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
