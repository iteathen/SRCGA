.class Lcom/sun/javafx/css/parser/CSSLexer$InstanceHolder;
.super Ljava/lang/Object;
.source "CSSLexer.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/parser/CSSLexer;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "InstanceHolder"
.end annotation


# static fields
.field static final INSTANCE:Lcom/sun/javafx/css/parser/CSSLexer;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 38
    new-instance v0, Lcom/sun/javafx/css/parser/CSSLexer;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/css/parser/CSSLexer;-><init>()V

    sput-object v0, Lcom/sun/javafx/css/parser/CSSLexer$InstanceHolder;->INSTANCE:Lcom/sun/javafx/css/parser/CSSLexer;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 37
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/parser/CSSLexer$InstanceHolder;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method
