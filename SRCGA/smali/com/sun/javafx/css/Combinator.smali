.class public enum Lcom/sun/javafx/css/Combinator;
.super Ljava/lang/Enum;
.source "Combinator.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/sun/javafx/css/Combinator;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/sun/javafx/css/Combinator;

.field public static final enum CHILD:Lcom/sun/javafx/css/Combinator;

.field public static final enum DESCENDANT:Lcom/sun/javafx/css/Combinator;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 30
    new-instance v0, Lcom/sun/javafx/css/Combinator$1;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "CHILD"

    const/4 v3, 0x0

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/Combinator$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/css/Combinator;->CHILD:Lcom/sun/javafx/css/Combinator;

    .line 33
    new-instance v0, Lcom/sun/javafx/css/Combinator$2;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const-string v2, "DESCENDANT"

    const/4 v3, 0x1

    invoke-direct {v1, v2, v3}, Lcom/sun/javafx/css/Combinator$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/sun/javafx/css/Combinator;->DESCENDANT:Lcom/sun/javafx/css/Combinator;

    .line 28
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/sun/javafx/css/Combinator;

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x0

    sget-object v3, Lcom/sun/javafx/css/Combinator;->CHILD:Lcom/sun/javafx/css/Combinator;

    aput-object v3, v1, v2

    move-object v4, v0

    move-object v0, v4

    move-object v1, v4

    const/4 v2, 0x1

    sget-object v3, Lcom/sun/javafx/css/Combinator;->DESCENDANT:Lcom/sun/javafx/css/Combinator;

    aput-object v3, v1, v2

    sput-object v0, Lcom/sun/javafx/css/Combinator;->$VALUES:[Lcom/sun/javafx/css/Combinator;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Combinator;
    move-object v1, p1

    move v2, p2

    move-object v3, v0

    move-object v4, v1

    move v5, v2

    invoke-direct {v3, v4, v5}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/sun/javafx/css/Combinator$1;)V
    .locals 7

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/Combinator;
    move-object v1, p1

    .local v1, "x0":Ljava/lang/String;
    move v2, p2

    .local v2, "x1":I
    move-object v3, p3

    .local v3, "x2":Lcom/sun/javafx/css/Combinator$1;
    move-object v4, v0

    move-object v5, v1

    move v6, v2

    invoke-direct {v4, v5, v6}, Lcom/sun/javafx/css/Combinator;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/sun/javafx/css/Combinator;
    .locals 3

    .prologue
    .line 28
    move-object v0, p0

    .local v0, "name":Ljava/lang/String;
    const-class v1, Lcom/sun/javafx/css/Combinator;

    move-object v2, v0

    invoke-static {v1, v2}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v1

    check-cast v1, Lcom/sun/javafx/css/Combinator;

    move-object v0, v1

    .end local v0    # "name":Ljava/lang/String;
    return-object v0
.end method

.method public static values()[Lcom/sun/javafx/css/Combinator;
    .locals 1

    .prologue
    .line 28
    sget-object v0, Lcom/sun/javafx/css/Combinator;->$VALUES:[Lcom/sun/javafx/css/Combinator;

    invoke-virtual {v0}, [Lcom/sun/javafx/css/Combinator;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/sun/javafx/css/Combinator;

    return-object v0
.end method
