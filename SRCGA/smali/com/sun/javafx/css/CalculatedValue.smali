.class public final Lcom/sun/javafx/css/CalculatedValue;
.super Ljava/lang/Object;
.source "CalculatedValue.java"


# static fields
.field public static final SKIP:Lcom/sun/javafx/css/CalculatedValue;


# instance fields
.field private final origin:Ljavafx/css/StyleOrigin;

.field private final relative:Z

.field private final value:Ljava/lang/Object;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    .line 31
    new-instance v0, Lcom/sun/javafx/css/CalculatedValue;

    move-object v5, v0

    move-object v0, v5

    move-object v1, v5

    const/4 v2, 0x0

    new-array v2, v2, [I

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-direct {v1, v2, v3, v4}, Lcom/sun/javafx/css/CalculatedValue;-><init>(Ljava/lang/Object;Ljavafx/css/StyleOrigin;Z)V

    sput-object v0, Lcom/sun/javafx/css/CalculatedValue;->SKIP:Lcom/sun/javafx/css/CalculatedValue;

    return-void
.end method

.method public constructor <init>(Ljava/lang/Object;Ljavafx/css/StyleOrigin;Z)V
    .locals 6

    .prologue
    .line 34
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CalculatedValue;
    move-object v1, p1

    .local v1, "value":Ljava/lang/Object;
    move-object v2, p2

    .local v2, "origin":Ljavafx/css/StyleOrigin;
    move v3, p3

    .local v3, "relative":Z
    move-object v4, v0

    invoke-direct {v4}, Ljava/lang/Object;-><init>()V

    .line 36
    move-object v4, v0

    move-object v5, v1

    iput-object v5, v4, Lcom/sun/javafx/css/CalculatedValue;->value:Ljava/lang/Object;

    .line 37
    move-object v4, v0

    move-object v5, v2

    iput-object v5, v4, Lcom/sun/javafx/css/CalculatedValue;->origin:Ljavafx/css/StyleOrigin;

    .line 38
    move-object v4, v0

    move v5, v3

    iput-boolean v5, v4, Lcom/sun/javafx/css/CalculatedValue;->relative:Z

    .line 39
    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 5

    .prologue
    .line 66
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CalculatedValue;
    move-object v1, p1

    .local v1, "obj":Ljava/lang/Object;
    move-object v3, v1

    if-nez v3, :cond_0

    .line 67
    const/4 v3, 0x0

    move v0, v3

    .line 88
    .end local v0    # "this":Lcom/sun/javafx/css/CalculatedValue;
    :goto_0
    return v0

    .line 70
    .restart local v0    # "this":Lcom/sun/javafx/css/CalculatedValue;
    :cond_0
    move-object v3, v0

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    move-object v4, v1

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_1

    .line 71
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 74
    :cond_1
    move-object v3, v1

    check-cast v3, Lcom/sun/javafx/css/CalculatedValue;

    move-object v2, v3

    .line 76
    .local v2, "other":Lcom/sun/javafx/css/CalculatedValue;
    move-object v3, v0

    iget-boolean v3, v3, Lcom/sun/javafx/css/CalculatedValue;->relative:Z

    move-object v4, v2

    iget-boolean v4, v4, Lcom/sun/javafx/css/CalculatedValue;->relative:Z

    if-eq v3, v4, :cond_2

    .line 77
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 80
    :cond_2
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/CalculatedValue;->origin:Ljavafx/css/StyleOrigin;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/css/CalculatedValue;->origin:Ljavafx/css/StyleOrigin;

    if-eq v3, v4, :cond_3

    .line 81
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 84
    :cond_3
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/CalculatedValue;->value:Ljava/lang/Object;

    if-nez v3, :cond_5

    move-object v3, v2

    iget-object v3, v3, Lcom/sun/javafx/css/CalculatedValue;->value:Ljava/lang/Object;

    if-eqz v3, :cond_6

    .line 85
    :cond_4
    const/4 v3, 0x0

    move v0, v3

    goto :goto_0

    .line 84
    :cond_5
    move-object v3, v0

    iget-object v3, v3, Lcom/sun/javafx/css/CalculatedValue;->value:Ljava/lang/Object;

    move-object v4, v2

    iget-object v4, v4, Lcom/sun/javafx/css/CalculatedValue;->value:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 88
    :cond_6
    const/4 v3, 0x1

    move v0, v3

    goto :goto_0
.end method

.method public getOrigin()Ljavafx/css/StyleOrigin;
    .locals 2

    .prologue
    .line 46
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CalculatedValue;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/CalculatedValue;->origin:Ljavafx/css/StyleOrigin;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/CalculatedValue;
    return-object v0
.end method

.method public getValue()Ljava/lang/Object;
    .locals 2

    .prologue
    .line 42
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CalculatedValue;
    move-object v1, v0

    iget-object v1, v1, Lcom/sun/javafx/css/CalculatedValue;->value:Ljava/lang/Object;

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/CalculatedValue;
    return-object v0
.end method

.method public isRelative()Z
    .locals 2

    .prologue
    .line 50
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CalculatedValue;
    move-object v1, v0

    iget-boolean v1, v1, Lcom/sun/javafx/css/CalculatedValue;->relative:Z

    move v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/CalculatedValue;
    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 4

    .prologue
    .line 54
    move-object v0, p0

    .local v0, "this":Lcom/sun/javafx/css/CalculatedValue;
    new-instance v1, Ljava/lang/StringBuilder;

    move-object v3, v1

    move-object v1, v3

    move-object v2, v3

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v2, 0x7b

    .line 56
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/CalculatedValue;->value:Ljava/lang/Object;

    .line 57
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    .line 58
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-object v2, v2, Lcom/sun/javafx/css/CalculatedValue;->origin:Ljavafx/css/StyleOrigin;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", "

    .line 59
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object v2, v0

    iget-boolean v2, v2, Lcom/sun/javafx/css/CalculatedValue;->relative:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const/16 v2, 0x7d

    .line 60
    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    .line 61
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, v1

    .end local v0    # "this":Lcom/sun/javafx/css/CalculatedValue;
    return-object v0
.end method
