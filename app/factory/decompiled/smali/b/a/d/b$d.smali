.class final Lb/a/d/b$d;
.super Ljava/lang/Object;
.source ""

# interfaces
.implements Lc/v;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lb/a/d/b;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "d"
.end annotation


# instance fields
.field private final a:Lc/j;

.field private b:Z

.field private c:J

.field final synthetic d:Lb/a/d/b;


# direct methods
.method constructor <init>(Lb/a/d/b;J)V
    .locals 1

    iput-object p1, p0, Lb/a/d/b$d;->d:Lb/a/d/b;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance p1, Lc/j;

    iget-object v0, p0, Lb/a/d/b$d;->d:Lb/a/d/b;

    iget-object v0, v0, Lb/a/d/b;->d:Lc/f;

    invoke-interface {v0}, Lc/v;->b()Lc/y;

    move-result-object v0

    invoke-direct {p1, v0}, Lc/j;-><init>(Lc/y;)V

    iput-object p1, p0, Lb/a/d/b$d;->a:Lc/j;

    iput-wide p2, p0, Lb/a/d/b$d;->c:J

    return-void
.end method


# virtual methods
.method public b()Lc/y;
    .locals 1

    iget-object v0, p0, Lb/a/d/b$d;->a:Lc/j;

    return-object v0
.end method

.method public c(Lc/e;J)V
    .locals 7

    iget-boolean v0, p0, Lb/a/d/b$d;->b:Z

    if-nez v0, :cond_1

    invoke-virtual {p1}, Lc/e;->o()J

    move-result-wide v1

    const-wide/16 v3, 0x0

    move-wide v5, p2

    invoke-static/range {v1 .. v6}, Lb/a/d;->a(JJJ)V

    iget-wide v0, p0, Lb/a/d/b$d;->c:J

    cmp-long v2, p2, v0

    if-gtz v2, :cond_0

    iget-object v0, p0, Lb/a/d/b$d;->d:Lb/a/d/b;

    iget-object v0, v0, Lb/a/d/b;->d:Lc/f;

    invoke-interface {v0, p1, p2, p3}, Lc/v;->c(Lc/e;J)V

    iget-wide v0, p0, Lb/a/d/b$d;->c:J

    sub-long/2addr v0, p2

    iput-wide v0, p0, Lb/a/d/b$d;->c:J

    return-void

    :cond_0
    new-instance p1, Ljava/net/ProtocolException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "expected "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Lb/a/d/b$d;->c:J

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    const-string v1, " bytes but received "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0, p2, p3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p2

    invoke-direct {p1, p2}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    new-instance p1, Ljava/lang/IllegalStateException;

    const-string p2, "closed"

    invoke-direct {p1, p2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method public close()V
    .locals 5

    iget-boolean v0, p0, Lb/a/d/b$d;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lb/a/d/b$d;->b:Z

    iget-wide v0, p0, Lb/a/d/b$d;->c:J

    const-wide/16 v2, 0x0

    cmp-long v4, v0, v2

    if-gtz v4, :cond_1

    iget-object v0, p0, Lb/a/d/b$d;->d:Lb/a/d/b;

    iget-object v1, p0, Lb/a/d/b$d;->a:Lc/j;

    invoke-virtual {v0, v1}, Lb/a/d/b;->a(Lc/j;)V

    iget-object v0, p0, Lb/a/d/b$d;->d:Lb/a/d/b;

    const/4 v1, 0x3

    iput v1, v0, Lb/a/d/b;->e:I

    return-void

    :cond_1
    new-instance v0, Ljava/net/ProtocolException;

    const-string v1, "unexpected end of stream"

    invoke-direct {v0, v1}, Ljava/net/ProtocolException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public flush()V
    .locals 1

    iget-boolean v0, p0, Lb/a/d/b$d;->b:Z

    if-eqz v0, :cond_0

    return-void

    :cond_0
    iget-object v0, p0, Lb/a/d/b$d;->d:Lb/a/d/b;

    iget-object v0, v0, Lb/a/d/b;->d:Lc/f;

    invoke-interface {v0}, Lc/f;->flush()V

    return-void
.end method
