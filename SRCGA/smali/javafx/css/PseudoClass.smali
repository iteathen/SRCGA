.class public abstract Ljavafx/css/PseudoClass;
.super Ljava/lang/Object;
.source "PseudoClass.java"


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    .line 77
    move-object v0, p0

    .local v0, "this":Ljavafx/css/PseudoClass;
    move-object v1, v0

    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;
    .locals 2

    .prologue
    .line 86
    move-object v0, p0

    .local v0, "pseudoClass":Ljava/lang/String;
    move-object v1, v0

    invoke-static {v1}, Lcom/sun/javafx/css/PseudoClassState;->getPseudoClass(Ljava/lang/String;)Ljavafx/css/PseudoClass;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "pseudoClass":Ljava/lang/String;
    return-object v0
.end method


# virtual methods
.method public abstract getPseudoClassName()Ljava/lang/String;
.end method
