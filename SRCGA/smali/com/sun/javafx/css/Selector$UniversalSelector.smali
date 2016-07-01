.class Lcom/sun/javafx/css/Selector$UniversalSelector;
.super Ljava/lang/Object;
.source "Selector.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/sun/javafx/css/Selector;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UniversalSelector"
.end annotation


# static fields
.field private static final INSTANCE:Lcom/sun/javafx/css/Selector;


# direct methods
.method static constructor <clinit>()V
    .locals 7

    .prologue
    .line 46
    new-instance v0, Lcom/sun/javafx/css/SimpleSelector;

    move-object v6, v0

    move-object v0, v6

    move-object v1, v6

    const-string v2, "*"

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-direct {v1, v2, v3, v4, v5}, Lcom/sun/javafx/css/SimpleSelector;-><init>(Ljava/lang/String;Ljava/util/List;Ljava/util/List;Ljava/lang/String;)V

    sput-object v0, Lcom/sun/javafx/css/Selector$UniversalSelector;->INSTANCE:Lcom/sun/javafx/css/Selector;

    return-void
.end method

.method private constructor <init>()V
    .locals 2

    .prologue
    .line 45
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Selector$UniversalSelector;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000()Lcom/sun/javafx/css/Selector;
    .locals 1

    .prologue
    .line 45
    sget-object v0, Lcom/sun/javafx/css/Selector$UniversalSelector;->INSTANCE:Lcom/sun/javafx/css/Selector;

    return-object v0
.end method
