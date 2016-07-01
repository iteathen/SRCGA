.class final synthetic Lcom/sun/javafx/css/parser/CSSLexer$$Lambda$34;
.super Ljava/lang/Object;

# interfaces
.implements Lcom/sun/javafx/css/parser/Recognizer;


# static fields
.field private static final instance:Lcom/sun/javafx/css/parser/CSSLexer$$Lambda$34;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    new-instance v0, Lcom/sun/javafx/css/parser/CSSLexer$$Lambda$34;

    move-object v2, v0

    move-object v0, v2

    move-object v1, v2

    invoke-direct {v1}, Lcom/sun/javafx/css/parser/CSSLexer$$Lambda$34;-><init>()V

    sput-object v0, Lcom/sun/javafx/css/parser/CSSLexer$$Lambda$34;->instance:Lcom/sun/javafx/css/parser/CSSLexer$$Lambda$34;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    move-object v0, p0

    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static lambdaFactory$()Lcom/sun/javafx/css/parser/Recognizer;
    .locals 1

    sget-object v0, Lcom/sun/javafx/css/parser/CSSLexer$$Lambda$34;->instance:Lcom/sun/javafx/css/parser/CSSLexer$$Lambda$34;

    return-object v0
.end method


# virtual methods
.method public recognize(I)Z
    .locals 3
    .annotation runtime Ljava/lang/invoke/LambdaForm$Hidden;
    .end annotation

    move-object v0, p0

    move v1, p1

    move v2, v1

    invoke-static {v2}, Lcom/sun/javafx/css/parser/CSSLexer;->access$lambda$33(I)Z

    move-result v2

    move v0, v2

    return v0
.end method
